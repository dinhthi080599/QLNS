<?php
// action là callback
$router->get('/thoi-gian-lam-viec', 'Timekeeping');
$router->post('/thoi-gian-lam-viec', 'Timekeeping');
$router->get('/ngay-nghi', 'DayOff');
$router->post('/ngay-nghi', 'DayOff');
$router->get('/don-xin-nghi-phep', 'TakeLeave');
$router->post('/don-xin-nghi-phep', 'TakeLeave');
$router->get('/lap-don-xin-nghi-phep', 'MakeTakeLeave');
$router->post('/lap-don-xin-nghi-phep', 'MakeTakeLeave');
$router->get('/luong-co-ban', 'Salary');
$router->post('/luong-co-ban', 'Salary');
$router->get('/muc-thuong-phat', 'RewardPenance');
$router->post('/muc-thuong-phat', 'RewardPenance');
$router->get('/phan-cong-cong-viec', 'Assignment');
$router->post('/phan-cong-cong-viec', 'Assignment');
$router->get('/lap-bang-cham-cong', 'MakeTimesheets');
$router->post('/lap-bang-cham-cong', 'MakeTimesheets');
$router->get('/tinh-luong', 'Payroll');
$router->post('/tinh-luong', 'Payroll');
