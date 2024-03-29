<?php

function pr($a) {
    echo "<pre>";
    print_r($a);
    echo "</pre>";
    die();
}

function default_timeworking() {
    $data['tthoigianbatdausang'] =  "00:00:00";
    $data['tthoigiankethucsang'] = "00:00:00";
    $data['tthoigianbatdauchieu'] = "00:00:00";
    $data['tthoigiankethucchieu'] = "00:00:00";
    $data['tthoigianbatdautoi'] = "00:00:00";
    $data['tthoigiankethuctoi'] = "00:00:00";
    return $data;
}

function year_arr($year = ''){
    $year_arr = [];
    if ($year == '') {
        $year = date("Y");
    }
    for ($i = 2015; $i < date("Y")+5; $i++) {
        if ($i == $year) {
            $year_arr[$i] = 'selected';
        } else {
            $year_arr[$i] = '';
        }
    }
    return $year_arr;
}
function month_arr($month = ''){
    $month_arr = [];
    if ($month == '') {
        $month = date("m");
    }
    for ($i = 1; $i < 12; $i++) {
        if ($i == $month) {
            $month_arr[$i] = 'selected';
        } else {
            $month_arr[$i] = '';
        }
    }
    return $month_arr;
}

function get_current_year() {
    return date("Y");
}

function formatDate($date) {
    if ($date == "") {
        return "";
    }
    $date = str_replace("AM","", $date);
    $date = str_replace("PM","", $date);
    $date = str_replace("/","-", $date);
    $time = strtotime($date);
    $new_date = date('d-m-Y', $time);
    return $new_date;
}

function formatDateMDY($date) {
    if ($date == "") {
        return "";
    }
    $date = str_replace("AM","", $date);
    $date = str_replace("PM","", $date);
    $date = str_replace("/","-", $date);
    $time = strtotime($date);
    $new_date = date('m-d-Y', $time);
    return $new_date;
}

function dm_thu($id = -1) {
    $dm_thu = array (
        0 => 'T2',
        1 => 'T3',
        2 => 'T4',
        3 => 'T5',
        4 => 'T6',
        5 => 'T7',
        6 => 'CN'
    ); # Cấm sửa
    if ($id != -1) {
        return $dm_thu[$id];
    } else {
        return $dm_thu;
    }
}

function get_action($type) {
    $arr_tacvu = [
        'ok' => '<button type="submit" class="btn btn-sm btn-success" value="ok" name="action">Duyệt</button>',
        'cancel' => '<button type="submit" class="btn btn-sm btn-warning" value="cancel" name="action">Hủy</button>',
        'del'> '<button type="submit" class="btn btn-sm btn-danger" value="del" name="action">Xóa</button>'
    ];
    return $arr_tacvu[$type];
}

function get_user($id = 0) {
    $Value = GetAPI('GET', URLLLL.'User')['users'];
    $User = [
        0 => ''
    ];
    foreach ($Value as $k => $v) {
        $User[$v['_id']] = $v;
    }
    return $User;
}

function get($name) {
    $url = parse_url($_SERVER['REQUEST_URI']);
    if (!empty($url['query']))
    parse_str($url['query'], $output);
    if ($url != '/') {
        if ($name == ''){
            return $output;
        } elseif (isset($output[$name])) {
            return $output[$name];
        }
    }
    return isset($_GET[$name]) ? $_GET[$name] : '';
}

function post($name) {
    return isset($_POST[$name]) ? $_POST[$name] : '';
}

function session($name) {
    return $_SESSION[$name];
}

function GetAPI($method, $url)
{
    // $_data['url'] = $url;
    // $_data['method'] = $method;
    // $curl = curl_init();
    // curl_setopt_array($curl, array(
    //     CURLOPT_RETURNTRANSFER => true,
    //     CURLOPT_URL => URLLLL_Authen . 'Request',
    //     CURLOPT_USERAGENT => 'TIME',
    //     CURLOPT_SSL_VERIFYPEER => false,
    //     CURLOPT_HEADER => 0
    // ));
    // $resp = curl_exec($curl);
    // $response = json_decode($resp, true);
    // return $response;
    return AddAPI($method, $url);
}

function AddAPI($method, $url, $data = false)
{
    $API_Name = explode("/", $url);
    $_data['url'] = array_shift($API_Name);
    $_data['routes'] = implode("/",$API_Name);
    $_data['data'] = $data;
    $_data['method'] = $method;
    $_data['token'] = $_SESSION['Token'];
    $postdata = json_encode($_data);
    // $ch = curl_init($url);
    $ch = curl_init(URLLLL_Authen . 'Request');
    curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 0);
    curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0);
    curl_setopt($ch, CURLOPT_POST, 1);
    curl_setopt($ch, CURLOPT_POSTFIELDS, $postdata);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
    curl_setopt($ch, CURLOPT_FOLLOWLOCATION, 1);
    curl_setopt($ch, CURLOPT_HTTPHEADER, array('Content-Type: application/json'));
    $result = curl_exec($ch);
    curl_close($ch);
    if ($result == "token invalid") {
        setMes('error', 'Thất bại', 'Token không hợp lệ');
        session_destroy ();
        die(header("Location: /"));
    }
    $_result = json_decode($result, true);
    if ($_result != "") {
        return $_result;
    } else {
        return $result;
    }
}

function check_login($method, $url, $data = false)
{
    $postdata = json_encode($data);
    $ch = curl_init($url);
    curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 0);
    curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0);
    curl_setopt($ch, CURLOPT_POST, 1);
    curl_setopt($ch, CURLOPT_POSTFIELDS, $postdata);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
    curl_setopt($ch, CURLOPT_FOLLOWLOCATION, 1);
    curl_setopt($ch, CURLOPT_HTTPHEADER, array('Content-Type: application/json'));
    $result = curl_exec($ch);
    curl_close($ch);
    return $result;
}

function ShowView($data, $view) {
    require_once('lib/smarty/libs/Smarty.class.php');
    $smarty = new Smarty();
    $data['ten_nv'] = $_SESSION['sHoten'];
    $data['quyen'] = $_SESSION['quyen']; 
$data['chucnang'] = $_SESSION['chucnang']; 
    foreach ($data as $k => $val) {
        $smarty->assign($k, $val);
    }
    $smarty->display('view/Layout/Header.php');
    $smarty->display('view/' . $view . '.php');
    $smarty->display('view/Layout/Footer.php');
}

function ShowView_No_Layout($data, $view) {
    require_once('lib/smarty/libs/Smarty.class.php');
    $smarty = new Smarty();
    $smarty->display('view/' . $view . '.php');
}

function formatDate1($date) {
    if ($date == "") {
        return "";
    }
    $date = str_replace("AM","", $date);
    $date = str_replace("PM","", $date);
    $date = str_replace("/","-", $date);
    $date = explode(' ', $date);
    $date = explode('-', $date[0]);
    $date = implode('-', [$date[1], $date[0], $date[2]]);
    $time = strtotime($date);
    $new_date = date('d-m-Y', $time);
    return $new_date;
}

function setMes($type, $title, $body) {
    $_SESSION['mes'] = [
        'type' => $type,
        'title' => $title,
        'body' => $body
    ];
}

function getMes() {
    if (empty($_SESSION['mes'])) {
        return null;
    } else {
        $mes = $_SESSION['mes'];
        unset($_SESSION['mes']);
        return $mes;
    }
}

function getURL() {
    return "http://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";
}