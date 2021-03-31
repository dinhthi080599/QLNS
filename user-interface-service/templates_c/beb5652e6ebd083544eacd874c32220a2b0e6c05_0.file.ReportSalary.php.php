<?php
/* Smarty version 3.1.38, created on 2021-03-29 10:44:28
  from 'D:\Project\_datn\user-interface-service\view\ReportSalary.php' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.38',
  'unifunc' => 'content_60614d1c764cb8_84736690',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'beb5652e6ebd083544eacd874c32220a2b0e6c05' => 
    array (
      0 => 'D:\\Project\\_datn\\user-interface-service\\view\\ReportSalary.php',
      1 => 1616989466,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_60614d1c764cb8_84736690 (Smarty_Internal_Template $_smarty_tpl) {
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
                    <div>Thống kê bảng lương
                        <div class="page-title-subheading">Thống kê bảng lương</div>
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
                    <!-- <form action="" method=""> -->
                        <div class="row">
                            <div class="col-sm-3">
                                <label for="nam">Thời gian</label>
                                <select class="form-control thongke" id="nam" name="nam">
                                    <option value="">Tất cả</option>
                                    <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['year_arr']->value, 'year', false, 'k');
$_smarty_tpl->tpl_vars['year']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['k']->value => $_smarty_tpl->tpl_vars['year']->value) {
$_smarty_tpl->tpl_vars['year']->do_else = false;
?>
                                    <option value="<?php echo $_smarty_tpl->tpl_vars['k']->value;?>
" <?php echo $_smarty_tpl->tpl_vars['year']->value;?>
>Năm <?php echo $_smarty_tpl->tpl_vars['k']->value;?>
</option>
                                    <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                                </select>
                            </div>
                            <div class="col-sm-3">
                                <label for="thang">Tháng</label>
                                <select class="form-control thongke" id="thang" name="thang">
                                    <option value="">Tất cả</option>
                                    <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['month_arr']->value, 'month', false, 'k');
$_smarty_tpl->tpl_vars['month']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['k']->value => $_smarty_tpl->tpl_vars['month']->value) {
$_smarty_tpl->tpl_vars['month']->do_else = false;
?>
                                    <option value="<?php echo $_smarty_tpl->tpl_vars['k']->value;?>
" <?php echo $_smarty_tpl->tpl_vars['month']->value;?>
>Tháng <?php echo $_smarty_tpl->tpl_vars['k']->value;?>
</option>
                                    <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                                </select>
                            </div>
                            <div class="col-sm-4">
                                <label for="bophan">Bộ phận</label>
                                <select class="form-control thongke" id="bophan" name="bophan">
                                    <option value="">Tất cả</option>
                                    <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['PartList']->value, 'Part', false, 'k');
$_smarty_tpl->tpl_vars['Part']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['k']->value => $_smarty_tpl->tpl_vars['Part']->value) {
$_smarty_tpl->tpl_vars['Part']->do_else = false;
?>
                                    <?php if ($_smarty_tpl->tpl_vars['Part']->value['pK_iBophanID'] == $_smarty_tpl->tpl_vars['bophan']->value) {?>
                                    <option value="<?php echo $_smarty_tpl->tpl_vars['Part']->value['pK_iBophanID'];?>
" selected><?php echo $_smarty_tpl->tpl_vars['Part']->value['sTenBophan'];?>
</option>
                                    <?php } else { ?>
                                    <option value="<?php echo $_smarty_tpl->tpl_vars['Part']->value['pK_iBophanID'];?>
"><?php echo $_smarty_tpl->tpl_vars['Part']->value['sTenBophan'];?>
</option>
                                    <?php }?>
                                    <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                                </select>
                            </div>
                        </div>
                        <div class="row mt-4">
                            <div class="col-12">
                                <label for="">Tác vụ</label><br>
                                <form action="http://export-excel.com/" method="POST">
                                    <input type="hidden" value="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['ThongKe']->value);?>
" id="thong-ke-tong-hop" name="thong-ke-tong-hop">
                                    <button class="btn btn-success" name="action" value="thong-ke-tong-hop">Thống kê lương tổng hợp</button>
                                    <!-- <button class="btn btn-primary" >Thống kê tiền phạt</button> -->
                                </form>
                            </div>
                        </div>
                    <!-- end row -->
                    <!-- </form> -->
                </div>
            </div> <!-- end card-body-->
        </div> <!-- end card-->
    </div> <!-- end col-->
</div>
<!-- row -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css">
        <?php echo '<script'; ?>
 src="https://code.jquery.com/ui/jquery-ui-git.js"><?php echo '</script'; ?>
>
        <?php echo '<script'; ?>
 src="/js/Payroll.js"><?php echo '</script'; ?>
>
        <?php echo '<script'; ?>
>
        $(document).ready(function(){
            $(document).on('click', '.thongke', function(){
                var thang = $('#thang').val();
                var nam = $('#nam').val();
                var bophan = $('#bophan').val();
                var data = {
                    action: 'thong-ke-tong-hop',
                    thang: thang,
                    nam: nam,
                    bophan: bophan,
                }
                $.ajax({
                    method: "POST",
                    data: data,
                    dataType:'json',
                    url: "/thong-ke-luong",
                }).done(function (res) {
                    $("#thong-ke-tong-hop").val(JSON.stringify(res));
                });
            });
        });
        <?php echo '</script'; ?>
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
            .del {
                cursor: pointer;
            }
            .del:hover {
                background-color: #f9405d;
                color: #fff !important;
            }
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
