<?php

namespace Controllers;

class TakeLeave
{
    public function index()
    {
        $data = null;
        $action = get('action');
        if ($action == '') {
            $action = post('action');
        }
        switch ($action) {
            case 'get_data': {
                $this->get_data();
                break;
            }
            case 'ok': {
                $this->duyet();
                setMes('success', 'Đã duyệt', 'Đơn xin nghỉ phép đã được duyệt');
                die(header("Location: ". getURL()));
            }
            case 'cancel': {
                $this->cancel();
                setMes('success', 'Đã hủy', 'Đơn xin nghỉ phép đã bị hủy');
                die();
            }
        }
        $TakeLeaves = GetAPI('GET', URLLLL.'TakeLeave')['takeLeaves'];
        $Users = get_user();
        $data['ChuaDuyet'] = $data['DaDuyet'] = $data['DaHuy'] = [];
        if (!empty($TakeLeaves)) {
            foreach ($TakeLeaves as $k => $v) {
                switch ($v['fK_iTrangthaiDonxinNghiphepID']) {
                    case '0': {
                        $data['ChuaDuyet'][] = $v;
                        break;
                    }
                    case '1': {
                        $data['DaDuyet'][] = $v;
                        break;
                    }
                    case '2': {
                        $data['DaHuy'][] = $v;
                        break;
                    }
                }
            }
        }
        $data['dm_thu'] = dm_thu();
        $data['Users'] = $Users;
        ShowView($data, 'TakeLeave');
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

    public function duyet() {
        $id = post('id');
        $TL['PK_iDonxinNghiphepID'] = (int) $id;
        $TL['FK_iNguoiDuyetID'] = session('id');
        $result = AddAPI('POST', URLLLL.'TakeLeave/Accept', $TL);
    }

    public function cancel() {
        $id = post('id');
        $reason = post('reason');
        $TL['PK_iDonxinNghiphepID'] = (int) $id;
        $TL['sLydoHuy'] = $reason;
        $TL['FK_iNguoiDuyetID'] = session('id');
        $result = AddAPI('POST', URLLLL.'TakeLeave/Cancel', $TL);
    }
}