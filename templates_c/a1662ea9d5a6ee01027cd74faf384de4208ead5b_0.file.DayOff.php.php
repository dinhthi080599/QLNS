<?php
/* Smarty version 3.1.38, created on 2021-03-01 08:35:36
  from 'D:\Project\Graduation_Thesis\view\DayOff.php' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.38',
  'unifunc' => 'content_603c99489af300_94375683',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'a1662ea9d5a6ee01027cd74faf384de4208ead5b' => 
    array (
      0 => 'D:\\Project\\Graduation_Thesis\\view\\DayOff.php',
      1 => 1614584130,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_603c99489af300_94375683 (Smarty_Internal_Template $_smarty_tpl) {
?><style>
    .media:hover {
        background-color: #c6d0ff;
        cursor: pointer;
    }
    .slimscroll {
        overflow: auto;
            -webkit-touch-callout: none; /* iOS Safari */
                -webkit-user-select: none; /* Safari */
                -khtml-user-select: none; /* Konqueror HTML */
                -moz-user-select: none; /* Old versions of Firefox */
                    -ms-user-select: none; /* Internet Explorer/Edge */
                        user-select: none; /* Non-prefixed version, currently
                                            supported by Chrome, Edge, Opera and Firefox */
    }
    /* width */
    .slimscroll::-webkit-scrollbar {
        width: 0px;
    }
    .f-left {
        float: left;
    }
</style>
<div class="row page-title align-items-center">
    <div class="col-sm-12 col-xl-12">
        <div class="app-page-title">
            <div class="page-title-wrapper">
                <div class="page-title-heading">
                    <div class="page-title-icon">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-clock"><circle cx="12" cy="12" r="10"></circle><polyline points="12 6 12 12 16 14"></polyline></svg>
                    </div>
                    <div>Thiết lập thời gian nghỉ lễ, tết
                        <div class="page-title-subheading">Thiết lập thời gian làm việc cho từng bộ phận theo các ngày trong tuần.</div>
                    </div>
                </div>  
            </div>
        </div>
    </div>
</div>

<!-- content -->
<!-- stats + charts -->
<div class="row row-flex">
    <div class="col-xl-12">
        <div class="card">
            <div class="card-body">
                <div class="card-body">
                    <!-- cta -->
                    <div class="row">
                        <div class="col-sm-2">
                            <button class="btn btn-primary" data-toggle="modal" data-target="#add-new">
                                <i class='uil uil-plus mr-1'></i>
                                Thêm mới
                            </button>
                        </div>
                        <div class="col-sm-4">
                            <form action="" method="GET">
                                <select class="form-control nam" name="nam" onchange="this.form.submit();">
                                    <option value="0">Tất cả năm</option>
                                    <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['year_arr']->value, 'selected', false, 'year');
