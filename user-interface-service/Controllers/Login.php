<?php

namespace Controllers;

class Login
{
    public function index()
    {
        $data = [];
        $action = post('action');
        $logout = get('logout');
        if ($action == 'login') {
            $this->login();
        }
        if ($logout == '1') {
            $this->logout();
        }
        if (isset($_SESSION['PK_iTaikhoanID'])) {
            die(header("Location: /trang-chu"));
        }
        ShowView_No_Layout($data, 'Login');
    }

    function login(){
        $check = check_login('POST', URLLLL_Authen, $_POST);
        if ($check != "false") {
            $check = json_decode($check, true);
            $_SESSION["Token"] = $check['refreshToken'];
            $_SESSION["PK_iTaikhoanID"] = $check['query']['PK_iTaikhoanID'];
            $_SESSION["id"] = $check['query']['PK_iNhanvienID'];
            $_SESSION["PK_iNhanvienID"] = $check['query']['PK_iNhanvienID'];
            $_SESSION["sTenTaikhoan"] = $check['query']['sTenTaikhoan'];
            $_SESSION["FK_iQuyenID"] = $check['query']['FK_iQuyenID'];
            $_SESSION["FK_iTrangthaiTaikhoan"] = $check['query']['FK_iTrangthaiTaikhoan'];
            $_SESSION["sTenTrangthaiTaikhoan"] = $check['query']['sTenTrangthaiTaikhoan'];
            $_SESSION["quyen"] = $check['query']['quyen'];
            setMes('success', '_login', 'Đăng nhập thành công!');
            die(header("Location: trang-chu"));
        }
        else {
            setMes('error', 'Thất bại', 'Tên đăng nhập hoặc tài khoản không chính xác!');
            die(header("Location: /"));
        }
    }

    function logout(){
        session_destroy ();
        die(header("Location: /"));
    }
}