<?php
/* Smarty version 3.1.38, created on 2021-03-29 11:39:16
  from 'D:\Project\_datn\user-interface-service\view\Tax.php' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.38',
  'unifunc' => 'content_606159f434d932_61567652',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '27b27f4c47b42a427fbe6ba2ac30f8322652d19b' => 
    array (
      0 => 'D:\\Project\\_datn\\user-interface-service\\view\\Tax.php',
      1 => 1616992755,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_606159f434d932_61567652 (Smarty_Internal_Template $_smarty_tpl) {
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
                    <div>Thiết lập mức thuế thu nhập cá nhân
                        <div class="page-title-subheading">Thiết lập mức thuế cho từng nhóm lương.</div>
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
                    <?php if ((isset($_smarty_tpl->tpl_vars['add']->value)) && $_smarty_tpl->tpl_vars['add']->value == 1) {?>
                    <form action="" method="POST">
                        <div class="row">
                            <div class="col-6">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Mức lương nhận thuế</label>
                                    <?php if (!(isset($_smarty_tpl->tpl_vars['uThue']->value))) {?>
                                    <input type="number" class="form-control" id="luong" name="luong" placeholder="10.000.000 đ">
                                    <?php } else { ?>
                                    <input type="number" class="form-control" id="luong" name="luong" placeholder="10.000.000 đ" value="<?php echo $_smarty_tpl->tpl_vars['uThue']->value['iMucLuongToiThieu'];?>
">
                                    <?php }?>
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Số thuế</label>
                                    <?php if (!(isset($_smarty_tpl->tpl_vars['uThue']->value))) {?>
                                    <input type="number" class="form-control" id="thue" name="thue" placeholder="10%">
                                    <?php } else { ?>
                                    <input type="number" class="form-control" id="thue" name="thue" placeholder="10%" value="<?php echo $_smarty_tpl->tpl_vars['uThue']->value['fMucThue'];?>
">
                                    <?php }?>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12">
                                    <?php if (!(isset($_smarty_tpl->tpl_vars['uThue']->value))) {?>
                                        <button type="submit" class="btn btn-primary btn-sm float-right ml-2" name="action" value="them">Thêm</button>
                                    <?php } else { ?>
                                        <input type="hidden" class="form-control" id="id" name="id" value="<?php echo $_smarty_tpl->tpl_vars['uThue']->value['_id']['$oid'];?>
">
                                        <button type="submit" class="btn btn-primary btn-sm float-right ml-2" name="action" value="capnhat">Cập nhật</button>
                                    <?php }?>
                                <a class="btn btn-sm btn-info float-right" href="/thue">Quay lại</a>
                            </div>
                        </div>
                    </form>
                    <?php } else { ?>
                    <form action="" method="GET">
                        <div class="row">
                            <div class="col-auto">
                                <!-- <button class="btn btn-sm btn-info">Lọc</button> -->
                                <button class="btn btn-sm btn-info" name="add" value="1">Thêm mới</button>
                            </div>
                            <div class="col-auto">
                                <!-- <label>Hiển thị: </label> -->
                            </div>
                            <div class="col-auto">
                                <!-- <div class="custom-control custom-checkbox mb-2">
                                    <input type="checkbox" class="custom-control-input" id="tatca" name="show" value="all">
                                    <label class="custom-control-label" for="tatca">Tất cả</label>
                                </div> -->
                            </div>
                            <div class="col-auto">
                                <!-- <div class="custom-control custom-checkbox mb-2">
                                    <input type="checkbox" class="custom-control-input" id="khenthuong" name="show" value="khenthuong">
                                    <label class="custom-control-label" for="khenthuong">Khen thưởng</label>
                                </div> -->
                            </div>
                            <div class="col-auto">
                                <!-- <div class="custom-control custom-checkbox mb-2">
                                    <input type="checkbox" class="custom-control-input" id="kyluat" name="show" value="kyluat">
                                    <label class="custom-control-label" for="kyluat">Kỷ luật</label>
                                </div> -->
                            </div>
                            <div class="col-auto">
                                <!-- <div class="custom-control custom-checkbox mb-2">
                                    <input type="checkbox" class="custom-control-input" id="dapheduyet" name="show" value="dapheduyet">
                                    <label class="custom-control-label" for="dapheduyet">Đã được phê duyệt</label>
                                </div> -->
                            </div>
                            <div class="col-auto">
                                <!-- <div class="custom-control custom-checkbox mb-2">
                                    <input type="checkbox" class="custom-control-input" id="chuapheduyet" name="show" value="chuapheduyet">
                                    <label class="custom-control-label" for="chuapheduyet">Chưa được phê duyệt</label>
                                </div> -->
                            </div>
                        </div>
                    </form>
                    <div class="row mt-4">
                        <div class="col">
                            <a class="text-dark" data-toggle="collapse" href="#dsnv"
                                aria-expanded="false" aria-controls="dsnv">
                                <h5 class="mb-0"><i class='uil uil-angle-down font-size-18'>
                                    </i> Danh sách các mức thuế
                                    <span class="text-muted font-size-14">(<?php echo sizeof($_smarty_tpl->tpl_vars['Thue']->value);?>
)</span>
                                </h5>
                            </a>
                            <div class="collapse show" id="dsnv">
                                <div class="card mb-0 shadow-none">
                                    <div class="card-body p-0 pt-3">
                                        <?php if (sizeof($_smarty_tpl->tpl_vars['Thue']->value) == 0) {?>
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
                                        <div class="justify-content-sm-between">
                                            <table class="table table-striped table-bordered table-hover">
                                                <thead>
                                                    <tr>
                                                        <!-- <th><i class='uil uil-user font-16 mr-1'></i>Người làm đơn</th> -->
                                                        <th><i class="uil uil-file-upload-alt"></i> STT</th>
                                                        <th><i class="uil uil-comment-alt-lines"></i> Lớn hơn</th>
                                                        <th><i class="uil uil-calendar-alt"></i> Số thuế phải nộp</th>
                                                        <th><i class="uil uil-calendar-alt"></i> Người tạo</th>
                                                        <th><i class="uil uil-list-ui-alt"></i> Tác vụ</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['Thue']->value, 'v', false, 'k');
$_smarty_tpl->tpl_vars['v']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['k']->value => $_smarty_tpl->tpl_vars['v']->value) {
$_smarty_tpl->tpl_vars['v']->do_else = false;
?>
                                                    <?php $_smarty_tpl->_assignInScope('i', 1);?>
                                                    <tr>
                                                        <td class="text-center"><?php echo $_smarty_tpl->tpl_vars['i']->value++;?>
</td>
                                                        <td><?php echo number_format($_smarty_tpl->tpl_vars['v']->value['iMucLuongToiThieu'],0,'.','.');?>
 VND</td>
                                                        <td><?php echo $_smarty_tpl->tpl_vars['v']->value['fMucThue'];?>
%</td>
                                                        <td><?php echo $_smarty_tpl->tpl_vars['Users']->value[$_smarty_tpl->tpl_vars['v']->value['FK_iNguoiTao']]['sTenNV'];?>
</td>
                                                        <td>
                                                            <a href="/thue?id=<?php echo $_smarty_tpl->tpl_vars['v']->value['_id']['$oid'];?>
" class="btn btn-success btn-sm">
                                                                Cập nhật
                                                            </a>
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
                    <?php }?>
                </div>
            </div> <!-- end card-body-->
        </div> <!-- end card-->
    </div> <!-- end col-->
</div>
<!-- row -->
        <!-- Add New Event MODAL -->
        <div class="modal fade" id="capnhat" tabindex="-1">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header py-3 px-4 border-bottom-0 d-block">
                        <button type="button" class="close" data-dismiss="modal"
                            aria-hidden="true">&times;</button>
                        <h5 class="modal-title" id="modal-title">Cập nhật mức lương cơ bản</h5>
                    </div>
                    <div class="modal-body p-4">
                        <form action="" method="POST">
                            <div class="row">
                                <div class="col-8">
                                    <table class="table table-striped table-bordered table-hover">
                                        <thead>
                                            <tr>
                                                <th><i class="uil uil-comment-alt-lines"></i> Thời gian bắt đầu</th>
                                                <th><i class="uil uil-calendar-alt"></i> Thời gian kết thúc</th>
                                                <th><i class="uil uil-list-ui-alt"></i> Lương cơ bản</th>
                                            </tr>
                                        </thead>
                                        <tbody id="SalaryDetail">
                                        </tbody>
                                    </table>
                                </div>
                                <div class="col-4">
                                    <div class="form-group">
                                        <label class="control-label">Mức lương mới</label>
                                        <input class="form-control" id="salary" type="text" name="salary">
                                    </div>
                                    <div class="form-group">
                                        <input type="hidden" name="id" id="id">
                                        <button type="submit" class="btn btn-success float-right" id="update" name="action" value="update">Lưu lại</button>
                                    </div>
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
 src="/js/Salary.js"><?php echo '</script'; ?>
>
        <?php echo '<script'; ?>
>
        $(document).ready(function(){
            $(document).on('click', '.del', function(){
                var del = $(this);
                Swal.fire({
                    title: 'Xác thực!',
                    text: "Bạn có chắc chắn muốn xóa ngày nghỉ này?",
                    icon: 'warning',
                    showCancelButton: true,
                    confirmButtonColor: '#3085d6',
                    cancelButtonColor: '#d33',
                    confirmButtonText: 'Đồng ý!',
                    cancelButtonText: 'Không!'
                    }).then((result) => {
                    if (result.isConfirmed) {
                        $(del).parent('.delete').submit();
                    }
                })
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
