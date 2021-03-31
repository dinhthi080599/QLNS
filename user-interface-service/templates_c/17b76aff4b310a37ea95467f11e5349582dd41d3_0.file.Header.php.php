<?php
/* Smarty version 3.1.38, created on 2021-03-31 19:23:02
  from 'D:\Project\_datn\user-interface-service\view\Layout\Header.php' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.38',
  'unifunc' => 'content_606469a63abf45_12747766',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '17b76aff4b310a37ea95467f11e5349582dd41d3' => 
    array (
      0 => 'D:\\Project\\_datn\\user-interface-service\\view\\Layout\\Header.php',
      1 => 1617193379,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_606469a63abf45_12747766 (Smarty_Internal_Template $_smarty_tpl) {
?><!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>Locifa</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description" />
        <meta content="Coderthemes" name="author" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />

        <link rel="shortcut icon" href="assets/images/favicon.ico">
        <link href="/assets/libs/flatpickr/flatpickr.min.css" rel="stylesheet" type="text/css" />
        <link href="/assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="/assets/css/icons.min.css" rel="stylesheet" type="text/css" />
        <link href="/assets/css/app.min.css" rel="stylesheet" type="text/css" />
        <link href="/assets/css/custom/custom.css" rel="stylesheet" type="text/css" />

        <?php echo '<script'; ?>
 src="assets/js/vendor.min.js"><?php echo '</script'; ?>
>
        <?php echo '<script'; ?>
 src="assets/libs/moment/moment.min.js"><?php echo '</script'; ?>
>
        <?php echo '<script'; ?>
 src="assets/libs/flatpickr/flatpickr.min.js"><?php echo '</script'; ?>
>
        <?php echo '<script'; ?>
 src="assets/js/sweetalert.min.js"><?php echo '</script'; ?>
>
    </head>
    
    <body>
        <?php echo '<script'; ?>
>
        const Toast = Swal.mixin({
            toast: true,
            position: 'top-end',
            showConfirmButton: false,
            timer: 3000,
            timerProgressBar: true,
            didOpen: (toast) => {
                toast.addEventListener('mouseenter', Swal.stopTimer)
                toast.addEventListener('mouseleave', Swal.resumeTimer)
            }
        })
        <?php echo '</script'; ?>
>
        <!-- Begin page -->
        <div id="wrapper">
            <!-- Topbar Start -->
            <div class="navbar navbar-expand flex-column flex-md-row navbar-custom">
                <div class="container-fluid">
                    <!-- LOGO -->
                    <a href="index.html" class="navbar-brand mr-0 mr-md-2 logo">
                        <span class="logo-lg">
                            <img src="assets/images/logo.png" alt="" height="24" />
                            <span class="d-inline h5 ml-1 text-logo">Locifa</span>
                        </span>
                        <span class="logo-sm">
                            <img src="assets/images/logo.png" alt="" height="24">
                        </span>
                    </a>

                    <ul class="navbar-nav bd-navbar-nav flex-row list-unstyled menu-left mb-0">
                        <li class="">
                            <button class="button-menu-mobile open-left disable-btn">
                                <i data-feather="menu" class="menu-icon"></i>
                                <i data-feather="x" class="close-icon"></i>
                            </button>
                        </li>
                    </ul>
                    <ul class="navbar-nav flex-row ml-auto d-flex list-unstyled topnav-menu float-right mb-0">
                        <li class="dropdown notification-list" data-toggle="tooltip" data-placement="left" title="" data-original-title="Logout">
                            <a href="/?logout=1" class="nav-link right-bar-toggle">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-log-out"><path d="M9 21H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h4"></path><polyline points="16 17 21 12 16 7"></polyline><line x1="21" y1="12" x2="9" y2="12"></line></svg>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
            <!-- end Topbar -->

            <!-- ========== Left Sidebar Start ========== -->
            <div class="left-side-menu">
                <div class="media user-profile mt-2 mb-2">
                    <img src="assets/images/users/avatar-7.jpg" class="avatar-sm rounded-circle mr-2" alt="Shreyu" />
                    <img src="assets/images/users/avatar-7.jpg" class="avatar-xs rounded-circle mr-2" alt="Shreyu" />

                    <div class="media-body">
                        <h6 class="pro-user-name mt-0 mb-0"><?php echo $_smarty_tpl->tpl_vars['ten_nv']->value;?>
</h6>
                        <span class="pro-user-desc"><?php echo $_smarty_tpl->tpl_vars['quyen']->value;?>
</span>
                    </div>
                    <div class="dropdown align-self-center profile-dropdown-menu">
                        <a class="dropdown-toggle mr-0" data-toggle="dropdown" href="#" role="button" aria-haspopup="false"
                            aria-expanded="false">
                            <span data-feather="chevron-down"></span>
                        </a>
                        <div class="dropdown-menu profile-dropdown">
                            <a href="pages-profile.html" class="dropdown-item notify-item">
                                <i data-feather="user" class="icon-dual icon-xs mr-2"></i>
                                <span>My Account</span>
                            </a>

                            <a href="javascript:void(0);" class="dropdown-item notify-item">
                                <i data-feather="settings" class="icon-dual icon-xs mr-2"></i>
                                <span>Settings</span>
                            </a>

                            <a href="javascript:void(0);" class="dropdown-item notify-item">
                                <i data-feather="help-circle" class="icon-dual icon-xs mr-2"></i>
                                <span>Support</span>
                            </a>

                            <a href="pages-lock-screen.html" class="dropdown-item notify-item">
                                <i data-feather="lock" class="icon-dual icon-xs mr-2"></i>
                                <span>Lock Screen</span>
                            </a>

                            <div class="dropdown-divider"></div>

                            <a href="javascript:void(0);" class="dropdown-item notify-item">
                                <i data-feather="log-out" class="icon-dual icon-xs mr-2"></i>
                                <span>Logout</span>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="sidebar-content">
                    <!--- Sidemenu -->
                    <div id="sidebar-menu" class="slimscroll-menu">
                        <ul class="metismenu" id="menu-bar">
                            <li class="menu-title">Navigation</li>
                            <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['chucnang']->value, 'v', false, 'k');
$_smarty_tpl->tpl_vars['v']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['k']->value => $_smarty_tpl->tpl_vars['v']->value) {
$_smarty_tpl->tpl_vars['v']->do_else = false;
?>
                                <li class="side-nav-title side-nav-item"><!---->
                                    <a href="javascript:void(0);" class="side-nav-link mm-collapsed" aria-expanded="false">
                                        <?php echo $_smarty_tpl->tpl_vars['v']->value['icon'];?>

                                        <span><?php echo $_smarty_tpl->tpl_vars['v']->value['tieude'];?>
</span>
                                        <span class="menu-arrow"></span>
                                    </a>
                                    <ul class="nav-second-level mm-collapse" style="">
                                        <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['v']->value['chucnang'], '_v', false, '_k');
$_smarty_tpl->tpl_vars['_v']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['_k']->value => $_smarty_tpl->tpl_vars['_v']->value) {
$_smarty_tpl->tpl_vars['_v']->do_else = false;
?>
                                        <li class="">
                                            <a href="<?php echo $_smarty_tpl->tpl_vars['_k']->value;?>
" class="side-nav-link-ref"><?php echo $_smarty_tpl->tpl_vars['_v']->value;?>
</a>
                                        </li>
                                        <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                                    </ul>
                                </li>
                            <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                        </ul>
                    </div>
                    <!-- End Sidebar -->

                    <div class="clearfix"></div>
                </div>
                <!-- Sidebar -left -->

            </div>
            <!-- Left Sidebar End -->

            <!-- ============================================================== -->
            <!-- Start Page Content here -->
            <!-- ============================================================== -->
            <div class="content-page">
                <div class="content">
                    <div class="container-fluid"><?php }
}
