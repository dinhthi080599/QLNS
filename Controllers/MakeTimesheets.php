<?php

namespace Controllers;

class MakeTimesheets
{
    public function index()
    {
        // Get URL request
        $data = null;
        $action = get('action');
        $nam = get('nam');
        $thang = get('thang');
        $bophan = get('bophan');
        if ($action == '') {
            $action = post('action');
        }
        switch ($action) {
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

        // [Get data from API]
        $Timesheets = AddAPI('GET', URLLLL.'JobPosition/Get');
        $JobPosition = GetAPI('GET', URLLLL.'JobPosition/Get');
        $Users = GetAPI('GET', URLLLL.'User')['users'];
        $Part = GetAPI('GET', URLLLL.'Part')['partList'];
        $SP = json_decode(AddAPI('POST', URLLLL_Salary.'SalaryProcess', ['id' => 0]), true);
        // [End get data from API]

        // [Config Data]
        $SalaryProcess = $PartList = $JP = $Users = array();
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
        // [End config data]
        
        // [Data send to VIEW]
        $data['SalaryProcess'] = $SalaryProcess;
        $data['bophan'] = get('bophan');
        $data['vitri'] = get('vitri');
        $data['Users'] = $Users;
        $data['JobPosition'] = $JP;
        $data['PartList'] = $PartList;
        $data['dm_thu'] = dm_thu();
        $data['year_arr'] = year_arr($nam);
        $data['month_arr'] = month_arr($thang);
        // [End data send to VIEW]
        ShowView($data, 'MakeTimesheets');
    }

    public function update_salary() {
        $data['id'] = post('id');
        $data['salary'] = post('salary');
        $data['endtime'] = date('d-m-Y');
        return AddAPI('POST', URLLLL_Salary.'UpdateSalary', $data);
    }

    public function get_salary_process() {
        $data['id'] = post('id');
        echo AddAPI('POST', URLLLL_Salary.'SalaryProcess', $data);
        die();
    }
}