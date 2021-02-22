<?php

function pr($a) {
    echo "<pre>";
    print_r($a);
    echo "</pre>";
    die();
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

function get($name) {
    return isset($_GET[$name]) ? $_GET[$name] : '';
}

function post($name) {
    return isset($_POST[$name]) ? $_POST[$name] : '';
}

function session($name) {
    return isset($_SESIONS[$name]) ? $_SESIONS[$name] : '1';
}

function GetAPI($method, $url)
{
    $curl = curl_init();
    curl_setopt_array($curl, array(
        CURLOPT_RETURNTRANSFER => true,
        CURLOPT_URL => $url,
        CURLOPT_USERAGENT => 'TIME',
        CURLOPT_SSL_VERIFYPEER => false,
        CURLOPT_HEADER => 0
    ));
    $resp = curl_exec($curl);
    $response = json_decode($resp, true);
    return $response;
}

function AddAPI($method, $url, $data = false)
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
    require_once('lib\smarty\libs\Smarty.class.php');
    $smarty = new Smarty();
    $smarty->display('view/Layout/Header.php');
    foreach ($data as $k => $val) {
        $smarty->assign($k, $val);
    }
    $smarty->display('view/' . $view . '.php');
    $smarty->display('view/Layout/Footer.php');
}