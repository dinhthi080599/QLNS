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
        $search = get('search-text');
        if ($nam == '') {
            $current_year = get_current_year();
        } else {
            $current_year = $nam;
        }
        $data['year_arr'] = year_arr($nam);
        $dayOffs = GetAPI('GET', URLLLL.'DayOff?year='.$current_year.'&search='.$search)['dayOffs'];
        $dayOffList = [
            'daqua' => [],
            'chuaqua' => []
        ];
        $now = time();
        foreach ($dayOffs as $k => $v) {
            // $v['dNgayBatdau'] = str_replace('/', '-', $v['dNgayBatdau']);
            // $v['dNgayKethuc'] = str_replace('/', '-', $v['dNgayKethuc']);
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
            case 'del': {
                $data_del['pK_iNgaynghiTrongnamID'] = (int)post('del');
                $del = AddAPI('POST', URLLLL.'DayOff/Del', $data_del);
                setMes('success', 'Đã xóa', 'Ngày nghỉ đã được xóa');
                die(header("Location: ". getURL()));
            }
        }
        $data['dm_thu'] = dm_thu();
        $data['search'] = $search;
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