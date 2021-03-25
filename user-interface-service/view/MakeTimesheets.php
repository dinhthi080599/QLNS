<style>
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
                    <div>Lập bảng chấm công
                        <div class="page-title-subheading">Lấy dữ liệu từ máy chấm công và tạo bảng chấm công cho nhân viên.</div>
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
                    <form action="" method="GET">
                        <div class="row">
                            <div class="col-sm-3">
                                <label for="nam">Năm</label>
                                <select class="form-control" id="nam" name="nam">
                                    <option value="">Tất cả</option>
                                    {foreach $year_arr as $k => $year}
                                    <option value="{$k}" {$year}>Năm {$k}</option>
                                    {/foreach}
                                </select>
                            </div>
                            <div class="col-sm-3">
                                <label for="thang">Tháng</label>
                                <select class="form-control" id="thang" name="thang">
                                    <option value="">Tất cả</option>
                                    {foreach $month_arr as $k => $month}
                                    <option value="{$k}" {$month}>Tháng {$k}</option>
                                    {/foreach}
                                </select>
                            </div>
                            <div class="col-sm-4">
                                <label for="bophan">Bộ phận</label>
                                <select class="form-control" id="bophan" name="bophan">
                                    <option value="">Tất cả</option>
                                    {foreach $PartList as $k => $Part}
                                    {if $Part.pK_iBophanID == $bophan}
                                    <option value="{$Part.pK_iBophanID}" selected>{$Part.sTenBophan}</option>
                                    {else}
                                    <option value="{$Part.pK_iBophanID}">{$Part.sTenBophan}</option>
                                    {/if}
                                    {/foreach}
                                </select>
                            </div>
                            <div class="col-sm-2">
                                {if $mnv != ""}
                                <label for="bophan">Tác vụ</label><br>
                                <button class="btn btn-success">Quay lại</button>
                                {/if}
                            </div>
                            <div class="col-sm-12 pt-3">
                                <label for="">Tác vụ</label><br>
                                {if $mnv == ""}
                                <button class="btn btn-success">Lọc</button>
                                <button class="btn btn-success" name="action" value="lapbangchamcong">Lập bảng chấm công</button>
                                {/if}
                            </div>
                        </div>
                    </form>
                    <div class="row mt-4">
                        <div class="col">
                            {if $mnv == ""}
                            <a class="text-dark" data-toggle="collapse" href="#dsnv"
                                aria-expanded="false" aria-controls="dsnv">
                                <h5 class="mb-0"><i class='uil uil-angle-down font-size-18'>
                                    </i> Danh sách bảng chấm công
                                    <span class="text-muted font-size-14">({sizeof($Users_Timesheets)})</span>
                                </h5>
                            </a>
                            <div class="collapse show" id="dsnv">
                                <div class="card mb-0 shadow-none">
                                    <div class="card-body p-0 pt-3">
                                        {if sizeof($Users_Timesheets) == 0}
                                        <div class="row justify-content-sm-between mt-2 pt-2">
                                            <div class="col-lg-6 mb-2 mb-lg-0">
                                                <div class="custom-control custom-checkbox">
                                                    <label class="control-label">
                                                        Không có dữ liệu
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                        {else}
                                        <div class="justify-content-sm-between">
                                            <table class="table table-striped table-bordered table-hover">
                                                <thead>
                                                    <tr>
                                                        <!-- <th><i class='uil uil-user font-16 mr-1'></i>Người làm đơn</th> -->
                                                        <th><i class="uil uil-file-upload-alt"></i> STT</th>
                                                        <th><i class="uil uil-comment-alt-lines"></i> Tên nhân viên</th>
                                                        <th><i class="uil uil-calendar-alt"></i> Ngày sinh</th>
                                                        <th><i class="uil uil-comment-alt-chart-lines"></i> Số ngày công</th>
                                                        <th><i class="uil uil-list-ui-alt"></i> Tác vụ</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    {foreach $Users_Timesheets as $k => $v}
                                                    <tr>
                                                        <td class="text-center">{$v.STT}</td>
                                                        <td>{$Users[$k]['sTenNV']}</td>
                                                        <td>{formatDate($Users[$k]['dNgaysinh'])}</td=>
                                                        <td>{$v.SNC}</td>
                                                        <td class="text-center">
                                                            <a href="{$URL}&mnv={$Users[$k]['_id']}"
                                                                class="btn btn-info btn-sm SalaryProcess"type="button">
                                                                Xem chi tiết
                                                            </a>
                                                        </td>
                                                    </tr>
                                                    {/foreach}
                                                </tbody>
                                            </table>
                                        </div>
                                        {/if}
                                    </div>
                                </div>
                            </div>
                            {else}
                            <div>
                                <a><h5 class="mb-0">Chi tiết bảng chấm công: {$Users[$mnv]['sTenNV']}</h5></a>
                                <div class="row mt-2">
                                    <div class="col-sm-3">
                                        <label for="thang">Số ngày công</label>
                                        <input type="text" value="{sizeof($list_ts[$mnv])}" class="form-control" readonly>
                                    </div>
                                    <div class="col-sm-3">
                                        <label for="thang">Thời gian đi muộn</label>
                                        <input type="text" value="{$thoigiandimuon.gio} giờ - {$thoigiandimuon.phut} phút" class="form-control" readonly>
                                    </div>
                                </div>
                                <div class="card mb-0 shadow-none">
                                    <div class="card-body p-0 pt-3">
                                        <div class="justify-content-sm-between">
                                            <table class="table table-striped table-bordered table-hover">
                                                <thead>
                                                    <tr>
                                                        <th class="text-center">Ngày</th>
                                                        <th class="text-center">Sáng</th>
                                                        <th class="text-center">Chiều</th>
                                                        <th class="text-center">Tối</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    {foreach $list_ts[$mnv] as $k => $v}
                                                    <tr>
                                                        <td class="text-center">{$v.dNgayChamcong}</td>
                                                        <td class="text-center">{$v.tThoigianVaolamSang} - {$v.tThoigianNghiSang}</td>
                                                        <td class="text-center">{$v.tThoigianVaolamChieu} - {$v.tThoigianNghiChieu}</td>
                                                        <td class="text-center">{$v.tThoigianVaolamToi} - {$v.tThoigianNghiToi}</td>
                                                    </tr>
                                                    {/foreach}
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            {/if}
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
        <script src="https://code.jquery.com/ui/jquery-ui-git.js"></script>
        <script src="/js/Salary.js"></script>
        <script>
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
        </script>
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
        </style>