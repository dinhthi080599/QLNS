<?php
define('PATH_ROOT', __DIR__);
define('URLLLL','https://localhost:5001/');
define('URLLLL_Salary','http://localhost:4900/');
define('URLLLL_Work','http://workflow_management.com/');
define('HURL','https://timekeeping-services.herokuapp.com/');

// Time zone
date_default_timezone_set('Asia/Bangkok');

// Load class
include_once PATH_ROOT . '/Core/Route.php';
$router = new Core\Route;
include_once PATH_ROOT . '/Core/Routes.php';
include_once PATH_ROOT . '/Core/Function.php';
$request_url = !empty($_GET['url']) ? '/' . $_GET['url'] : '/';

$method_url = !empty($_SERVER['REQUEST_METHOD']) ? $_SERVER['REQUEST_METHOD'] : 'GET';
session_start();
$router->map($request_url, $method_url);