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
            case 'thong-ke-tong-hop': {
                echo $this->thong_ke_tong_hop(post('nam'), post('thang'));
                die();
            }
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
            unset($v['tbl_quatrinh_lamviec']['_id']);
            if (!empty($v['tbl_hopdong_laodong']['dNgayHetHan'])) {
                $v['tbl_hopdong_laodong']['dNgayHetHan'] = date('d-m-Y', $v['tbl_hopdong_laodong']['dNgayHetHan']['$date']/1000);
            }
            $_SP[] = array_merge($v['tbl_hopdong_laodong'], $v['tbl_quatrinh_lamviec']);
        }
        foreach ($_SP as $k => $v) {
            $SalaryProcess[$v['FK_iNhanvienID']['$oid']] = $v;
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
        $data['ThongKe'] = $this->thong_ke_tong_hop(date("Y"), date("m"));
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
    public function thong_ke_tong_hop($nam, $thang) {
        $Request = [
            'year' => (int) $nam,
            'month' => (int) $thang
        ];
        $bophan = post('bophan');
        $Users = GetAPI('GET', URLLLL.'User')['users'];
        $Part = GetAPI('GET', URLLLL.'Part')['partList'];

        $List_Users = array();
        foreach ($Users as $k => $v) {
            if (($v['fK_iBophanID'] != $bophan) and $bophan != "") {
                unset($Users[$k]);
                continue;
            }
            $List_Users[$v['_id']] = $v;
        }
        foreach ($Part as $k => $v) {
            $PartList[$v['pK_iBophanID']] = $v;
        }

        $PR = AddAPI('POST', URLLLL_Salary.'GetPayroll', $Request);
        // Title
        $data = [
            'D1' => 'CÔNG TY CỔ PHẦN DƯỢC PHẨM',
            'D2' => 'LOCIFA',
            'A4' => 'THỐNG KÊ BẢNG LƯƠNG TỔNG HỢP',
            'E5' => 'Tháng: ' . $thang,
            'E6' => 'Năm: ' . $nam,
            'A8' => 'STT',
            'B8' => 'Mã NV',
            'C8' => 'Họ tên',
            'D8' => 'Lương được nhận',
            'E8' => 'Bộ phận',
            'F8' => 'Ghi chú'
        ];

        // Render data
        $index = 9;
        $stt = 1;
        $sum = 0;
        foreach ($PR as $k => $v) {
            $mnv = $v['FK_iNhanvienID'];
            $bophan = $List_Users[$mnv]['fK_iBophanID'];
            $data['A'.$index] = $stt++;
            $data['B'.$index] = $List_Users[$mnv]['sMaNhanvien'];
            $data['C'.$index] = $List_Users[$mnv]['sHoten'];
            $data['D'.$index] = number_format($v['iTongluong'], 0, '.', '.') . ' VND';
            $data['E'.$index] = $PartList[$bophan]['sTenBophan'];
            $sum += $v['iTongluong'];
            $index++;
        }
        
        // Footer
        $data['A'.$index] = 'Tổng:'; $data['D'.$index] = number_format($sum, 0, '.', '.') . ' VND';
        $data['D'.($index+2)] = 'Trưởng BP. Lương thưởng & phúc lợi'; 
        $data['D'.($index+3)] = '(Ký, ghi rõ họ tên)';
        

        $export_data['data'] = $data;
        $export_data['font-weight'] = [ 'A1:F4', 'A8:F8', 'A'.$index, 'D'.($index+2) ];
        $export_data['column-size'] = [
            'A' => 5,
            'B' => 8,
            'C' => 22,
            'D' => 17,
            'E' => 23,
            'F' => 10,
        ];
        $export_data['font-size'] = [
            'A4' => 16,
        ];
        $export_data['horizontal-center'] = [
            'D1', 'D2', 'A4', 'A8:F8', 'A9:B'.($index-1), 'D'.($index+2).':F'.($index+3)
        ];
        $export_data['cell-merge'] = [
            'D1' => 'F1',
            'D2' => 'F2',
            'A4' => 'F4',
            'A'.$index => 'C'.$index,
            'D'.$index => 'F'.$index,
            'D'.($index+2) => 'F'.($index+2),
            'D'.($index+3) => 'F'.($index+3),
        ];
        $export_data['cell-border'] = [
            'A8' => 'F'.$index
        ];
        $export_data['file-name'] = "Thống kê bảng lương tổng hợp tháng {$thang} năm {$nam}.xlsx";
        return json_encode($export_data);
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