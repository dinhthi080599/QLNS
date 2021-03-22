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
                        <i class="uil uil-file-edit-alt" style="margin-top: 5px;font-size: 32px;"></i>
                    </div>
                    <div>Phân công công việc
                        <div class="page-title-subheading">Thiết lập lương cơ bản cho nhân viên.</div>
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
                    {if isset($themmoi)}
                    <form action="" method="POST" class="needs-validation" novalidate="" >
                        <div class="row">
                            <div class="col-12">
                                <h4>Thêm mới công việc</h4>
                            </div>
                            <div class="col">
                                <div class="form-group">
                                    <label class="control-label">Tên công việc</label>
                                    <input class="form-control" type="text" name="ten_congviec" required="">
                                    <div class="valid-feedback">Chính xác!</div>
                                    <div class="invalid-feedback">Tên công việc không được để trống</div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label">Nội dung công việc</label>
                                    <textarea class="form-control" name="noidung" rows="5" required=""></textarea>
                                    <div class="valid-feedback">Chính xác!</div>
                                    <div class="invalid-feedback">Nội dung công việc không được để trống</div>
                                </div>
                            </div>
                            <div class="col">
                                <div class="form-group">
                                    <label class="control-label">Trạng thái</label>
                                    <select class="form-control" disabled>
                                        <option value="">Chưa phân công</option>
                                    </select>
                                    <div class="valid-feedback">Chính xác!</div>
                                    <div class="invalid-feedback">Thời gian kết thúc không được để trống</div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label">NgườI thêm</label>
                                    <input class="form-control" type="text" value="{$Users[$userID]['sTenNV']}" disabled>
                                </div>
                                <div class="form-group">
                                    <label class="control-label">Thời gian thêm</label>
                                    <input class="form-control" type="text" value="{$time_now}" disabled>
                                </div>
                            </div>
                            <div class="col-12">
                                <button type="submit" name="action" value="themmoi" class="btn btn-primary">Lưu</button>
                            </div>
                        </div>
                    </form>
                    {else}
                    <!-- cta -->
                    <div class="row">
                        <div class="col-3">
                            <form action="" method="GET">
                                <label for="">Bộ phận</label>
                                <select class="form-control" name="bophan" onchange="this.form.submit();">
                                    <option value="">Tất cả</option>
                                    {foreach $PartList as $k => $Part}
                                    {if $Part.pK_iBophanID == $bophan}
                                        <option value="{$Part.pK_iBophanID}" selected>{$Part.sTenBophan}</option>
                                    {else}
                                        <option value="{$Part.pK_iBophanID}">{$Part.sTenBophan}</option>
                                    {/if}
                                    {/foreach}
                                </select>
                            </form>
                            <div class="form-group pt-2">
                                <a href="/phan-cong-cong-viec?themmoi=1" class="btn btn-primary btn-success">
                                    Thêm mới công việc
                                </a>
                            </div>
                        </div>
                        <div class="col">
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
                                                        <th colspan="100%">
                                                            Danh sách công việc
                                                        </th>
                                                    </tr>
                                                    <tr>
                                                        <!-- <th><i class='uil uil-user font-16 mr-1'></i>Người làm đơn</th> -->
                                                        <th><i class="uil uil-file-upload-alt"></i> STT</th>
                                                        <th><i class="uil uil-comment-alt-lines"></i> Tên công việc</th>
                                                        <th><i class="uil uil-comment-alt-chart-lines"></i> Thời gian tạo</th>
                                                        <th><i class="uil uil-comment-alt-chart-lines"></i> Trạng thái</th>
                                                        <th><i class="uil uil-list-ui-alt"></i> Tác vụ</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    {foreach $list_congviec as $k => $v}
                                                    <tr>
                                                        <td class="text-center">{$k}</td>
                                                        <td>{$v.sTenCongviecID}</td>
                                                        <td>{formatDate($v.tThoigianThemCongviec)}</td>
                                                        <td>{$trangthai_congviec[$v.FK_iTrangthaiCongviecID]['sTenTrangthaiCongviec']}</td>
                                                        <td class="text-center">
                                                            <a href="?phancong={$v.PK_iCongviecID}" class="btn btn-info btn-sm SalaryProcess">
                                                                Phân công
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
                        </div>
                    </div>
                    <!-- end row -->
                    {/if}
                </div>
            </div> <!-- end card-body-->
        </div> <!-- end card-->
    </div> <!-- end col-->
</div>
<!-- row -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css">
        <script src="https://code.jquery.com/ui/jquery-ui-git.js"></script>
        <!-- <script src="/js/Salary.js"></script> -->
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