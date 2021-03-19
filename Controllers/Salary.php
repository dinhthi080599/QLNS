<?php

namespace Controllers;

class Salary
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
            $v['dNgayBatdau'] = str_replace('/', '-', $v['dNgayBatdau']);
            $v['dNgayKethuc'] = str_replace('/', '-', $v['dNgayKethuc']);
            $_ngaynghi = strtotime($v['dNgayBatdau']);
            if ((int)$now > (int)$_ngaynghi) {
                $dayOffList['daqua'][] = $v;
            } else {
                $dayOffList['chuaqua'][] = $v;
            }
        }
        $data['dayOffList'] = $dayOffList;
        switch ($action) {
            case 'get_salary_process': {
                $this->get_salary_process();
                break;
            }
            case 'update': {
                if ($this->update_salary() != "") {
                    setMes('success', 'Thành công', 'Cập nhật lương cơ bản thành công!');
                    die(header("Location: ". getURL()));
                } else {
                    setMes('success', 'Thất bại', 'Có lỗi xảy ra xin vui lòng thử lại');
                    die(header("Location: ". getURL()));
                }
            }
        }

        // Config Data
        $JobPosition = GetAPI('GET', URLLLL.'JobPosition/Get');
        $Users = GetAPI('GET', URLLLL.'User')['users'];
        $Part = GetAPI('GET', URLLLL.'Part')['partList'];
        $SP = json_decode(AddAPI('POST', URLLLL_Salary.'SalaryProcess', ['id' => 0]), true);
        foreach ($SP as $k => $v) {
            $SalaryProcess[$v['FK_iNhanvienID']] = $v;
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
            $Users[$k]['i'] = $i++;
        }
        // End config data
        $data['SalaryProcess'] = $SalaryProcess;
        $data['bophan'] = get('bophan');
        $data['vitri'] = get('vitri');
        $data['Users'] = $Users;
        $data['JobPosition'] = $JP;
        $data['PartList'] = $PartList;
        $data['dm_thu'] = dm_thu();
        $data['search'] = $search;
        ShowView($data, 'Salary');
    }

    public function update_salary() {
        $data['id'] = post('id');
        $data['salary'] = post('salary');
        $data['endtime'] = date('d-m-Y');
        return AddAPI('POST', URLLLL_Salary.'UpdateSalary', $data);
    }

    public function get_salary_process() {
        $data['id'] = post('nvID');
        echo AddAPI('POST', URLLLL_Salary.'SalaryProcess', $data);
        die();
    }
}