<?php

namespace Controllers;

class Assignment
{
    public function index()
    {
        $data = null;
        if (get('themmoi') == 1) {
            $data['themmoi'] = 1;
        }
        $action = get('action');
        if ($action == '') {
            $action = post('action');
        }
        switch ($action) {
            case 'themmoi': {
                if ($this->themmoi() != "") {
                    setMes('success', 'Thành công', 'Cập nhật lương cơ bản thành công!');
                    die(header("Location: phan-cong-cong-viec"));
                } else {
                    setMes('success', 'Thất bại', 'Có lỗi xảy ra xin vui lòng thử lại');
                    die(header("Location: phan-cong-cong-viec"));
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
            $v['i'] = $i++;
            $_Users[$v['pK_iNhanvienID']] = $v;
        }
        // End config data
        $DFA = GetAPI('GET', URLLLL_Work.'ngay-nghi');
        $data['trangthai_congviec'] = $DFA['trangthai_congviec'];
        $data['trangthai_phancong_congviec'] = $DFA['trangthai_phancong_congviec'];
        $data['list_congviec'] = $DFA['list_congviec'];
        $data['SalaryProcess'] = $SalaryProcess;
        $data['bophan'] = get('bophan');
        $data['vitri'] = get('vitri');
        $data['Users'] = $_Users;
        $data['JobPosition'] = $JP;
        $data['PartList'] = $PartList;
        $data['dm_thu'] = dm_thu();
        $data['search'] = $search;
        $data['userID'] = session('id');
        $data['time_now'] = date("h:i d/m/Y");
        ShowView($data, 'Assignment');
    }

    public function themmoi() {
        $data['ten_congviec'] = post('ten_congviec');
        $data['noidung'] = post('noidung');
        $data['action'] = post('themmoi');
        echo AddAPI('POST', URLLLL_Work.'ngay-nghi', $data);
        die();
    }
}