$_smarty_tpl->tpl_vars['selected']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['year']->value => $_smarty_tpl->tpl_vars['selected']->value) {
$_smarty_tpl->tpl_vars['selected']->do_else = false;
?>
                                    <option value="<?php echo $_smarty_tpl->tpl_vars['year']->value;?>
" <?php echo $_smarty_tpl->tpl_vars['selected']->value;?>
><?php echo $_smarty_tpl->tpl_vars['year']->value;?>
</option>
                                    <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                                </select>
                            </form>
                        </div>
                        <div class="col-sm-6">
                            <div class="float-sm-right mt-3 mt-sm-0">
                                
                                <div class="task-search d-inline-block mb-3 mb-sm-0 mr-sm-3">
                                    <form>
                                        <div class="input-group">
                                            <input type="text" class="form-control search-input"
                                                placeholder="Tìm kiếm..." />
                                            <span class="uil uil-search icon-search"></span>
                                            <div class="input-group-append">
                                                <button class="btn btn-soft-primary" type="button">
                                                    <i class='uil uil-file-search-alt'></i>
                                                </button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                                <div class="dropdown d-inline-block">
                                    <button class="btn btn-secondary dropdown-toggle" type="button"
                                        data-toggle="dropdown" aria-haspopup="true"
                                        aria-expanded="false">
                                        <i class='uil uil-sort-amount-down'></i>
                                    </button>
                                    <div class="dropdown-menu dropdown-menu-right">
                                        <a class="dropdown-item" href="#">Hiển thị tất cả</a>
                                        <a class="dropdown-item" href="#">Hiển thị chưa qua</a>
                                        <a class="dropdown-item" href="#">Thời gian tăng dần</a>
                                        <a class="dropdown-item" href="#">Thời gian giảm dần</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row mt-4">
                        <div class="col">
                            <a class="text-dark" data-toggle="collapse" href="#chuaqua"
                                aria-expanded="false" aria-controls="chuaqua">
                                <h5 class="mb-0"><i class='uil uil-angle-down font-size-18'>
                                    </i> Chưa qua
                                    <span class="text-muted font-size-14">(<?php echo sizeof($_smarty_tpl->tpl_vars['dayOffList']->value['chuaqua']);?>
)</span>
                                </h5>
                            </a>
                            <div class="collapse show" id="chuaqua">
                                <div class="card mb-0 shadow-none">
                                    <div class="card-body pb-0">
                                        <?php if ((sizeof($_smarty_tpl->tpl_vars['dayOffList']->value['chuaqua'])) == 0) {?>
                                        <div class="row justify-content-sm-between border-bottom">
                                            <div class="col-lg-6 mb-2 mb-lg-0">
                                                <div class="custom-control custom-checkbox">
                                                    <label class="control-label">
                                                        Không có dữ liệu
                                                    </label>
                                                </div> <!-- end checkbox -->
                                            </div> <!-- end col -->
                                        </div>
                                        <?php } else { ?>
                                        <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['dayOffList']->value['chuaqua'], 'v', false, 'k');
$_smarty_tpl->tpl_vars['v']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['k']->value => $_smarty_tpl->tpl_vars['v']->value) {
$_smarty_tpl->tpl_vars['v']->do_else = false;
?>
                                        <div class="row justify-content-sm-between border-bottom">
                                            <div class="col-lg-6 mb-2 mb-lg-0">
                                                <div class="custom-control custom-checkbox">
                                                    <label class="control-label">
                                                        <?php echo $_smarty_tpl->tpl_vars['v']->value['sTenNgaynghi'];?>

                                                    </label>
                                                </div>
                                            </div>
                                            <div class="col-lg-6">
                                                <div class="d-sm-flex justify-content-between">
                                                    <div class="mt-3 mt-sm-0">
                                                        <ul
                                                            class="list-inline font-13 text-sm-right">
                                                            <li class="list-inline-item pr-1">
                                                                <i class='uil uil-schedule font-16 mr-1'></i>
                                                            </li>
                                                            <li class="list-inline-item pr-1">
                                                                <?php echo formatDate($_smarty_tpl->tpl_vars['v']->value['dNgayBatdau']);?>
 
                                                                <?php if ($_smarty_tpl->tpl_vars['v']->value['dNgayBatdau'] != $_smarty_tpl->tpl_vars['v']->value['dNgayKethuc']) {?>
                                                                     đến <?php echo formatDate($_smarty_tpl->tpl_vars['v']->value['dNgayKethuc']);?>
 
                                                                <?php }?>
                                                            </li>
                                                            <li class="list-inline-item">
                                                                <span class="badge badge-soft-primary p-2">Tác vụ</span>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                                        <?php }?>
                                    </div> <!-- end card-body-->
                                </div> <!-- end card -->
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <a class="text-dark collapsed" data-toggle="collapse" href="#daqua"
                                aria-expanded="false" aria-controls="daqua">
                                <h5 class="mb-0"><i class='uil uil-angle-down font-size-18'>
                                    </i> Đã qua
                                    <span class="text-muted font-size-14">(<?php echo sizeof($_smarty_tpl->tpl_vars['dayOffList']->value['daqua']);?>
)</span>
                                </h5>
                            </a>
                            <div class="collapse" id="daqua">
                                <div class="card mb-0 shadow-none">
                                    <div class="card-body pb-0">
                                        <?php if ((sizeof($_smarty_tpl->tpl_vars['dayOffList']->value['daqua'])) == 0) {?>
                                        <div class="row justify-content-sm-between border-bottom">
                                            <div class="col-lg-6 mb-2 mb-lg-0">
                                                <div class="custom-control custom-checkbox">
                                                    <label class="control-label">
                                                        Không có dữ liệu
                                                    </label>
                                                </div> <!-- end checkbox -->
                                            </div> <!-- end col -->
                                        </div>
                                        <?php } else { ?>
                                        <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['dayOffList']->value['daqua'], 'v', false, 'k');
$_smarty_tpl->tpl_vars['v']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['k']->value => $_smarty_tpl->tpl_vars['v']->value) {
$_smarty_tpl->tpl_vars['v']->do_else = false;
?>
                                        <div class="row justify-content-sm-between border-bottom">
                                            <div class="col-lg-6 mb-2 mb-lg-0">
                                                <div class="custom-control custom-checkbox">
                                                    <label class="control-label">
                                                        <?php echo $_smarty_tpl->tpl_vars['v']->value['sTenNgaynghi'];?>

                                                    </label>
                                                </div>
                                            </div>
                                            <div class="col-lg-6">
                                                <div class="d-sm-flex justify-content-between">
                                                    <div class="mt-3 mt-sm-0">
                                                        <ul
                                                            class="list-inline font-13 text-sm-right">
                                                            <li class="list-inline-item pr-1">
                                                                <i class='uil uil-schedule font-16 mr-1'></i>
                                                            </li>
                                                            <li class="list-inline-item pr-1">
                                                                <?php echo formatDate($_smarty_tpl->tpl_vars['v']->value['dNgayBatdau']);?>

                                                                <?php if ($_smarty_tpl->tpl_vars['v']->value['dNgayBatdau'] != $_smarty_tpl->tpl_vars['v']->value['dNgayKethuc']) {?>
                                                                     đến <?php echo formatDate($_smarty_tpl->tpl_vars['v']->value['dNgayKethuc']);?>
 
                                                                <?php }?>
                                                            </li>
                                                            <li class="list-inline-item">
                                                                <span class="badge badge-soft-danger p-2">Đã qua</span>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                                        <?php }?>
                                    </div> <!-- end card-body-->
                                </div> <!-- end card -->
                            </div>
                        </div>
                    </div>
                    <!-- end row -->
                </div>
            </div> <!-- end card-body-->
        </div> <!-- end card-->
    </div> <!-- end col-->
