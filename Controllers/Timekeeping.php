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
        $data['partList'] = GetAPI('GET', URL.'Part')['partList'];
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
        $data = GetAPI('GET', URL.'TimeWorking?PartID='.$PartID)['timeWorkingList'];
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
            'fk_ibophanid' => post('fk_ibophanid'),
            'sngaytrongtuan' => post('sngaytrongtuan'),
            'fk_inguoitao' => session('id'),
            'tthoigiantao' => date("Y-m-d H:i:s"),
        );
        switch ($ca) {
            case '0':{
                $data['tthoigianbatdausang'] = post('tthoigianbatdau');
                $data['tthoigiankethucsang'] = post('tthoigiankethuc');
                break;
            }
            case '1':{
                $data['tthoigianbatdauchieu'] = post('tthoigianbatdau');
                $data['tthoigiankethucchieu'] = post('tthoigiankethuc');
                break;
            }
            case '2':{
                $data['tthoigianbatdautoi'] = post('tthoigianbatdau');
                $data['tthoigiankethuctoi'] = post('tthoigiankethuc');
                break;
            }
        }
        pr(AddAPI('POST', URL.'TimeWorking', $data));
    }
}