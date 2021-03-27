<?php
/* Smarty version 3.1.38, created on 2021-03-26 16:36:45
  from 'D:\Project\_datn\user-interface-service\view\Layout\Header.php' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.38',
  'unifunc' => 'content_605dab2ddcd6d3_66267060',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '17b76aff4b310a37ea95467f11e5349582dd41d3' => 
    array (
      0 => 'D:\\Project\\_datn\\user-interface-service\\view\\Layout\\Header.php',
      1 => 1616751385,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_605dab2ddcd6d3_66267060 (Smarty_Internal_Template $_smarty_tpl) {
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
                        <h6 class="pro-user-name mt-0 mb-0">Thi Đình Nguyễn</h6>
                        <span class="pro-user-desc">Giám đốc</span>
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
                            <li class="side-nav-title side-nav-item"><!----><a href="javascript:void(0);" class="side-nav-link mm-collapsed" aria-expanded="false"><i data-v-07452373="" data-name="settings" data-tags="cog,edit,gear,preferences" data-type="settings" class="feather feather--settings"><svg data-v-07452373="" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-settings feather__content"><circle cx="12" cy="12" r="3"></circle><path d="M19.4 15a1.65 1.65 0 0 0 .33 1.82l.06.06a2 2 0 0 1 0 2.83 2 2 0 0 1-2.83 0l-.06-.06a1.65 1.65 0 0 0-1.82-.33 1.65 1.65 0 0 0-1 1.51V21a2 2 0 0 1-2 2 2 2 0 0 1-2-2v-.09A1.65 1.65 0 0 0 9 19.4a1.65 1.65 0 0 0-1.82.33l-.06.06a2 2 0 0 1-2.83 0 2 2 0 0 1 0-2.83l.06-.06a1.65 1.65 0 0 0 .33-1.82 1.65 1.65 0 0 0-1.51-1H3a2 2 0 0 1-2-2 2 2 0 0 1 2-2h.09A1.65 1.65 0 0 0 4.6 9a1.65 1.65 0 0 0-.33-1.82l-.06-.06a2 2 0 0 1 0-2.83 2 2 0 0 1 2.83 0l.06.06a1.65 1.65 0 0 0 1.82.33H9a1.65 1.65 0 0 0 1-1.51V3a2 2 0 0 1 2-2 2 2 0 0 1 2 2v.09a1.65 1.65 0 0 0 1 1.51 1.65 1.65 0 0 0 1.82-.33l.06-.06a2 2 0 0 1 2.83 0 2 2 0 0 1 0 2.83l-.06.06a1.65 1.65 0 0 0-.33 1.82V9a1.65 1.65 0 0 0 1.51 1H21a2 2 0 0 1 2 2 2 2 0 0 1-2 2h-.09a1.65 1.65 0 0 0-1.51 1z"></path></svg></i><span>Quản lý danh mục</span><span class="menu-arrow"></span></a><!----><ul class="nav-second-level mm-collapse" style=""><li class=""><!----><a href="/danh-mục/bo-phan" class="side-nav-link-ref">Bộ phận</a><!----></li><li class=""><!----><a href="/danh-mục/vi-tri-cong-viec" class="side-nav-link-ref">Vị trí công việc</a><!----></li><li class=""><!----><a href="/danh-mục/hinh-thuc-dang-tin-tuyen-dung" class="side-nav-link-ref">Hình thức đăng tuyển</a><!----></li><li class=""><!----><a href="/danh-mục/trang-thai-ke-hoach-tuyen-dung" class="side-nav-link-ref">Trạng thái kế hoạch tuyển dụng </a><!----></li><li class=""><!----><a href="/danh-mục/trang-thai-ho-so-tuyen-dung" class="side-nav-link-ref">Trạng thái hồ sơ tuyển dụng </a><!----></li><li class=""><!----><a href="/danh-mục/trang-thai-quyet-dinh-tuyen-dung" class="side-nav-link-ref">Trạng thái quyết định tuyển dụng </a><!----></li><li class=""><!----><a href="/danh-mục/loai-hop-dong" class="side-nav-link-ref">Loại hợp đồng </a><!----></li></ul></li>
                            <li class="side-nav-title side-nav-item"><!----><a href="javascript:void(0);" class="side-nav-link" aria-expanded="false"><i data-v-07452373="" data-name="settings" data-tags="cog,edit,gear,preferences" data-type="settings" class="feather feather--settings"><svg data-v-07452373="" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-settings feather__content"><circle cx="12" cy="12" r="3"></circle><path d="M19.4 15a1.65 1.65 0 0 0 .33 1.82l.06.06a2 2 0 0 1 0 2.83 2 2 0 0 1-2.83 0l-.06-.06a1.65 1.65 0 0 0-1.82-.33 1.65 1.65 0 0 0-1 1.51V21a2 2 0 0 1-2 2 2 2 0 0 1-2-2v-.09A1.65 1.65 0 0 0 9 19.4a1.65 1.65 0 0 0-1.82.33l-.06.06a2 2 0 0 1-2.83 0 2 2 0 0 1 0-2.83l.06-.06a1.65 1.65 0 0 0 .33-1.82 1.65 1.65 0 0 0-1.51-1H3a2 2 0 0 1-2-2 2 2 0 0 1 2-2h.09A1.65 1.65 0 0 0 4.6 9a1.65 1.65 0 0 0-.33-1.82l-.06-.06a2 2 0 0 1 0-2.83 2 2 0 0 1 2.83 0l.06.06a1.65 1.65 0 0 0 1.82.33H9a1.65 1.65 0 0 0 1-1.51V3a2 2 0 0 1 2-2 2 2 0 0 1 2 2v.09a1.65 1.65 0 0 0 1 1.51 1.65 1.65 0 0 0 1.82-.33l.06-.06a2 2 0 0 1 2.83 0 2 2 0 0 1 0 2.83l-.06.06a1.65 1.65 0 0 0-.33 1.82V9a1.65 1.65 0 0 0 1.51 1H21a2 2 0 0 1 2 2 2 2 0 0 1-2 2h-.09a1.65 1.65 0 0 0-1.51 1z"></path></svg></i><span>Quản lý hệ thống</span><span class="menu-arrow"></span></a><!----><ul class="nav-second-level mm-collapse"><li class=""><!----><a href="/he-thong/cap-tai-khoan" class="side-nav-link-ref">Cấp tài khoản</a><!----></li><li class=""><!----><a href="/he-thong/cap-nhat-tai-khoan" class="side-nav-link-ref">Cập nhật tài khoản</a><!----></li><li class=""><!----><a href="/he-thong/doi-mat-khau" class="side-nav-link-ref">Đổi mật khẩu</a><!----></li></ul></li><li class="side-nav-title side-nav-item"><!----><a href="javascript:void(0);" class="side-nav-link" aria-expanded="false"><i data-v-07452373="" data-name="star" data-tags="bookmark,favorite,like" data-type="star" class="feather feather--star"><svg data-v-07452373="" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-star feather__content"><polygon points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"></polygon></svg></i><span>Quản lý tuyển dụng</span><span class="menu-arrow"></span></a><!----><ul class="nav-second-level mm-collapse"><li class=""><!----><a href="/tuyen-dung/lap-ke-hoach" class="side-nav-link-ref">Lập KH tuyển dụng</a><!----></li><li class=""><!----><!----><!----></li><li class=""><!----><a href="/tuyen-dung/duyet-ke-hoach" class="side-nav-link-ref">Duyệt KH tuyển dụng</a><!----></li><li class=""><!----><a href="/tuyen-dung/dang-tin" class="side-nav-link-ref">Đăng tin tuyển dụng</a><!----></li><li class=""><!----><a href="/tuyen-dung/tong-hop-ho-so" class="side-nav-link-ref">Tổng hợp hồ sơ</a><!----></li><li class=""><!----><!----><!----></li><li class=""><!----><a href="/tuyen-dung/danh-gia-ung-vien" class="side-nav-link-ref">Đ.giá năng lực ứng viên</a><!----></li><li class=""><!----><a href="/tuyen-dung/lap-quyet-dinh-tuyen-dung" class="side-nav-link-ref">Lập QĐ tuyển dụng</a><!----></li><li class=""><!----><!----><!----></li><li class=""><!----><a href="/tuyen-dung/bao-cao" class="side-nav-link-ref">Báo cáo tuyển dụng</a><!----></li><li class=""><!----><a href="/tuyen-dung/thong-ke-ho-so" class="side-nav-link-ref">T.kê hồ sơ tuyển dụng</a><!----></li></ul></li><li class="side-nav-title side-nav-item"><!----><a href="javascript:void(0);" class="side-nav-link" aria-expanded="false"><i data-v-07452373="" data-name="user" data-tags="" data-type="user" class="feather feather--user"><svg data-v-07452373="" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-user feather__content"><path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path><circle cx="12" cy="7" r="4"></circle></svg></i><span>Quản lý nhân viên</span><span class="menu-arrow"></span></a><!----><ul class="nav-second-level mm-collapse"><li class=""><!----><a href="/nhan-vien/ho-so-nhan-vien" class="side-nav-link-ref">Hồ sơ nhân viên</a><!----></li><li class=""><!----><!----><!----></li><li class=""><!----><!----><!----></li><li class=""><!----><a href="/nhan-vien/thuyen-chuyen-phong-ban" class="side-nav-link-ref">Thuyên chuyển phòng ban</a><!----></li><li class=""><!----><a href="/nhan-vien/thang-chuc-giang-chuc" class="side-nav-link-ref">Thăng chức, giáng chức</a><!----></li><li class=""><!----><a href="/nhan-vien/hop-dong-lao-dong" class="side-nav-link-ref">Hợp đồng lao động</a><!----></li><li class=""><!----><a href="/nhan-vien/chung-chi" class="side-nav-link-ref">Chứng chỉ</a><!----></li><li class=""><!----><a href="/nhan-vien/khen-thuong-ky-luat" class="side-nav-link-ref">Khen thưởng, kỷ luật</a><!----></li><li class=""><!----><a href="/nhan-vien/bao-cao-nhan-su" class="side-nav-link-ref">Báo cáo nhân sự</a><!----></li></ul></li>
                            <li class="">
                                <a href="javascript: void(0);" aria-expanded="false" class="mm-collapsed">
                                    <i data-feather="calendar"></i>
                                    <span> Quản lý chấm công </span>
                                    <span class="menu-arrow"></span>
                                </a>
                                <ul class="nav-second-level mm-collapse" aria-expanded="false">
                                    <li class="mm-active">
                                        <a href="thoi-gian-lam-viec">Thiết lập thời gian làm việc</a>
                                    </li>
                                    <li>
                                        <a href="ngay-nghi">Thời gian nghỉ lễ, tết</a>
                                    </li>
                                    <li>
                                        <a href="don-xin-nghi-phep">DS đơn xin nghỉ phép</a>
                                    </li>
                                    <li>
                                        <a href="lap-don-xin-nghi-phep">Lập đơn xin nghỉ phép</a>
                                    </li>
                                    <li>
                                        <a href="lap-bang-cham-cong">Lập bảng chấm công</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="">
                                <a href="javascript: void(0);" aria-expanded="false" class="mm-collapsed">
                                    <i data-feather="calendar"></i>
                                    <span>Lương thưởng & phúc lợi </span>
                                    <span class="menu-arrow"></span>
                                </a>
                                <ul class="nav-second-level mm-collapse" aria-expanded="false">
                                    <li class="mm-active">
                                        <a href="luong-co-ban">Lương cơ bản</a>
                                    </li>
                                    <li class="mm-active">
                                        <a href="muc-thuong-phat">Thiết lập mức thưởng, phạt</a>
                                    </li>
                                    <li>
                                        <a href="tinh-luong">Tính lương</a>
                                    </li>
                                    <li>
                                        <a href="thong-ke-luong">Thống kê bảng lương</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="">
                                <a href="javascript: void(0);" aria-expanded="false" class="mm-collapsed">
                                    <i data-feather="calendar"></i>
                                    <span>Quản lý công việc </span>
                                    <span class="menu-arrow"></span>
                                </a>
                                <ul class="nav-second-level mm-collapse" aria-expanded="false">
                                    <li class="mm-active">
                                        <a href="phan-cong-cong-viec">Lương cơ bản</a>
                                    </li>
                                </ul>
                            </li>
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
