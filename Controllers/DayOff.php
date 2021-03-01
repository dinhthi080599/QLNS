<?php

namespace Controllers;

class DayOff
{
    public function index()
    {
        $data = null;
        $action = get('action');
        if ($action == '') {
            $action = post('action');
        }
        $nam = get('nam');
        if ($nam == '') {
            $current_year = get_current_year();
        } else {
            $current_year = $nam;
        }
        $data['year_arr'] = year_arr($nam);
        $dayOffs = GetAPI('GET', URLLLL.'DayOff?year='.$current_year)['dayOffs'];
        $dayOffList = [
            'daqua' => [],
            'chuaqua' => []
        ];
        $now = time();
        foreach ($dayOffs as $k => $v) {
            $_ngaynghi = strtotime($v['dNgayBatdau']);
            if ((int)$now > (int)$_ngaynghi) {
                $dayOffList['daqua'][] = $v;
            } else {
                $dayOffList['chuaqua'][] = $v;
            }
        }
        $data['dayOffList'] = $dayOffList;
        switch ($action) {
            case 'add-new': {
                $this->add_new();
                header("Refresh:0");
                break;
            }
        }
        $data['dm_thu'] = dm_thu();
        ShowView($data, 'DayOff');
    }

    public function add_new() {
        $ca = post('ca');
        $data = array(
            'sTenNgaynghi' => post('sTenNgaynghi'),
            'FK_iNguoitaoID' => (int) session('id'),
            'dNgayBatdau' => post('dNgayBatdau'),
            'dNgayKethuc' => post('dNgayKethuc') != "" ? post('dNgayKethuc') : post('dNgayBatdau')
        );
        return AddAPI('POST', URLLLL.'DayOff', $data);
    }
}