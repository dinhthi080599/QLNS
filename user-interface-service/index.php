<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
define('PATH_ROOT', __DIR__);
// define('URLLLL','https://localhost:5001/');
// define('URLLLL_Staff','http://localhost:3003/');
// define('URLLLL_Salary','http://localhost:4900/');
// define('URLLLL_Work','http://workflow_management.com/');
// define('URLLLL_Export','http://export-excel.com/');
// define('URLLLL','https://timekeeping-services.herokuapp.com/');
// define('HURL','https://timekeeping-services.herokuapp.com/');

define('URLLLL_Authen','http://localhost:3000/');
define('URLLLL_Staff','Staff/');
define('URLLLL_Salary','Salary/');
define('URLLLL_Work','Work/');
define('URLLLL_Export','Export/');
define('URLLLL','TimeKeeping/');

// Time zone
date_default_timezone_set('Asia/Bangkok');

// Load class
include_once PATH_ROOT . '/Core/Route.php';
$router = new Core\Route;
include_once PATH_ROOT . '/Core/Routes.php';
include_once PATH_ROOT . '/Core/Function.php';
include_once PATH_ROOT . '/Controllers/BaseController.php';
$request_url = !empty($_GET['url']) ? '/' . $_GET['url'] : '/';

$method_url = !empty($_SERVER['REQUEST_METHOD']) ? $_SERVER['REQUEST_METHOD'] : 'GET';
session_start();
$router->map($request_url, $method_url);