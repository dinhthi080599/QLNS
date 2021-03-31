<?php

namespace Controllers;

class RewardPenance extends BaseController
{
    public function index()
    {
        $data = null;
        $action = get('action');
        $add = get('add');
        if ($add == '1') {
            $data['add'] = 1;
        }
        if ($action == '') {
            $action = post('action');
        }
        switch ($action) {
            case 'duyet': {
                if ($this->duyet()) {
                    setMes('success', 'Thành công', 'Duyệt mức thưởng, phạt thành công!');
                } else {
                    setMes('error', 'Thất bại', 'Có lỗi xảy ra xin vui lòng thử lại!');
                }
                die(header("Location: ". getURL()));
            }
            case 'them': {
                $data_them['tieude'] = post('tieude');
                $data_them['kinhphi'] = post('kinhphi');
                $data_them['loai'] = post('loai');
                $data_them['noidung'] = post('noidung');
                $data_them['nguoilap'] = session('id');
                $aff = AddAPI('POST', URLLLL_Salary.'AddKTKL', $data_them);
                if ($aff != "") {
                    setMes('success', 'Thành công', 'Thêm mức thưởng, phạt thành công!');
                } else {
                    setMes('error', 'Thất bại', 'Có lỗi xảy ra xin vui lòng thử lại!');
                }
                die(header("Location: /muc-thuong-phat"));
            }
        }

        // Config Data
        $JobPosition = GetAPI('GET', URLLLL.'JobPosition/Get');
        $Users = GetAPI('POST', URLLLL.'User')['users'];
        $Part = GetAPI('GET', URLLLL.'Part')['partList'];
        $SP = AddAPI('POST', URLLLL_Salary.'SalaryProcess', ['id' => 0]);
        $_KTKL = AddAPI('POST', URLLLL_Salary.'GetKTKL', ['id' => 0]);
        $_StatusKTKL = AddAPI('POST', URLLLL_Salary.'GetStatusKTKL', ['id' => 0]);
        $_TypeKTKL = AddAPI('POST', URLLLL_Salary.'GetTypeKTKL', ['id' => 0]);
        $i = 1;
        $StatusKTKL = $TypeKTKL = $KTKL = [];
        foreach ($_KTKL as $k => $v) {
            $v['i'] = $i++;
            $KTKL[$v['PK_iKhenthuongKyluatID']] = $v;
        }
        foreach ($_StatusKTKL as $k => $v) {
            $StatusKTKL[$v['ID']] = $v;
        }
        foreach ($_TypeKTKL as $k => $v) {
            $TypeKTKL[$v['ID']] = $v;
        }
        foreach ($SP as $k => $v) {
            unset($v['tbl_quatrinh_lamviec']['_id']);
            $_SP[] = array_merge($v['tbl_hopdong_laodong'], $v['tbl_quatrinh_lamviec']);
        }
        foreach ($_SP as $k => $v) {
            $SalaryProcess[$v['FK_iNhanvienID']['$oid']] = $v;
        }
        foreach ($Part as $k => $v) {
            $PartList[$v['pK_iBophanID']] = $v;
        }
        foreach ($JobPosition as $k => $v) {
            if ($v['fK_iBophanID'] != get('bophan') and get('bophan') != '') {
                unset($JobPosition[$k]);
            } else {
                $JP[$v['pK_iVitriCongviecID']] = $v;
            }
        }
        $i = 1;
        foreach ($Users as $k => $v) {
            if (($v['fK_iBophanID'] != get('bophan') and get('bophan') != "") or ($v['fK_iVitriCongviecID'] != get('vitri') and get('vitri') != '')) {
                unset($Users[$k]);
                continue;
            }
            $v['i'] = $i++;
            $_Users[$v['_id']] = $v;
        }
        // End config data
        $data['KTKL'] = $KTKL;
        $data['StatusKTKL'] = $StatusKTKL;
        $data['TypeKTKL'] = $TypeKTKL;
        $data['SalaryProcess'] = $SalaryProcess;
        $data['bophan'] = get('bophan');
        $data['vitri'] = get('vitri');
        $data['Users'] = $_Users;
        $data['JobPosition'] = $JP;
        $data['PartList'] = $PartList;
        $data['dm_thu'] = dm_thu();
        ShowView($data, 'RewardPenance');
    }

    public function duyet() {
        $data['id'] = post('id');
        return AddAPI('POST', URLLLL_Salary.'DuyetKTKL', $data);
    }
}