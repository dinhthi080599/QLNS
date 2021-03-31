<?php

namespace Controllers;

class Tax extends BaseController
{
    public function index()
    {
        $data = null;
        $action = get('action');
        $add = get('add');
        $thue = get('id');
        if ($add == '1') {
            $data['add'] = 1;
        }
        if ($thue != "") {
            $data['add'] = 1;
            $data['id'] = $thue;
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
                $data_them['luong'] = post('luong');
                $data_them['thue'] = post('thue');
                $data_them['nguoitao'] = session('id');
                $aff = AddAPI('POST', URLLLL_Salary.'AddThue', $data_them);
                if ($aff != "") {
                    setMes('success', 'Thành công', 'Thêm mức thuế thành công!');
                } else {
                    setMes('error', 'Thất bại', 'Có lỗi xảy ra xin vui lòng thử lại!');
                }
                die(header("Location: /thue"));
            }
            case 'capnhat': {
                $data_them['luong'] = post('luong');
                $data_them['thue'] = post('thue');
                $data_them['id'] = post('id');
                $data_them['nguoitao'] = session('id');
                $aff = AddAPI('POST', URLLLL_Salary.'UpdateThue', $data_them);
                if ($aff != "") {
                    setMes('success', 'Thành công', 'Cập nhật mức thuế thành công!');
                } else {
                    setMes('error', 'Thất bại', 'Có lỗi xảy ra xin vui lòng thử lại!');
                }
                die(header("Location: /thue"));
            }
        }

        // Config Data
        $Users = GetAPI('POST', URLLLL.'User')['users'];
        $Thue = AddAPI('POST', URLLLL_Salary.'GetThue', ['id' => 0]);
        $i = 1;
        foreach ($Thue as $v) {
            if ($v['_id']['$oid'] == $thue) {
                $data['uThue'] = $v;
            }
        }
        foreach ($Users as $k => $v) {
            if (($v['fK_iBophanID'] != get('bophan') and get('bophan') != "") or ($v['fK_iVitriCongviecID'] != get('vitri') and get('vitri') != '')) {
                unset($Users[$k]);
                continue;
            }
            $v['i'] = $i++;
            $_Users[$v['_id']] = $v;
        }
        // End config data
        $data['bophan'] = get('bophan');
        $data['vitri'] = get('vitri');
        $data['Users'] = $_Users;
        $data['Thue'] = $Thue;
        $data['dm_thu'] = dm_thu();
        ShowView($data, 'Tax');
    }

    public function duyet() {
        $data['id'] = post('id');
        return AddAPI('POST', URLLLL_Salary.'DuyetKTKL', $data);
    }
}