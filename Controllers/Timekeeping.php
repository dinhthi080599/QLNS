<?php

namespace Controllers;

class Timekeeping
{
    public function index()
    {
        $data = null;
        $action = get('action');
        if ($action == '') {
            $action = post('action');
        }
        $data['timeWorkingList'] = array();
        $data['partList'] = GetAPI('GET', URLLLL.'Part')['partList'];
        $data['NV_PB'] = GetAPI('GET', URLLLL.'Part/NV_PB');
        switch ($action) {
            case 'get_data': {
                $this->get_data();
                break;
            }
            case 'add_new': {
                $this->add_new();
                break;
            }
        }
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

    public function add_new() {
        $ca = post('ca');
        $data = array(
            'fk_ibophanid' => intval(post('fk_ibophanid')),
            'sngaytrongtuan' => post('sngaytrongtuan'),
            'FK_iNguoiTao' => (int) session('id'),
            'tthoigiantao' => "2021-02-23T00:01:38", #date("Y-m-d H:i:s"),
            'dNgayApdung' => "2021-02-23T00:01:38", #date("Y-m-d H:i:s"),
            'ca' => (int) $ca
        );
        $data = array_merge($data, default_timeworking());
        switch ($ca) {
            case '0':{
                $data['tthoigianbatdausang'] =  post('tthoigianbatdau').":00";
                $data['tthoigiankethucsang'] = post('tthoigiankethuc').":00";
                break;
            }
            case '1':{
                $data['tthoigianbatdauchieu'] = post('tthoigianbatdau').":00";
                $data['tthoigiankethucchieu'] = post('tthoigiankethuc').":00";
                break;
            }
            case '2':{
                $data['tthoigianbatdautoi'] = post('tthoigianbatdau').":00";
                $data['tthoigiankethuctoi'] = post('tthoigiankethuc').":00";
                break;
            }
        }
        echo AddAPI('POST', URLLLL.'TimeWorking', $data);
        die();
    }
}