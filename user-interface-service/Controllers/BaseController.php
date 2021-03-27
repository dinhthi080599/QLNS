<?php

namespace Controllers;

class BaseController
{
    function __construct() {
        if (!isset($_SESSION['PK_iTaikhoanID'])) {
            die(header("Location: /"));
        }
    }
}