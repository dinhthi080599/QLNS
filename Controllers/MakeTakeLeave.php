<?php

namespace Controllers;

class MakeTakeLeave
{
    public function index()
    {
        $data = null;
        $action = get('action');
        $id = get('id');
        if ($action == '') {
            $action = post('action');
        }
        switch ($action) {
            case 'get_data': {
                $this->get_data();
                break;
            }
            case 'gui-don': {
                $aff = $this->luu_don();
                if ($aff == 1) {
                    setMes('success', 'Thành công', 'Nộp đơn xin nghỉ phép thành công!');
                } else {
                    setMes('error', 'Thất bại', 'Có lỗi xảy ra xin vui lòng thử lại!');
                }
                die(header("Location: ". getURL()));
            }
        }
        $TakeLeaves = GetAPI('GET', URLLLL.'TakeLeave?userID=' . session('id'))['takeLeaves'];
        $data['status'] = GetAPI('GET', URLLLL.'Status/DXNP');
        $Users = get_user();
        $data['ChuaDuyet'] = $data['DaDuyet'] = $data['DaHuy'] = [];
        $data['chitiet'] = [
            'pK_iDonxinNghiphepID' => '',
            'fK_iNhanvienID' => '',
            'sLydoNghi' => '',
            'dNgayNghi' => '',
            'tThoigianTao' => '',
            'fK_iNguoiDuyetID' => '',
            'dThoigianDuyet' => '',
            'fK_iTrangthaiDonxinNghiphepID' => '',
            'sGhichuDonxinNghiphep' => '',
            'dNgayKethucNghi' => '',
            'sTenNV' => '',
        ];
        foreach ($TakeLeaves as $k => $v) {
            if ($id != "" and $v['pK_iDonxinNghiphepID'] == $id) {
                $data['chitiet'] = $v;
            }
            $data['DXNP'][] = $v;
        }
        $data['id'] = $id;
        $data['dm_thu'] = dm_thu();
        $data['Users'] = $Users;
        ShowView($data, 'MakeTakeLeave');
    }

    public function get_data() {
        $PartID = post('PartID');
        $data = GetAPI('GET', URLLLL.'TimeWorking?PartID='.$PartID)['timeWorkingList'];
        $NgayTrongTuan = dm_thu();
        foreach ($data as $k => $v) {
            $data[$k]['sTenThu'] = $NgayTrongTuan[$v['sNgayTrongTuan']];
        }
        echo json_encode($data);
        die();
    }

    public function luu_don() {
        if (post('den-ngay') == "") {
            $den_ngay = NULL;
        } else {
            $den_ngay = post('den-ngay');
        }
        $data = [
            'FK_iNhanvienID' => (int) session('id'),
            'sLydoNghi' => post('tieu-de'),
            'sGhichuDonxinNghiphep' => post('noi-dung'),
            'dNgayKethucNghi' => formatDateMDY($den_ngay),
            'dNgayNghi' => formatDateMDY(post('tu-ngay'))
        ];
        $result = AddAPI('POST', URLLLL.'TakeLeave/luu-don', $data);
        return $result;
    }
}