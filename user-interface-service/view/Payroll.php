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
                    <div>Tính lương cho nhân viên
                        <div class="page-title-subheading">Lấy dữ liệu từ các mục khen thưởng, kỷ luật, trợ cấp, thuế để tính lương của nhân viên.</div>
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
                                {if empty($mnv)}
                                <label for="">Lọc</label><br>
                                <button class="btn btn-success">Lọc</button>
                                {else}
                                <label for="">Quay lại</label><br>
                                <button class="btn btn-success">Quay lại</button>
                                {/if}
                            </div>
                        </div>
                    </form>
                    <form action="" method="POST">
                        <div class="row mt-4">
                            <div class="col-12">
                                <label for="">Tác vụ</label><br>
                                {if $mnv == ""}
                                <button class="btn btn-success" name="action" value="lap-bang-luong">Lập bảng lương</button>
                                {/if}
                            </div>
                            <div class="col pt-2">
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
                                            {if sizeof($Users) == 0}
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
                                                            <th class="text-center">
                                                                <div class="form-check">
                                                                    <input type="checkbox" name="check-all" class="form-check-input" id="check-all">
                                                                    <label class="form-check-label" for="check-all" style="margin-top: 2px;">&nbsp;&nbsp;</label>
                                                                </div>
                                                            </th>
                                                            <th><i class="uil uil-comment-alt-lines"></i> Tên nhân viên</th>
                                                            <th><i class="uil uil-calendar-alt"></i> Ngày sinh</th>
                                                            <th><i class="uil uil-comment-alt-chart-lines"></i> Số ngày công</th>
                                                            <th>Trạng thái</th>
                                                            <th><i class="uil uil-list-ui-alt"></i> Tác vụ</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        {foreach $Users as $k => $v}
                                                        <tr>
                                                            <td class="text-center">
                                                                <div class="form-check">
                                                                    <input type="checkbox" value="{$v._id}" name="check-tinh-luong[]" class="form-check-input" id="checktl{$v.i}">
                                                                    <label class="form-check-label" for="checktl{$v.i}" style="margin-top: 2px;">{$v.i}</label>
                                                                </div>
                                                            </td>
                                                            <td>{$v.sHoten}</td>
                                                            <td>{formatDate($Users[$k]['dNgaysinh'])}</td=>
                                                            <td>
                                                                {if isset($Users_Timesheets[$v.pK_iNhanvienID])}
                                                                    {$Users_Timesheets[$v.pK_iNhanvienID]['SNC']}
                                                                {/if}
                                                            </td>
                                                            <td>
                                                                {if isset($Users_Timesheets[$v._id])}
                                                                    {if isset($Payroll[$v._id])}
                                                                    <label class="text-success">Đã có bảng lương</label>
                                                                    {else}
                                                                    <label class="text-warning">Chưa có bảng lương</label>
                                                                    {/if}
                                                                {else}
                                                                    <label class="text-danger">Chưa có bảng chấm công</label>
                                                                {/if}
                                                            </td>
                                                            <td>
                                                                {if isset($Users_Timesheets[$v._id])}
                                                                    {if isset($Payroll[$v._id])}
                                                                    <a href="/tinh-luong?nam={$nam}&thang={$thang}&bophan={$bophan}&mnv={$v._id}"
                                                                        class="btn btn-info btn-sm"type="button">
                                                                        Chi tiết
                                                                    </a>
                                                                    {/if}
                                                                {else}
                                                                    <a href="/lap-bang-cham-cong?nam={$nam}&thang={$thang}&bophan={$bophan}"
                                                                        class="btn btn-success btn-sm"type="button">
                                                                        Lập bảng chấm công
                                                                    </a>
                                                                {/if}
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
                                    <a><h5 class="mb-0">Chi tiết bảng lương của: {$Users[$mnv]['sHoten']}</h5></a>
                                    <div class="row mt-2">
                                        <div class="col-sm-3">
                                            <label for="thang">Lương cơ bản</label>
                                            <input type="text" value="{number_format($SalaryProcess[$mnv]['iLuongCoban'], 0, '.', '.')} VND" class="form-control" readonly>
                                        </div>
                                        <div class="col-sm-3">
                                            <label for="thang">Số ngày công trong tháng</label>
                                            <input type="text" value="24" class="form-control" readonly>
                                        </div>
                                        <div class="col-sm-3">
                                            <label for="thang" class="text-danger">Thời gian đi muộn</label>
                                            <input type="text" value="{$thoigiandimuon.gio} giờ - {$thoigiandimuon.phut} phút" class="form-control" readonly>
                                        </div>
                                        <div class="col-sm-3">
                                            <label for="thang" class="text-danger">Tiền phạt đi muộn</label>
                                            <input type="text" value="{number_format($Payroll[$mnv]['iTienphat'], 0, '.', '.')} VND" class="form-control" readonly>
                                        </div>
                                    </div>
                                    <div class="row mt-2">
                                        <div class="col-sm-3">
                                            <label for="thang">Lương nhận theo thời gian</label>
                                            <input type="text" value="{number_format($SalaryProcess[$mnv]['iLuongCoban']*sizeof($list_ts[$mnv])/24, 0, '.', '.')} VND" class="form-control" readonly>
                                        </div>
                                        <div class="col-sm-3">
                                            <label for="thang">Số ngày công</label>
                                            <input type="text" value="{sizeof($list_ts[$mnv])}" class="form-control" readonly>
                                        </div>
                                        <div class="col-sm-3">
                                            <label for="thang" class="text-primary">Mức lương thực tế c.ty chi trả</label>
                                            <input type="text" value="{number_format($SalaryProcess[$mnv]['iLuongCoban']*sizeof($list_ts[$mnv])/24, 0, '.', '.')} VND" class="form-control" readonly>
                                        </div>
                                        <div class="col-sm-3">
                                            <label for="thang" class="text-success">Mức lương nhân viên được nhận</label>
                                            <input type="text" value="{number_format($SalaryProcess[$mnv]['iLuongCoban']*sizeof($list_ts[$mnv])/24 - $Payroll[$mnv]['iTienphat'], 0, '.', '.')} VND" class="form-control" readonly>
                                        </div>
                                    </div>
                                    <a><h5 class="mb-0 mt-3">Chi tiết chấm công theo ngày của: {$Users[$mnv]['sHoten']}</h5></a>
                                    <div class="card mb-0 shadow-none">
                                        <div class="card-body p-0 pt-3">
                                            <div class="justify-content-sm-between">
                                                <table class="table table-striped table-bordered table-hover">
                                                    <thead>
                                                        <tr>
                                                            <th class="text-center">STT</th>
                                                            <th class="text-center">Ngày</th>
                                                            <th class="text-center">Sáng</th>
                                                            <th class="text-center">Chiều</th>
                                                            <th class="text-center">Tối</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        {$stt=1}
                                                        {foreach $list_ts[$mnv] as $k => $v}
                                                        <tr>
                                                            <td class="text-center">{$stt++}</td>
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
                    </form>
                </div>
            </div> <!-- end card-body-->
        </div> <!-- end card-->
    </div> <!-- end col-->
</div>
<!-- row -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css">
        <script src="https://code.jquery.com/ui/jquery-ui-git.js"></script>
        <script src="/js/Payroll.js"></script>
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