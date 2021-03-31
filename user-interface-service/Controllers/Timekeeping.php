<?php

namespace Controllers;

class Timekeeping extends BaseController
{
    public function index()
    {
        $data = null;
        $action = get('action');
        $data['PartID'] = "";
        $data['timeWorkingList'] = array();
        if ($action == '') {
            $action = post('action');
        }
        switch ($action) {
            case 'get_data': {
                $this->get_data();
                break;
            }
            case 'add_new': {
                if ($_SESSION['load'] != 'load') {
                    $data['PartID'] = $this->add_new();
                    $data['timeWorkingList'] = $this->get_data_($data['PartID']);
                } else {
                    $_SESSION['load'] = 1;
                }
                break;
            }
        }
        $data['partList'] = GetAPI('GET', URLLLL.'Part')['partList'];
        $data['NV_PB'] = GetAPI('GET', URLLLL.'Part/NV_PB');
        $data['dm_thu'] = dm_thu();
        ShowView($data, 'Timekeeping');
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

    public function get_data_($PartID) {
        $data = GetAPI('GET', URLLLL.'TimeWorking?PartID='.$PartID)['timeWorkingList'];
        $NgayTrongTuan = dm_thu();
        foreach ($data as $k => $v) {
            $data[$k]['sTenThu'] = $NgayTrongTuan[$v['sNgayTrongTuan']];
        }
        return $data;
    }

    public function add_new() {
        $_SESSION['load'] = 'load';
        $ca = post('ca');
        $tthoigianbatdau = post('tthoigianbatdau');
        $tthoigiankethuc = post('tthoigiankethuc');
        $ca = post('ca');
        $data = array(
            'fk_ibophanid' => post('fk_ibophanid'),
            'sngaytrongtuan' => post('sngaytrongtuan'),
            'FK_iNguoiTao' => session('id'),
            'dNgayApdung' => date("Y-m-d H:i:s"),
            'ca' => (int) $ca
        );
        $data = array_merge($data, default_timeworking());
        foreach ($ca as $k => $v) {
            switch ($k) {
                case '0':{
                    if ($tthoigianbatdau[$k] != "")
                    $data['tthoigianbatdausang'] =  $tthoigianbatdau[$k] . ":00";
                    if ($tthoigiankethuc[$k] != "")
                    $data['tthoigiankethucsang'] = $tthoigiankethuc[$k] . ":00";
                    break;
                }
                case '1':{
                    if ($tthoigianbatdau[$k] != "")
                    $data['tthoigianbatdauchieu'] = $tthoigianbatdau[$k] . ":00";
                    if ($tthoigiankethuc[$k] != "")
                    $data['tthoigiankethucchieu'] = $tthoigiankethuc[$k] . ":00";
                    break;
                }
                case '2':{
                    if ($tthoigianbatdau[$k] != "")
                        $data['tthoigianbatdautoi'] = $tthoigianbatdau[$k] . ":00";
                    if ($tthoigiankethuc[$k] != "")
                        $data['tthoigiankethuctoi'] = $tthoigiankethuc[$k] . ":00";
                    break;
                }
            }
        }
        if(AddAPI('POST', URLLLL.'TimeWorking', $data) > 0) {
            setMes('success', 'Thành công', 'Cập nhật ngày làm việc thành công!');
        }
        else {
            setMes('error', 'Thất bại', 'Bạn chưa chọn phòng ban!');
        }
        return post('fk_ibophanid');
    }
}