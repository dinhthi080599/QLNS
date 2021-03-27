<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
define('PATH_ROOT', __DIR__);
define('URLLLL','https://localhost:5001/');
define('URLLLL_Salary','http://localhost:4900/');
define('HURL','https://timekeeping-services.herokuapp.com/');

// Load class
include_once PATH_ROOT . '/Core/Route.php';
$router = new Core\Route;
include_once PATH_ROOT . '/Core/Function.php';
$request_url = !empty($_GET['url']) ? '/' . $_GET['url'] : '/';

$method_url = !empty($_SERVER['REQUEST_METHOD']) ? $_SERVER['REQUEST_METHOD'] : 'GET';
session_start();
$router->map($request_url, $method_url);


require 'vendor/autoload.php';

$_TKTH = $_POST['thong-ke-tong-hop'];
$_TKTH = json_decode($_TKTH, true);
$data = $_TKTH['data'];
$format['font-weight'] = $_TKTH['font-weight']; 
$format['column-size'] = $_TKTH['column-size'];
$format['font-size'] = $_TKTH['font-size'];
$format['cell-merge'] = $_TKTH['cell-merge'];
$format['horizontal-center'] = $_TKTH['horizontal-center'];
$format['cell-border'] = $_TKTH['cell-border'];
$file_name = $_TKTH['file-name'];


use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

$styleArray = array(
    'borders' => array(
        'allBorders' => array(
            'borderStyle' => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN,
            'color' => array('argb' => '0000'),
        ),
    ),
);

$spreadsheet = new Spreadsheet();
$sheet = $spreadsheet->getActiveSheet();
$spreadsheet->getDefaultStyle()->getFont()->setName('Times new Roman');
// Render data
foreach ($data as $key => $value) {
    $spreadsheet->getActiveSheet()->setCellValue($key, $value);
}
// Định dạng
// Merge
foreach ($format['cell-merge'] as $k => $v) {
    $spreadsheet->getActiveSheet()->mergeCells("$k:$v");
}
// Kích thước column
foreach ($format['column-size'] as $k => $v) {
    $spreadsheet->getActiveSheet()->getColumnDimension($k)->setAutoSize(false);
    $spreadsheet->getActiveSheet()->getColumnDimension($k)->setWidth($v);
}
// Center Horizontal
foreach ($format['horizontal-center'] as $v) {
    $spreadsheet->getActiveSheet()->getStyle($v)->getAlignment()->setHorizontal('center');
}
// Font weight bold
foreach ($format['font-weight'] as $k => $v) {
    $spreadsheet->getActiveSheet()->getStyle($v)->getFont()->setBold( true );
}
// Font size
foreach ($format['font-size'] as $k => $v) {
    $spreadsheet->getActiveSheet()->getStyle($k)->getFont()->setSize($v);
}
// Border
foreach ($format['cell-border'] as $k => $v) {
    $spreadsheet->getActiveSheet()->getStyle("$k:$v")->applyFromArray($styleArray);
}
// Kết thúc định dạng
$spreadsheet->getActiveSheet();
// Export
$writer = new Xlsx($spreadsheet);
ob_end_clean();
header('Content-type: application/vnd.ms-excel');
header('Content-Disposition: attachment; filename="' . $file_name . '"');
$writer->save('php://output');