<?php
/* Smarty version 3.1.38, created on 2021-03-31 21:52:44
  from 'D:\Project\_datn\user-interface-service\view\Login.php' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.38',
  'unifunc' => 'content_60648cbcccc9a8_27344357',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'e9167d251e68f9f1daff1316e30583b723a7d7c2' => 
    array (
      0 => 'D:\\Project\\_datn\\user-interface-service\\view\\Login.php',
      1 => 1617202362,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_60648cbcccc9a8_27344357 (Smarty_Internal_Template $_smarty_tpl) {
?><!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>Locifa - Công ty cổ phần dược phẩm</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description" />
        <meta content="Coderthemes" name="author" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <link rel="shortcut icon" href="assets/images/favicon.ico">
        <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/icons.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/app.min.css" rel="stylesheet" type="text/css" />
    </head>
    <body class="authentication-bg">
        <div class="account-pages my-5">
            <div class="container">
                <div class="row justify-content-center" style="padding-top: 30px;">
                    <div class="col-xl-10">
                        <div class="card">
                            <div class="card-body p-0">
                                <div class="row">
                                    <div class="col-md-6 p-5">
                                        <div class="mx-auto mb-5">
                                            <a href="index.html">
                                                <img src="assets/images/logo.png" alt="" height="24" />
                                                <h3 class="d-inline align-middle ml-1 text-logo">Locifa</h3>
                                            </a>
                                        </div>
                                        <h6 class="h5 mb-0 mt-4">Chào mừng trở lại!</h6>
                                        <p class="text-muted mt-1 mb-4">Nhập thông tin tên đăng nhập và mật khẩu để truy cập trang quản trị.</p>
                                        <form action="" id="authentication-form" method="POST">
                                            <div class="form-group">
                                                <label class="form-control-label">Tên đăng nhập</label>
                                                <div class="input-group input-group-merge">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text">
                                                            <i class="icon-dual" data-feather="mail"></i>
                                                        </span>
                                                    </div>
                                                    <input type="text" class="form-control" id="uname" name="uname" placeholder="Locifa">
                                                </div>
                                            </div>
                                            <div class="form-group mt-4">
                                                <label class="form-control-label">Mật khẩu</label>
                                                <a href="" tabindex="-1" class="float-right text-muted text-unline-dashed ml-1">Quên mật khẩu?</a>
                                                <div class="input-group input-group-merge">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text">
                                                            <i class="icon-dual" data-feather="lock"></i>
                                                        </span>
                                                    </div>
                                                    <input type="password" class="form-control" id="pass" name="pass" placeholder=".....">
                                                </div>
                                            </div>
                                            <div class="form-group mb-4">
                                                <div class="custom-control custom-checkbox">
                                                    <input type="checkbox" class="custom-control-input" id="checkbox-signin" checked>
                                                    <label class="custom-control-label" for="checkbox-signin">Nhớ mật khẩu</label>
                                                </div>
                                            </div>
                                            <div class="form-group mb-0 text-center">
                                                <button class="btn btn-primary btn-block" type="submit" name="action" value="login">Đăng nhập</button>
                                            </div>
                                        </form>
                                        <!-- <div class="py-3 text-center"><span class="font-size-16 font-weight-bold">Or</span></div> -->
                                        <div class="row">
                                            <div class="col-6">
                                                <!-- <a href="" class="btn btn-white"><i class='uil uil-google icon-google mr-2'></i>With Google</a> -->
                                            </div>
                                            <div class="col-6 text-right">
                                                <!-- <a href="" class="btn btn-white"><i class='uil uil-facebook mr-2 icon-fb'></i>With Facebook</a> -->
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 d-none d-md-inline-block">
                                        <div class="auth-page-sidebar">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col-12 text-center">
                                <!-- <p class="text-muted">Don't have an account? <a href="pages-register.html" class="text-primary font-weight-bold ml-1">Sign Up</a></p> -->
                            </div>
                        </div>
                    </div> 
                </div>
            </div>
        </div>
        <?php echo '<script'; ?>
 src="assets/js/vendor.min.js"><?php echo '</script'; ?>
>
        <?php echo '<script'; ?>
 src="assets/js/app.min.js"><?php echo '</script'; ?>
>
        <style>
            .auth-page-sidebar{
                background-image: url('assets/images/logo11.png');
            }
        </style>
        <?php echo '<script'; ?>
 src="assets/js/sweetalert.min.js"><?php echo '</script'; ?>
>
        <?php $_smarty_tpl->_assignInScope('mes', getMes());?>
        <?php if ($_smarty_tpl->tpl_vars['mes']->value != null) {?>
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
                Toast.fire({
                    icon: '<?php echo $_smarty_tpl->tpl_vars['mes']->value['type'];?>
',
                    title: '<?php echo $_smarty_tpl->tpl_vars['mes']->value['body'];?>
'
                })  
            <?php echo '</script'; ?>
>
        <?php }?>
    </body>
</html><?php }
}
