<?php
/* Smarty version 3.1.38, created on 2021-03-08 09:10:09
  from 'D:\Project\Graduation_Thesis\view\Timekeeping.php' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.38',
  'unifunc' => 'content_6045dbe19d20c1_38735693',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'ac4ec1631ec259a3f1841b9149aa609f70f6ad6f' => 
    array (
      0 => 'D:\\Project\\Graduation_Thesis\\view\\Timekeeping.php',
      1 => 1615191007,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_6045dbe19d20c1_38735693 (Smarty_Internal_Template $_smarty_tpl) {
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
</style>
<div class="row page-title align-items-center">
    <div class="col-sm-12 col-xl-12">
        <div class="app-page-title">
            <div class="page-title-wrapper">
                <div class="page-title-heading">
                    <div class="page-title-icon">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-clock"><circle cx="12" cy="12" r="10"></circle><polyline points="12 6 12 12 16 14"></polyline></svg>
                    </div>
                    <div>Thời gian làm việc
                        <div class="page-title-subheading">Thiết lập thời gian làm việc cho từng bộ phận theo các ngày trong tuần.</div>
                    </div>
                </div>  
                <div class="col-sm-8 col-xl-6">
                    <form class="form-inline float-sm-right mt-3 mt-sm-0">
                        <div class="btn-group">
                            <!-- <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="modal" data-target="#ChangeTimeApply">
                            <i class="uil uil-exchange-alt"></i> Cập nhật thời gian áp dụng
                            </button> -->
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- content -->
<!-- stats + charts -->
<div class="row row-flex">
    <div class="col-xl-4">
        <div class="card">
            <div class="card-body">
                <h5 class="card-title header-title border-bottom p-0 pb-3">Bộ phận</h5>
                <div class="slimscroll" style="max-height: 360px;">
                    <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['partList']->value, 'v', false, 'k');
$_smarty_tpl->tpl_vars['v']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['k']->value => $_smarty_tpl->tpl_vars['v']->value) {
$_smarty_tpl->tpl_vars['v']->do_else = false;
?>
                    <!-- stat 1 -->
                    <div class="media px-3 py-4 border-bottom" data-part-id="<?php echo $_smarty_tpl->tpl_vars['v']->value['pK_iBophanID'];?>
">
                        <!-- <div class="media-body">
                            <span class="text-muted font-size-12"><?php echo $_smarty_tpl->tpl_vars['v']->value['sTenBophan'];?>
</span>
                            <?php if ((isset($_smarty_tpl->tpl_vars['NV_PB']->value[$_smarty_tpl->tpl_vars['v']->value['pK_iBophanID']]))) {?>
                            <h4 class="mt-0 mb-1 font-size-18 font-weight-normal"><?php echo $_smarty_tpl->tpl_vars['NV_PB']->value[$_smarty_tpl->tpl_vars['v']->value['pK_iBophanID']];?>
 nhân viên</h4>
                            <?php } else { ?>
                            <h4 class="mt-0 mb-1 font-size-18 font-weight-normal">0 nhân viên</h4>
                            <?php }?>
                        </div> -->
                        <div class="media-body">
                            <?php if ((isset($_smarty_tpl->tpl_vars['NV_PB']->value[$_smarty_tpl->tpl_vars['v']->value['pK_iBophanID']]))) {?>
                            <span class="text-muted font-size-12"><?php echo $_smarty_tpl->tpl_vars['NV_PB']->value[$_smarty_tpl->tpl_vars['v']->value['pK_iBophanID']];?>
 nhân viên</span>
                            <?php } else { ?>
                            <span class="text-muted font-size-12">0 nhân viên</span>
                            <?php }?>
                            <h4 class="mt-0 mb-1 font-size-18 font-weight-normal PartName"><?php echo $_smarty_tpl->tpl_vars['v']->value['sTenBophan'];?>
</h4>
                        </div>
                        <i data-feather="users" class="align-self-center icon-dual icon-lg"></i>
                    </div>
                    <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                </div>
            </div>
        </div>
    </div>

    <div class="col-xl-8">
        <div class="card">
            <div class="card-body">
                <label href="" class="float-right">
                    <!-- <p class="sub-header ">Từ: 01/28/2021 [- đến: 08/05/2222]</p> -->
                </label>
                <h5 class="card-title mt-0 pb-0 header-title TitleTable">Thời gian làm việc bộ phận: </h5>
                <input type="hidden" name="fk_ibophanid" id="fk_ibophanid" value="1">
                <div class="table-responsive">
                    <table class="table table-dark mb-0 table-bordered time-working">
                        <thead>
                            <tr>
                                <th class="text-center"></th>
                                <th class="text-center" width="30%">Sáng</th>
                                <th class="text-center" width="30%">Chiều</th>
                                <th class="text-center" width="30%">Tối</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php if (sizeof($_smarty_tpl->tpl_vars['timeWorkingList']->value) == 0) {?>
                            <tr>
                                <td class="text-center" colspan="100%">Chọn bộ phận</td>
                            </tr>
                            <?php }?>
                        </tbody>
                    </table>
                </div>
                <?php if (sizeof($_smarty_tpl->tpl_vars['timeWorkingList']->value) < 7) {?>
                <div class="row mt-2">
                    <div class="col-12 text-right">
                        <button type="button" class="btn btn-primary" id="btn-save-event" data-toggle="modal" data-target="#time-working-modal">
                            Thêm
                        </button>
                    </div>
                </div>
                <?php }?>
            </div> <!-- end card-body-->
        </div> <!-- end card-->
    </div> <!-- end col-->
</div>
<!-- row -->
        <!-- Add New Event MODAL -->
        <div class="modal fade" id="time-working-modal" tabindex="-1">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header py-3 px-4 border-bottom-0 d-block">
                        <button type="button" class="close" data-dismiss="modal"
                            aria-hidden="true">&times;</button>
                        <h5 class="modal-title" id="modal-title">Thời gian làm việc</h5>
                    </div>
                    <div class="modal-body p-4">
                        <form class="needs-validation" name="event-form" id="form-event" novalidate>
                            <div class="row">
                                <div class="col-12"> 
                                    <div class="custom-control custom-switch mb-2">
                                        <input type="checkbox" class="custom-control-input" id="working" checked  data-off="Nghỉ" data-on="Làm việc">
                                        <label class="custom-control-label no-select" for="working" id="label-working">
                                            Làm việc
                                        </label>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="row">
                                        <div class="col-6">
                                            <div class="form-group">
                                                <label class="control-label">Thứ</label>
                                                <select name="sngaytrongtuan" id="sngaytrongtuan" class="form-control">
                                                    <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['dm_thu']->value, 'val', false, 'k');
$_smarty_tpl->tpl_vars['val']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['k']->value => $_smarty_tpl->tpl_vars['val']->value) {
$_smarty_tpl->tpl_vars['val']->do_else = false;
?>
                                                    <option value="<?php echo $_smarty_tpl->tpl_vars['k']->value;?>
"><?php echo $_smarty_tpl->tpl_vars['val']->value;?>
</option>
                                                    <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                                                </select>
                                                <div class="invalid-feedback">Please provide a valid event name</div>
                                            </div>
                                        </div>
                                        <div class="col-6">    
                                            <div class="form-group">
                                                <label class="control-label">Ca</label>
                                                <select name="ca" id="ca" class="form-control">
                                                    <option value="0">Sáng</option>
                                                    <option value="1">Chiều</option>
                                                    <option value="2">Tối</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-group">
                                        <label class="control-label">Bắt đầu</label>
                                        <input class="form-control" id="tthoigianbatdau" type="time" name="tthoigianbatdau">
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-group">
                                        <label class="control-label">Kết thúc</label>
                                        <input class="form-control" id="tthoigiankethuc" type="time" name="tthoigiankethuc">
                                    </div>
                                </div>
                            </div>
                            <div class="row mt-2">
                                <div class="col-12 text-right">
                                    <button type="button" class="btn btn-light mr-1" data-dismiss="modal">Đóng</button>
                                    <button type="button" class="btn btn-success" id="btn-save">Lưu lại</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div> <!-- end modal-content-->
            </div> <!-- end modal dialog-->
        </div>
        <!-- end modal-->
        <!-- Add Change Time Apply -->
        <div class="modal fade" id="ChangeTimeApply" tabindex="-1">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header py-3 px-4 border-bottom-0 d-block">
                        <button type="button" class="close" data-dismiss="modal"
                            aria-hidden="true">&times;</button>
                        <h5 class="modal-title" id="modal-title">Thay đổi thời gian áp dụng</h5>
                    </div>
                    <div class="modal-body p-4">
                        <form action="" method="POST">
                            <div class="row">
                                <div class="col-12">
                                    <div class="form-group">
                                        <label class="control-label">Bắt đầu</label>
                                        <input class="form-control" id="StartTime" type="date" name="StartTime">
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-group">
                                        <label class="control-label">Kết thúc</label>
                                        <input class="form-control" id="EndTime" type="date" name="EndTime">
                                    </div>
                                </div>
                            </div>
                            <div class="row mt-2">
                                <div class="col-12 text-right">
                                    <button type="button" class="btn btn-light mr-1" data-dismiss="modal">Đóng</button>
                                    <button type="button" class="btn btn-success" id="SaveChangeTimeApply">Lưu lại</button>
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
