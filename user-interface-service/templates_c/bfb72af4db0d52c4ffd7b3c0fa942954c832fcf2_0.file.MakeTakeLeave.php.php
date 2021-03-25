<?php
/* Smarty version 3.1.38, created on 2021-03-24 17:16:05
  from 'D:\Project\_datn\user-interface-service\view\MakeTakeLeave.php' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.38',
  'unifunc' => 'content_605b11655b9a36_63240856',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'bfb72af4db0d52c4ffd7b3c0fa942954c832fcf2' => 
    array (
      0 => 'D:\\Project\\_datn\\user-interface-service\\view\\MakeTakeLeave.php',
      1 => 1616580953,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_605b11655b9a36_63240856 (Smarty_Internal_Template $_smarty_tpl) {
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
                    <div>Lập đơn xin nghỉ phép
                        <div class="page-title-subheading">Lập đơn xin nghỉ phép.</div>
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
                        <div class="col-sm-5">
                            <h3>Thêm đơn xin nghỉ phép</h3>
                        </div>
                        <div class="col-sm-7">
                            <div class="float-sm-right mt-3 mt-sm-0">
                                <div class="task-search d-inline-block mb-3 mb-sm-0">
                                    <div class="input-group">
                                        <?php if ($_smarty_tpl->tpl_vars['id']->value != '') {?>
                                        <a class="btn btn-primary" href="/lap-don-xin-nghi-phep">Thêm mới</a>
                                        <?php }?>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <form action="" method="POST">
                        <div class="row">
                            <div class="col-6">
                                <div class="form-group mb-3">
                                    <label for="validationCustom01">Lý do</label>
                                    <input type="text" class="form-control" name="tieu-de" placeholder="Lý do" autocomplete="off" value="<?php echo $_smarty_tpl->tpl_vars['chitiet']->value['sLydoNghi'];?>
">
                                </div>
                                <div class="form-group mb-3">
                                    <label>Nghỉ từ ngày</label>
                                    <input type="text" id="basic-datepicker" name="tu-ngay" class="form-control flatpickr-input" readonly="readonly" value="<?php echo formatDate($_smarty_tpl->tpl_vars['chitiet']->value['dNgayNghi']);?>
">
                                </div>
                                <div class="form-group mb-3">
                                    <label>Đến ngày</label>
                                    <input type="text" id="basic-datepicker" name="den-ngay" class="form-control flatpickr-input" readonly="readonly" value="<?php echo formatDate($_smarty_tpl->tpl_vars['chitiet']->value['dNgayKethucNghi']);?>
">
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="form-group mb-3">
                                    <label for="">Nội dung chi tiết</label>
                                    <textarea class="form-control" rows="9" name="noi-dung"><?php echo $_smarty_tpl->tpl_vars['chitiet']->value['sGhichuDonxinNghiphep'];?>
</textarea>
                                </div>
                            </div>
                            <?php if ($_smarty_tpl->tpl_vars['chitiet']->value['pK_iDonxinNghiphepID'] != '') {?>
                            <div class="col-6">
                                <div class="form-group mb-3">
                                    <label for="">Trạng thái</label>
                                    <select name id="" class="form-control" disabled>
                                        <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['status']->value, 'v', false, 'k');
$_smarty_tpl->tpl_vars['v']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['k']->value => $_smarty_tpl->tpl_vars['v']->value) {
$_smarty_tpl->tpl_vars['v']->do_else = false;
?>
                                            <?php if ($_smarty_tpl->tpl_vars['chitiet']->value['fK_iTrangthaiDonxinNghiphepID'] == $_smarty_tpl->tpl_vars['v']->value['id']) {?>
                                                <option value="<?php echo $_smarty_tpl->tpl_vars['v']->value['id'];?>
" selected><?php echo $_smarty_tpl->tpl_vars['v']->value['sTenTrangThai'];?>
</option>
                                            <?php } else { ?>
                                                <option value="<?php echo $_smarty_tpl->tpl_vars['v']->value['id'];?>
"><?php echo $_smarty_tpl->tpl_vars['v']->value['sTenTrangThai'];?>
</option>
                                            <?php }?>
                                        <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                                    </select>
                                </div>
                                <div class="form-group mb-3">
                                    <label for="">Người duyệt/hủy</label>
                                    <input type="text" class="form-control" value="<?php if ((isset($_smarty_tpl->tpl_vars['Users']->value[$_smarty_tpl->tpl_vars['chitiet']->value['fK_iNguoiDuyetID']]['sTenNV']))) {
echo $_smarty_tpl->tpl_vars['Users']->value[$_smarty_tpl->tpl_vars['chitiet']->value['fK_iNguoiDuyetID']]['sTenNV'];
}?>" disabled>
                                </div>
                                <div class="form-group mb-3">
                                    <label for="">Thời gian duyệt</label>
                                    <input type="text" class="form-control flatpickr-input" value="<?php echo formatDate($_smarty_tpl->tpl_vars['chitiet']->value['dThoigianDuyet']);?>
" disabled>
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="form-group mb-3">
                                    <label for="">Lý do hủy</label>
                                    <textarea class="form-control" rows="9" name="noi-dung" disabled><?php echo $_smarty_tpl->tpl_vars['chitiet']->value['sLydoHuy'];?>
</textarea>
                                </div>
                            </div>
                            <?php } else { ?>
                            <div class="col-md-12 float-right">
                                <button class="btn btn-primary float-right" name="action" value="gui-don">Gửi đơn</button>
                            </div>
                            <?php }?>
                        </div>
                    </form>
                    <div class="row mt-4">
                        <div class="col">
                            <a class="text-dark" data-toggle="collapse" href="#chuaduyet"
                                aria-expanded="false" aria-controls="chuaduyet">
                                <h5 class="mb-0">
                                    <i class='uil uil-angle-down font-size-18'></i> Danh sách đơn xin nghỉ phép của bạn
                                    <span class="text-muted font-size-14">(<?php echo sizeof($_smarty_tpl->tpl_vars['DXNP']->value);?>
)</span>
                                </h5>
                            </a>
                            <div class="collapse" id="chuaduyet">
                                <div class="card mb-0 shadow-none">
                                    <div class="card-body pb-0">
                                        <?php if (sizeof($_smarty_tpl->tpl_vars['DXNP']->value) == 0) {?>
                                        <div class="row justify-content-sm-between mt-2 pt-2">
                                            <div class="col-lg-6 mb-2 mb-lg-0">
                                                <div class="custom-control custom-checkbox">
                                                    <label class="control-label">
                                                        Không có dữ liệu
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                        <?php } else { ?>
                                        <!-- task -->
                                        <div class="justify-content-sm-between">
                                            <table class="table table-striped table-bordered table-hover">
                                                <thead>
                                                    <tr>
                                                        <!-- <th><i class='uil uil-user font-16 mr-1'></i>Người làm đơn</th> -->
                                                        <th><i class="uil uil-comment-alt-lines"></i> Lý do</th>
                                                        <th><i class="uil uil-calendar-alt"></i> Ngày nghỉ</th>
                                                        <th><i class="uil uil-clock"></i> Thời gian lập</th>
                                                        <th><i class="uil uil-comment-alt-chart-lines"></i> Trạng thái</th>
                                                        <th><i class="uil uil-list-ui-alt"></i> Chi tiết</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['DXNP']->value, 'v', false, 'k');
$_smarty_tpl->tpl_vars['v']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['k']->value => $_smarty_tpl->tpl_vars['v']->value) {
$_smarty_tpl->tpl_vars['v']->do_else = false;
?>
                                                    <tr>
                                                        <!-- <td><?php echo $_smarty_tpl->tpl_vars['v']->value['sTenNV'];?>
</td> -->
                                                        <td><?php echo $_smarty_tpl->tpl_vars['v']->value['sLydoNghi'];?>
</td>
                                                        <td><?php echo formatDate($_smarty_tpl->tpl_vars['v']->value['dNgayNghi']);?>
</td>
                                                        <td><?php echo formatDate($_smarty_tpl->tpl_vars['v']->value['tThoigianTao']);?>
</td>
                                                        <td>
                                                        <?php if ($_smarty_tpl->tpl_vars['v']->value['fK_iTrangthaiDonxinNghiphepID'] == 0) {?>
                                                            <span class="text-warning">Chưa duyệt</span>
                                                        <?php } elseif ($_smarty_tpl->tpl_vars['v']->value['fK_iTrangthaiDonxinNghiphepID'] == 1) {?>
                                                            <span class="text-success">Đã duyệt</span>
                                                        <?php } else { ?>
                                                            <span class="text-danger">Đã hủy</span>
                                                        <?php }?>
                                                        </td>
                                                        <td>
                                                            <form action="">
                                                                <button value="<?php echo $_smarty_tpl->tpl_vars['v']->value['pK_iDonxinNghiphepID'];?>
" name="id" class="btn btn-info btn-sm">Xem chi tiết</button>
                                                            </form>
                                                        </td>
                                                    </tr>
                                                    <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                                                </tbody>
                                            </table>
                                        </div>
                                        <?php }?>
                                    </div>
                                </div>
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
                                                <div class="invalid-feedback">Please provide a valid event name</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-group">
                                        <label class="control-label">Bắt đầu</label>
                                        <input class="form-control" id="tthoigianbatdau" type="time" name="tthoigianbatdau">
                                        <div class="invalid-feedback">Please provide a valid event name</div>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-group">
                                        <label class="control-label">Kết thúc</label>
                                        <input class="form-control" id="tthoigiankethuc" type="time" name="tthoigiankethuc">
                                        <div class="invalid-feedback">Please provide a valid event name</div>
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
        <link href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css">
        <?php echo '<script'; ?>
 src="https://code.jquery.com/ui/jquery-ui-git.js"><?php echo '</script'; ?>
>
        <?php echo '<script'; ?>
 src="/js/MakeTakeLeave.js"><?php echo '</script'; ?>
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
        
        <?php echo '<script'; ?>
>
            $(document).ready(function(){
                $(document).on('click', '[name="action"]', function(){
                    if ($(this).val() != "cancel") {
                        return true;
                    }
                    Swal.fire({
                        title: 'Nhập lý do hủy',
                        input: 'text',
                        inputValue: '',
                        showCancelButton: true,
                        inputValidator: (value) => {
                            if (value == "") {
                                Swal.fire(
                                    "Cảnh báo",
                                    'Bạn cần nhập lý do hủy',
                                    'warning'
                                )
                            } else {
                                data = {
                                    action: 'cancel',
                                    id: $('[name="id"]').val(),
                                    reason: value
                                }
                                $.ajax({
                                    method: "POST",
                                    data: data,
                                    dataType:'json',
                                    url: "/don-xin-nghi-phep",
                                }).done(function (res) {
                                });
                            }
                            location.reload();
                        }
                    })
                    return false;
                }); 
            });
        <?php echo '</script'; ?>
>
        
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
