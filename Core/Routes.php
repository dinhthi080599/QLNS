<?php
// action là callback
$router->get('/', 'Timekeeping');
$router->post('/', 'Timekeeping');
$router->get('/DayOff', 'DayOff');
$router->post('/DayOff', 'DayOff');
