<?php

namespace Controllers;

class ReportSalary extends BaseController
{
    public function index()
    {
        // Get URL request
        $data = null;
        $action = get('action');
        $nam = get('nam');
        $thang = get('thang');
        $bophan = get('bophan');
        $mnv = get('mnv');
        $Users = GetAPI('GET', URLLLL.'User')['users'];
        $i = 1;
        $List_Users = array();
        if ($bophan != "") {
            foreach ($Users as $k => $v) {
                if (($v['fK_iBophanID'] != get('bophan') and get('bophan') != "")) {
                    unset($Users[$k]);
                    continue;
                }
                $v['i'] = $i++;
                $List_Users[$v['pK_iNhanvienID']] = $v;
            }
        }
        $Request['year'] = (int)$nam;
        $Request['month'] = (int)$thang;
        $Request['ListUserID'] = array_column($List_Users, 'pK_iNhanvienID');
        if ($action == '') {
            $action = post('action');
        }
        switch ($action) {
            // case 'lap-bang-luong': {
            //     $this->lap_bang_luong();
            //     die();
            // }
            // case 'update': {
            //     if ($this->update_salary() != "") {
            //         setMes('success', 'Thành công', 'Cập nhật lương cơ bản thành công!');
            //         die(header("Location: ". getURL()));
            //     } else {
            //         setMes('success', 'Thất bại', 'Có lỗi xảy ra xin vui lòng thử lại');
            //         die(header("Location: ". getURL()));
            //     }
            // }
        }

        // [Get data from API]
        $Timesheets = AddAPI('POST', URLLLL.'Timesheet/Get', $Request);
        $JobPosition = GetAPI('GET', URLLLL.'JobPosition/Get');
        $Part = GetAPI('GET', URLLLL.'Part')['partList'];
        $SP = AddAPI('POST', URLLLL_Salary.'SalaryProcess', ['id' => 0]);
        $PR = AddAPI('POST', URLLLL_Salary.'GetPayroll', $Request);
        // [End get data from API]

        // [Config Data]
        $Users_Timesheets = $list_ts = $Payroll = array();
        $stt = 1;
        foreach ($PR as $v) {
            unset($v['_id']);
            $Payroll[$v['FK_iNhanvienID']] = $v;
        }
        foreach ($Timesheets as $k => $v) {
            if(!isset($Users_Timesheets[$v['fK_iNhanvienID']])) {
                $Users_Timesheets[$v['fK_iNhanvienID']]['SNC'] = 1;
                $Users_Timesheets[$v['fK_iNhanvienID']]['STT'] = $stt;
                $stt++;
            } else {
                $Users_Timesheets[$v['fK_iNhanvienID']]['SNC']++;
            }
            $list_ts[$v['fK_iNhanvienID']][$v['pK_sBangChamcongID']] = $v;
        }
        $SalaryProcess = $PartList = $JP = array();
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
        // [End config data]
        
        // [Data send to VIEW]
        $data['SalaryProcess'] = $SalaryProcess;
        $data['bophan'] = $bophan;
        $data['Payroll'] = $Payroll;
        $data['Users'] = $List_Users;
        $data['Users_Timesheets'] = $Users_Timesheets;
        $data['JobPosition'] = $JP;
        $data['PartList'] = $PartList;
        $data['dm_thu'] = dm_thu();
        $data['year_arr'] = year_arr($nam);
        $data['month_arr'] = month_arr($thang);
        $data['URL'] = getURL();
        $data['mnv'] = $mnv;
        $data['list_ts'] = $list_ts;
        $data['nam'] = $nam;
        $data['thang'] = $thang;
        $data['bophan'] = $bophan;
        if ($mnv != "") {
            $data['thoigiandimuon'] = $this->tinhthoi_gianmuon($list_ts[$mnv], get('bophan'));
        }
        // [End data send to VIEW]
        ShowView($data, 'ReportSalary');
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
    public function tinhthoi_gianmuon($ts, $PartID) {
        $thoigiandimuon = 0;
        if ($PartID == "") {
            $PartID = "0";
        }
        $data = GetAPI('GET', URLLLL.'TimeWorking?PartID='.$PartID)['timeWorkingList'];
        $NgayTrongTuan = dm_thu();
        foreach ($data as $k => $v) {
            $lichlamviec[$v['sNgayTrongTuan']] = $v;
        }
        foreach ($ts as $k => $v) {
            $date = date($v['dNgayChamcong']);
            $dayofweek = date('w', strtotime($date)) == 0 ? 6 : date('w', strtotime($date)) - 1;
            $llv = $lichlamviec[$dayofweek];
            if ($llv['tThoigianBatdauSang'] != "00:00:00"){
                if(strtotime($v['tThoigianVaolamSang']) > strtotime($llv['tThoigianBatdauSang'])) {
                    $thoigiandimuon += (strtotime($v['tThoigianVaolamSang']) - strtotime($llv['tThoigianBatdauSang']));
                }
            } 
        }
        $timelate['gio'] = intval($thoigiandimuon/3600);
        $timelate['phut'] = intval(($thoigiandimuon - $timelate['gio'] * 3600)/60);
        return $timelate;
    }
    private function lap_bang_luong() {
        $check = post('check-tinh-luong');
        $request['year'] = (int)get('nam');
        $request['month'] = (int)get('thang');
        $request['ListUserID'] = [];
        foreach ($check as $v) {
            $request['ListUserID'][] = (int)$v;
        }
        
        $Part = GetAPI('GET', URLLLL.'Part')['partList'];
        $Users = GetAPI('GET', URLLLL.'User')['users'];
        foreach ($Users as $v) {
            if (in_array($v['pK_iNhanvienID'], $request['ListUserID'])) {
                foreach ($Part as $k) {
                    if ($k['pK_iBophanID'] == $v['fK_iBophanID']) {
                        $request['bophan'] = $k['pK_iBophanID'];
                    }
                }
            }
        }
        $Timesheets = AddAPI('POST', URLLLL_Salary.'Payroll', $request);
        if ($Timesheets != 0) {
            setMes('success', 'Thành công', 'Lập bảng lương thành công!');
            die(header("Location: /tinh-luong?nam=" . get('nam') . "&thang=" . get('thang') . "&bophan=" . $request['bophan']));
        } else {
            setMes('error', 'Thất bại', 'Không có dữ liệu để tính lương!');
            die(header("Location: /tinh-luong?nam=" . get('nam') . "&thang=" . get('thang') . "&bophan=" . $request['bophan']));
        }
    }
}