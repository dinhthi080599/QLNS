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
                    <div>Thiết lập thời gian nghỉ lễ, tết
                        <div class="page-title-subheading">Thiết lập ngày nghỉ lễ, phép cho nhân viên trong công ty.</div>
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
                            <div class="col-sm-2">
                                <button class="btn btn-primary" data-toggle="modal" data-target="#add-new" type="button">
                                    <i class='uil uil-plus mr-1'></i>
                                    Thêm mới
                                </button>
                            </div>
                            <div class="col-sm-4">
                                <select class="form-control nam" name="nam" onchange="this.form.submit();">
                                    <option value="0">Tất cả năm</option>
                                    {foreach $year_arr as $year => $selected}
                                    <option value="{$year}" {$selected}>{$year}</option>
                                    {/foreach}
                                </select>
                            </div>
                            <div class="col-sm-6">
                                <div class="float-sm-right mt-3 mt-sm-0">
                                    <div class="task-search d-inline-block mb-3 mb-sm-0 mr-sm-3">
                                        <div class="input-group">
                                            <input type="text" class="form-control search-input" placeholder="Tìm kiếm..." name="search-text" value="{$search}"/>
                                            <span class="uil uil-search icon-search"></span>
                                            <div class="input-group-append">
                                                <button class="btn btn-soft-primary" type="submit">
                                                    <i class='uil uil-file-search-alt'></i>
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                    <div class="row mt-4">
                        <div class="col">
                            <a class="text-dark" data-toggle="collapse" href="#chuaqua"
                                aria-expanded="false" aria-controls="chuaqua">
                                <h5 class="mb-0"><i class='uil uil-angle-down font-size-18'>
                                    </i> Chưa qua
                                    <span class="text-muted font-size-14">({sizeof($dayOffList.chuaqua)})</span>
                                </h5>
                            </a>
                            <div class="collapse show" id="chuaqua">
                                <div class="card mb-0 shadow-none">
                                    <div class="card-body pb-0">
                                        {if (sizeof($dayOffList.chuaqua)) == 0}
                                        <div class="row justify-content-sm-between border-bottom">
                                            <div class="col-lg-6 mb-2 mb-lg-0">
                                                <div class="custom-control custom-checkbox">
                                                    <label class="control-label">
                                                        Không có dữ liệu
                                                    </label>
                                                </div> <!-- end checkbox -->
                                            </div> <!-- end col -->
                                        </div>
                                        {else}
                                        {foreach $dayOffList.chuaqua as $k => $v}
                                        <div class="row justify-content-sm-between border-bottom">
                                            <div class="col-lg-6 mb-2 mb-lg-0">
                                                <div class="custom-control custom-checkbox">
                                                    <label class="control-label">
                                                        {$v.sTenNgaynghi}
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="col-lg-6">
                                                <div class="d-sm-flex justify-content-between">
                                                    <div class="mt-3 mt-sm-0">
                                                        <ul class="list-inline font-13 text-sm-right">
                                                            <li class="list-inline-item pr-1">
                                                                <i class='uil uil-schedule font-16 mr-1'></i>
                                                            </li>
                                                            <li class="list-inline-item pr-1">
                                                                {formatDate1($v.dNgayBatdau)} 
                                                                {if $v.dNgayBatdau != $v.dNgayKethuc}
                                                                     đến {formatDate1($v.dNgayKethuc)} 
                                                                {/if}
                                                            </li>
                                                            <li class="list-inline-item">
                                                                <form action="" method="post" class="delete">
                                                                    <span class="badge badge-soft-primary p-2">Sắp đến</span>
                                                                    <span class="badge badge-soft-danger p-2 del">Xóa</span>
                                                                    <input type="hidden" name="del" value="{$v.pK_iNgaynghiTrongnamID}">
                                                                    <input type="hidden" name="action" value="del">
                                                                </form>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        {/foreach}
                                        {/if}
                                    </div> <!-- end card-body-->
                                </div> <!-- end card -->
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <a class="text-dark collapsed" data-toggle="collapse" href="#daqua"
                                aria-expanded="false" aria-controls="daqua">
                                <h5 class="mb-0">
                                    <i class='uil uil-angle-down font-size-18'></i> Đã qua
                                    <span class="text-muted font-size-14">({sizeof($dayOffList.daqua)})</span>
                                </h5>
                            </a>
                            <div class="collapse" id="daqua">
                                <div class="card mb-0 shadow-none">
                                    <div class="card-body pb-0">
                                        {if (sizeof($dayOffList.daqua)) == 0}
                                        <div class="row justify-content-sm-between border-bottom">
                                            <div class="col-lg-6 mb-2 mb-lg-0">
                                                <div class="custom-control custom-checkbox">
                                                    <label class="control-label">
                                                        Không có dữ liệu
                                                    </label>
                                                </div> <!-- end checkbox -->
                                            </div> <!-- end col -->
                                        </div>
                                        {else}
                                        {foreach $dayOffList.daqua as $k => $v}
                                        <div class="row justify-content-sm-between border-bottom">
                                            <div class="col-lg-6 mb-2 mb-lg-0">
                                                <div class="custom-control custom-checkbox">
                                                    <label class="control-label">
                                                        {$v.sTenNgaynghi}
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
                                                                {formatDate1($v.dNgayBatdau)}
                                                                {if $v.dNgayBatdau != $v.dNgayKethuc}
                                                                     đến {formatDate1($v.dNgayKethuc)} 
                                                                {/if}
                                                            </li>
                                                            <li class="list-inline-item">
                                                                <span class="badge badge-soft-danger p-2">Đã qua</span>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        {/foreach}
                                        {/if}
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
                        <form action="" class="needs-validation" novalidate="" method="POST" name="add-day-off">
                            <div class="row">
                                <div class="col-12">
                                    <div class="form-group mb-3">
                                        <label class="control-label">Tên </label>
                                        <input class="form-control" id="sTenNgayNghi" type="text" name="sTenNgaynghi" required="">
                                        <div class="valid-feedback">Chính xác!</div>
                                        <div class="invalid-feedback">Bạn cần nhập dữ liệu cho trường này!</div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-6">
                                    <div class="form-group">
                                        <label class="control-label">Từ ngày</label>
                                        <input class="form-control flatpickr-input" id="tthoigianbatdau" type="text" name="dNgayBatdau" required="">
                                        <div class="valid-feedback">Chính xác!</div>
                                        <div class="invalid-feedback">Thời gian bắt đầu không được để trống</div>
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="form-group">
                                        <label class="control-label">Đến ngày</label>
                                        <input class="form-control flatpickr-input" id="tthoigiankethuc" type="text" name="dNgayKethuc" required="">
                                        <div class="valid-feedback">Chính xác!</div>
                                        <div class="invalid-feedback">Thời gian kết thúc không được để trống</div>
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
        <script src="https://code.jquery.com/ui/jquery-ui-git.js"></script>
        <script src="/js/Timekeeping.js"></script>
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