</div>
<!-- row -->
        <!-- Add New Event MODAL -->
        <div class="modal fade" id="add-new" tabindex="-1">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header py-3 px-4 border-bottom-0 d-block">
                        <button type="button" class="close" data-dismiss="modal"
                            aria-hidden="true">&times;</button>
                        <h5 class="modal-title" id="modal-title">Thêm thời gian nghỉ lễ, tết</h5>
                    </div>
                    <div class="modal-body p-4">
                        <form action="" method="POST">
                            <div class="row">
                                <div class="col-12">
                                    <div class="row">
                                        <div class="col">    
                                            <div class="form-group">
                                                <label class="control-label">Tên </label>
                                                <input class="form-control" id="tthoigianbatdau" type="text" name="sTenNgaynghi">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-group">
                                        <label class="control-label">Từ ngày</label>
                                        <input class="form-control" id="tthoigianbatdau" type="date" name="dNgayBatdau">
                                        <div class="invalid-feedback">Please provide a valid event name</div>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-group">
                                        <label class="control-label">Đến ngày</label>
                                        <input class="form-control" id="tthoigiankethuc" type="date" name="dNgayKethuc">
                                        <div class="invalid-feedback">Please provide a valid event name</div>
                                    </div>
                                </div>
                            </div>
                            <div class="row mt-2">
                                <div class="col-12 text-right">
                                    <button type="button" class="btn btn-light mr-1" data-dismiss="modal">Đóng</button>
                                    <button type="submit" class="btn btn-success" name="action" value="add-new">Lưu lại</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div> <!-- end modal-content-->
            </div> <!-- end modal dialog-->
        </div>
        <!-- end modal-->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css">
        <?php echo '<script'; ?>
 src="https://code.jquery.com/ui/jquery-ui-git.js"><?php echo '</script'; ?>
>
        <?php echo '<script'; ?>
 src="/js/Timekeeping.js"><?php echo '</script'; ?>
>
        <div class="loader-bg hidden">
            <div class="loader">
            <svg>
                <defs>
                <filter id="goo">
                    <feGaussianBlur in="SourceGraphic" stdDeviation="2" result="blur" />
                    <feColorMatrix in="blur" mode="matrix" values="1 0 0 0 0  0 1 0 0 0  0 0 1 0 0  0 0 0 5 -2" result="gooey" />
                    <feComposite in="SourceGraphic" in2="gooey" operator="atop"/>
                </filter>
                </defs>
            </svg>
            </div>
        </div>
        <style>
        .loader-bg {
            background: #1b2832;
            position: absolute;
            overflow: hidden;
            height: 100%;
            width: 100%;
            left: 0;
            top: 0;
            z-index: 9999;
            opacity: 0.8;
            transition: all 10s linear;
        }
        .hidden {
            display: none;
        }

        .visuallyhidden {
            opacity: 0;
        }
        @-webkit-keyframes loader-spin {
            0% {
                transform: rotate(0deg);
            }
            100% {
                transform: rotate(360deg);
            }
        }

        @keyframes loader-spin {
            0% {
                transform: rotate(0deg);
            }
            100% {
                transform: rotate(360deg);
            }
        }
        .loader {
            position: absolute;
            margin: -18px 0 0 -18px;
            border: 3.6px solid #ff974d;
            box-sizing: border-box;
            overflow: hidden;
            width: 36px;
            height: 36px;
            left: 50%;
            top: 50%;
            animation: loader-spin 2s linear infinite reverse;
            filter: url(#goo);
            box-shadow: 0 0 0 1px #ff974d inset;
        }
        .loader:before {
            content: "";
            position: absolute;
            -webkit-animation: loader-spin 2s cubic-bezier(0.59, 0.25, 0.4, 0.69) infinite;
                    animation: loader-spin 2s cubic-bezier(0.59, 0.25, 0.4, 0.69) infinite;
            background: #ff974d;
            transform-origin: top center;
            border-radius: 50%;
            width: 150%;
            height: 150%;
            top: 50%;
            left: -12.5%;
        }
</style><?php }
}
