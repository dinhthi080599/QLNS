<?php

namespace Controllers;

class Home extends BaseController
{
    public function index()
    {
        $data = [];
        $action = post('action');
        if ($action == 'login') {
            $this->login();
        }
        ShowView($data, 'Home');
    }
}