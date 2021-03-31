module.exports = {
    "secret": "s0me-secr3t-goes-here",
    "refreshTokenSecret": "some-s3cret-refre2h-token",
    "port": 3000,
    "tokenLife": 7200, // 2 hour
    "refreshTokenLife": 86400, // a day
    "routing": {
        "Staff": "http://localhost:3003/",
        "Salary": "http://localhost:4900/",
        "Work": "http://workflow_management.com/",
        "Export": "http://export-excel.com/",
        "TimeKeeping": "https://timekeeping-services.herokuapp.com/"
    },
    "chucnang": {
        1: {
            "1": {
                "tieude": "Quản lý danh mục",
                "icon": "<i class='uil uil-bright'></i>",
                "chucnang": {
                    '/danh-muc/bo-phan'                         : "Bộ phận",
                    '/danh-muc/vi-tri-cong-viec'                : "Vị trí công việc",
                    '/danh-muc/hinh-thuc-dang-tin-tuyen-dung'   : "Hình thức đăng tuyển",
                    '/danh-muc/trang-thai-ke-hoach-tuyen-dung'  : "Trạng thái kế hoạch tuyển dụng ",
                    '/danh-muc/trang-thai-ho-so-tuyen-dung'     : "Trạng thái hồ sơ tuyển dụng ",
                    '/danh-muc/trang-thai-quyet-dinh-tuyen-dung': "Trạng thái quyết định tuyển dụng ",
                    '/danh-muc/loai-hop-dong'                   : "Loại hợp đồng ",
                }
            },
            "2": {
                "tieude": "Quản lý hệ thống",
                "icon": "<i class='uil uil-bright'></i>",
                "chucnang": {
                    '/he-thong/cap-tai-khoan'       : "Cấp tài khoản",
                    '/he-thong/cap-nhat-tai-khoan'  : "Cập nhật tài khoản",
                    '/he-thong/doi-mat-khau'        : "Đổi mật khẩu"
                }
            },
            "3": {
                "tieude": "Quản lý tuyển dụng",
                "icon": "<i class='uil uil-star'></i>",
                "chucnang": {
                    '/tuyen-dung/lap-ke-hoach'              : "Lập KH tuyển dụng",
                    '/tuyen-dung/duyet-ke-hoach'            : "Duyệt KH tuyển dụng",
                    '/tuyen-dung/dang-tin'                  : "Đăng tin tuyển dụng",
                    '/tuyen-dung/tong-hop-ho-so'            : "Tổng hợp hồ sơ",
                    '/tuyen-dung/danh-gia-ung-vien'         : "Đ.giá năng lực ứng viên",
                    '/tuyen-dung/lap-quyet-dinh-tuyen-dung' : "Lập QĐ tuyển dụng",
                    '/tuyen-dung/bao-cao'                   : "Báo cáo tuyển dụng",
                    '/tuyen-dung/thong-ke-ho-so'            : "T.kê hồ sơ tuyển dụng",
                }
            },
            "4": {
                "tieude": "Quản lý nhân viên",
                "icon": "<i class='uil uil-user'></i>",
                "chucnang": {
                    '/nhan-vien/ho-so-nhan-vien'        : "Hồ sơ nhân viên",
                    '/nhan-vien/hop-dong-lao-dong'      : "Hợp đồng lao động",
                    '/nhan-vien/chung-chi'              : "Chứng chỉ",
                    '/nhan-vien/khen-thuong-ky-luat'    : "Khen thưởng, kỷ luật",
                    '/nhan-vien/bao-cao-nhan-su'        : "Báo cáo nhân sự",
                }
            },
            "5": {
                "tieude": "Quản lý công việc",
                "icon": "<i class='uil uil-document-layout-right'></i>",
                "chucnang": {
                    '/cong-viec/cua-ban'        : "Công việc của bạn",
                    '/cong-viec/phan-cong'      : "Phân công công việc",
                }
            },
            "6": {
                "tieude": "Quản lý chấm công",
                "icon": "<i class='uil uil-map-pin-alt'></i>",
                "chucnang": {
                    '/thoi-gian-lam-viec'       : "Thiết lập thời gian làm việc",
                    '/ngay-nghi'                : "Thời gian nghỉ lễ, tết",
                    '/don-xin-nghi-phep'        : "DS đơn xin nghỉ phép",
                    '/lap-don-xin-nghi-phep'    : "Lập đơn xin nghỉ phép",
                    '/lap-bang-cham-cong'       : "Lập bảng chấm công",
                }
            },
            "7": {
                "tieude": "Lương thưởng & phúc lợi",
                "icon": "<i class='uil uil-usd-circle'></i>",
                "chucnang": {
                    '/luong-co-ban'     : "Lương cơ bản",
                    '/muc-thuong-phat'  : "Thiết lập mức thưởng phạt",
                    '/tinh-luong'       : "Tính lương",
                    '/thong-ke-luong'   : "Thống kê lương",
                }
            }
        },
        2: {
            "1": {
                "tieude": "Quản lý danh mục",
                "icon": "<i class='uil uil-bright'></i>",
                "chucnang": {
                    '/danh-muc/bo-phan'                         : "Bộ phận",
                    '/danh-muc/vi-tri-cong-viec'                : "Vị trí công việc",
                    '/danh-muc/hinh-thuc-dang-tin-tuyen-dung'   : "Hình thức đăng tuyển",
                    '/danh-muc/trang-thai-ke-hoach-tuyen-dung'  : "Trạng thái kế hoạch tuyển dụng ",
                    '/danh-muc/trang-thai-ho-so-tuyen-dung'     : "Trạng thái hồ sơ tuyển dụng ",
                    '/danh-muc/trang-thai-quyet-dinh-tuyen-dung': "Trạng thái quyết định tuyển dụng ",
                    '/danh-muc/loai-hop-dong'                   : "Loại hợp đồng ",
                }
            },
            "2": {
                "tieude": "Quản lý hệ thống",
                "icon": "<i class='uil uil-bright'></i>",
                "chucnang": {
                    '/he-thong/cap-tai-khoan'       : "Cấp tài khoản",
                    '/he-thong/cap-nhat-tai-khoan'  : "Cập nhật tài khoản",
                    '/he-thong/doi-mat-khau'        : "Đổi mật khẩu"
                }
            },
            "3": {
                "tieude": "Quản lý tuyển dụng",
                "icon": "<i class='uil uil-star'></i>",
                "chucnang": {
                    '/tuyen-dung/lap-ke-hoach'              : "Lập KH tuyển dụng",
                    '/tuyen-dung/duyet-ke-hoach'            : "Duyệt KH tuyển dụng",
                    '/tuyen-dung/dang-tin'                  : "Đăng tin tuyển dụng",
                    '/tuyen-dung/tong-hop-ho-so'            : "Tổng hợp hồ sơ",
                    '/tuyen-dung/danh-gia-ung-vien'         : "Đ.giá năng lực ứng viên",
                    '/tuyen-dung/lap-quyet-dinh-tuyen-dung' : "Lập QĐ tuyển dụng",
                    '/tuyen-dung/bao-cao'                   : "Báo cáo tuyển dụng",
                    '/tuyen-dung/thong-ke-ho-so'            : "T.kê hồ sơ tuyển dụng",
                }
            },
            "4": {
                "tieude": "Quản lý nhân viên",
                "icon": "<i class='uil uil-user'></i>",
                "chucnang": {
                    '/nhan-vien/ho-so-nhan-vien'        : "Hồ sơ nhân viên",
                    '/nhan-vien/hop-dong-lao-dong'      : "Hợp đồng lao động",
                    '/nhan-vien/chung-chi'              : "Chứng chỉ",
                    '/nhan-vien/khen-thuong-ky-luat'    : "Khen thưởng, kỷ luật",
                    '/nhan-vien/bao-cao-nhan-su'        : "Báo cáo nhân sự",
                }
            },
            "5": {
                "tieude": "Quản lý công việc",
                "icon": "<i class='uil uil-document-layout-right'></i>",
                "chucnang": {
                    '/cong-viec/cua-ban'        : "Công việc của bạn",
                    '/cong-viec/phan-cong'      : "Phân công công việc",
                }
            },
            "6": {
                "tieude": "Quản lý chấm công",
                "icon": "<i class='uil uil-map-pin-alt'></i>",
                "chucnang": {
                    '/thoi-gian-lam-viec'       : "Thiết lập thời gian làm việc",
                    '/ngay-nghi'                : "Thời gian nghỉ lễ, tết",
                    '/don-xin-nghi-phep'        : "DS đơn xin nghỉ phép",
                    '/lap-don-xin-nghi-phep'    : "Lập đơn xin nghỉ phép",
                    '/lap-bang-cham-cong'       : "Lập bảng chấm công",
                }
            },
            "7": {
                "tieude": "Lương thưởng & phúc lợi",
                "icon": "<i class='uil uil-usd-circle'></i>",
                "chucnang": {
                    '/luong-co-ban'     : "Lương cơ bản",
                    '/muc-thuong-phat'  : "Thiết lập mức thưởng phạt",
                    '/tinh-luong'       : "Tính lương",
                    '/thong-ke-luong'   : "Thống kê lương",
                }
            }
        },
        3: {
            "1": {
                "tieude": "Quản lý danh mục",
                "icon": "<i class='uil uil-bright'></i>",
                "chucnang": {
                    '/danh-muc/bo-phan'                         : "Bộ phận",
                    '/danh-muc/vi-tri-cong-viec'                : "Vị trí công việc",
                    '/danh-muc/hinh-thuc-dang-tin-tuyen-dung'   : "Hình thức đăng tuyển",
                    '/danh-muc/trang-thai-ke-hoach-tuyen-dung'  : "Trạng thái kế hoạch tuyển dụng ",
                    '/danh-muc/trang-thai-ho-so-tuyen-dung'     : "Trạng thái hồ sơ tuyển dụng ",
                    '/danh-muc/trang-thai-quyet-dinh-tuyen-dung': "Trạng thái quyết định tuyển dụng ",
                    '/danh-muc/loai-hop-dong'                   : "Loại hợp đồng ",
                }
            },
            "2": {
                "tieude": "Quản lý hệ thống",
                "icon": "<i class='uil uil-bright'></i>",
                "chucnang": {
                    '/he-thong/cap-tai-khoan'       : "Cấp tài khoản",
                    '/he-thong/cap-nhat-tai-khoan'  : "Cập nhật tài khoản",
                    '/he-thong/doi-mat-khau'        : "Đổi mật khẩu"
                }
            },
            "3": {
                "tieude": "Quản lý tuyển dụng",
                "icon": "<i class='uil uil-star'></i>",
                "chucnang": {
                    '/tuyen-dung/lap-ke-hoach'              : "Lập KH tuyển dụng",
                    '/tuyen-dung/duyet-ke-hoach'            : "Duyệt KH tuyển dụng",
                    '/tuyen-dung/dang-tin'                  : "Đăng tin tuyển dụng",
                    '/tuyen-dung/tong-hop-ho-so'            : "Tổng hợp hồ sơ",
                    '/tuyen-dung/danh-gia-ung-vien'         : "Đ.giá năng lực ứng viên",
                    '/tuyen-dung/lap-quyet-dinh-tuyen-dung' : "Lập QĐ tuyển dụng",
                    '/tuyen-dung/bao-cao'                   : "Báo cáo tuyển dụng",
                    '/tuyen-dung/thong-ke-ho-so'            : "T.kê hồ sơ tuyển dụng",
                }
            },
            "4": {
                "tieude": "Quản lý nhân viên",
                "icon": "<i class='uil uil-user'></i>",
                "chucnang": {
                    '/nhan-vien/ho-so-nhan-vien'        : "Hồ sơ nhân viên",
                    '/nhan-vien/hop-dong-lao-dong'      : "Hợp đồng lao động",
                    '/nhan-vien/chung-chi'              : "Chứng chỉ",
                    '/nhan-vien/khen-thuong-ky-luat'    : "Khen thưởng, kỷ luật",
                    '/nhan-vien/bao-cao-nhan-su'        : "Báo cáo nhân sự",
                }
            },
            "5": {
                "tieude": "Quản lý công việc",
                "icon": "<i class='uil uil-document-layout-right'></i>",
                "chucnang": {
                    '/cong-viec/cua-ban'        : "Công việc của bạn",
                    '/cong-viec/phan-cong'      : "Phân công công việc",
                }
            },
            "6": {
                "tieude": "Quản lý chấm công",
                "icon": "<i class='uil uil-map-pin-alt'></i>",
                "chucnang": {
                    '/thoi-gian-lam-viec'       : "Thiết lập thời gian làm việc",
                    '/ngay-nghi'                : "Thời gian nghỉ lễ, tết",
                    '/don-xin-nghi-phep'        : "DS đơn xin nghỉ phép",
                    '/lap-don-xin-nghi-phep'    : "Lập đơn xin nghỉ phép",
                    '/lap-bang-cham-cong'       : "Lập bảng chấm công",
                }
            },
            "7": {
                "tieude": "Lương thưởng & phúc lợi",
                "icon": "<i class='uil uil-usd-circle'></i>",
                "chucnang": {
                    '/luong-co-ban'     : "Lương cơ bản",
                    '/muc-thuong-phat'  : "Thiết lập mức thưởng phạt",
                    '/tinh-luong'       : "Tính lương",
                    '/thong-ke-luong'   : "Thống kê lương",
                }
            }
        },
        4: {
            "2": {
                "tieude": "Quản lý hệ thống",
                "icon": "<i class='uil uil-bright'></i>",
                "chucnang": {
                    '/he-thong/cap-nhat-tai-khoan'  : "Cập nhật tài khoản",
                    '/he-thong/doi-mat-khau'        : "Đổi mật khẩu"
                }
            },
            "3": {
                "tieude": "Quản lý tuyển dụng",
                "icon": "<i class='uil uil-star'></i>",
                "chucnang": {
                    '/tuyen-dung/lap-ke-hoach'              : "Lập KH tuyển dụng",
                    '/tuyen-dung/duyet-ke-hoach'            : "Duyệt KH tuyển dụng",
                    '/tuyen-dung/dang-tin'                  : "Đăng tin tuyển dụng",
                    '/tuyen-dung/tong-hop-ho-so'            : "Tổng hợp hồ sơ",
                    '/tuyen-dung/danh-gia-ung-vien'         : "Đ.giá năng lực ứng viên",
                    '/tuyen-dung/lap-quyet-dinh-tuyen-dung' : "Lập QĐ tuyển dụng",
                    '/tuyen-dung/bao-cao'                   : "Báo cáo tuyển dụng",
                    '/tuyen-dung/thong-ke-ho-so'            : "T.kê hồ sơ tuyển dụng",
                }
            },
            "5": {
                "tieude": "Quản lý công việc",
                "icon": "<i class='uil uil-document-layout-right'></i>",
                "chucnang": {
                    '/cong-viec/cua-ban'        : "Công việc của bạn",
                    '/cong-viec/phan-cong'      : "Phân công công việc",
                }
            },
            "6": {
                "tieude": "Quản lý chấm công",
                "icon": "<i class='uil uil-map-pin-alt'></i>",
                "chucnang": {
                    '/lap-don-xin-nghi-phep'    : "Lập đơn xin nghỉ phép",
                }
            }
        },
        5: "Trưởng BP lương thưởng & phúc lợi",
        6: "Trưởng BP hành chính",
        7: "Trưởng BP kế hoạch",
        8: {
            "2": {
                "tieude": "Quản lý hệ thống",
                "icon": "<i class='uil uil-bright'></i>",
                "chucnang": {
                    '/he-thong/cap-nhat-tai-khoan'  : "Cập nhật tài khoản",
                    '/he-thong/doi-mat-khau'        : "Đổi mật khẩu"
                }
            },
            "5": {
                "tieude": "Quản lý công việc",
                "icon": "<i class='uil uil-document-layout-right'></i>",
                "chucnang": {
                    '/cong-viec/cua-ban'        : "Công việc của bạn",
                    '/cong-viec/phan-cong'      : "Phân công công việc",
                }
            },
            "6": {
                "tieude": "Quản lý chấm công",
                "icon": "<i class='uil uil-map-pin-alt'></i>",
                "chucnang": {
                    '/lap-bang-cham-cong'       : "Lập bảng chấm công",
                }
            },
            "7": {
                "tieude": "Lương thưởng & phúc lợi",
                "icon": "<i class='uil uil-usd-circle'></i>",
                "chucnang": {
                    '/luong-co-ban'     : "Lương cơ bản",
                    '/muc-thuong-phat'  : "Thiết lập mức thưởng phạt",
                    '/tinh-luong'       : "Tính lương",
                    '/thong-ke-luong'   : "Thống kê lương",
                }
            }
        },
        9: {
            "2": {
                "tieude": "Quản lý hệ thống",
                "icon": "<i class='uil uil-bright'></i>",
                "chucnang": {
                    '/he-thong/cap-nhat-tai-khoan'  : "Cập nhật tài khoản",
                    '/he-thong/doi-mat-khau'        : "Đổi mật khẩu"
                }
            },
            "5": {
                "tieude": "Quản lý công việc",
                "icon": "<i class='uil uil-document-layout-right'></i>",
                "chucnang": {
                    '/cong-viec/cua-ban'        : "Công việc của bạn",
                    '/cong-viec/phan-cong'      : "Phân công công việc",
                }
            },
            "6": {
                "tieude": "Quản lý chấm công",
                "icon": "<i class='uil uil-map-pin-alt'></i>",
                "chucnang": {
                    '/lap-bang-cham-cong'       : "Lập bảng chấm công",
                }
            }
        },
        10: {
            "2": {
                "tieude": "Quản lý hệ thống",
                "icon": "<i class='uil uil-bright'></i>",
                "chucnang": {
                    '/he-thong/cap-nhat-tai-khoan'  : "Cập nhật tài khoản",
                    '/he-thong/doi-mat-khau'        : "Đổi mật khẩu"
                }
            },
            "5": {
                "tieude": "Quản lý công việc",
                "icon": "<i class='uil uil-document-layout-right'></i>",
                "chucnang": {
                    '/cong-viec/cua-ban'        : "Công việc của bạn",
                    '/cong-viec/phan-cong'      : "Phân công công việc",
                }
            },
            "6": {
                "tieude": "Quản lý chấm công",
                "icon": "<i class='uil uil-map-pin-alt'></i>",
                "chucnang": {
                    '/lap-bang-cham-cong'       : "Lập bảng chấm công",
                }
            }
        },
        11: {
            "2": {
                "tieude": "Quản lý hệ thống",
                "icon": "<i class='uil uil-bright'></i>",
                "chucnang": {
                    '/he-thong/cap-nhat-tai-khoan'  : "Cập nhật tài khoản",
                    '/he-thong/doi-mat-khau'        : "Đổi mật khẩu"
                }
            },
            "5": {
                "tieude": "Quản lý công việc",
                "icon": "<i class='uil uil-document-layout-right'></i>",
                "chucnang": {
                    '/cong-viec/cua-ban'        : "Công việc của bạn",
                    '/cong-viec/phan-cong'      : "Phân công công việc",
                }
            },
            "6": {
                "tieude": "Quản lý chấm công",
                "icon": "<i class='uil uil-map-pin-alt'></i>",
                "chucnang": {
                    '/lap-bang-cham-cong'       : "Lập bảng chấm công",
                }
            }
        },
        12: {
            "2": {
                "tieude": "Quản lý hệ thống",
                "icon": "<i class='uil uil-bright'></i>",
                "chucnang": {
                    '/he-thong/cap-nhat-tai-khoan'  : "Cập nhật tài khoản",
                    '/he-thong/doi-mat-khau'        : "Đổi mật khẩu"
                }
            },
            "5": {
                "tieude": "Quản lý công việc",
                "icon": "<i class='uil uil-document-layout-right'></i>",
                "chucnang": {
                    '/cong-viec/cua-ban'        : "Công việc của bạn",
                    '/cong-viec/phan-cong'      : "Phân công công việc",
                }
            },
            "6": {
                "tieude": "Quản lý chấm công",
                "icon": "<i class='uil uil-map-pin-alt'></i>",
                "chucnang": {
                    '/lap-bang-cham-cong'       : "Lập bảng chấm công",
                }
            }
        },
        13: {
            "2": {
                "tieude": "Quản lý hệ thống",
                "icon": "<i class='uil uil-bright'></i>",
                "chucnang": {
                    '/he-thong/cap-nhat-tai-khoan'  : "Cập nhật tài khoản",
                    '/he-thong/doi-mat-khau'        : "Đổi mật khẩu"
                }
            },
            "5": {
                "tieude": "Quản lý công việc",
                "icon": "<i class='uil uil-document-layout-right'></i>",
                "chucnang": {
                    '/cong-viec/cua-ban'        : "Công việc của bạn",
                }
            },
            "6": {
                "tieude": "Quản lý chấm công",
                "icon": "<i class='uil uil-map-pin-alt'></i>",
                "chucnang": {
                    '/lap-don-xin-nghi-phep'    : "Lập đơn xin nghỉ phép",
                }
            }
        },
        14: {
            "2": {
                "tieude": "Quản lý hệ thống",
                "icon": "<i class='uil uil-bright'></i>",
                "chucnang": {
                    '/he-thong/cap-nhat-tai-khoan'  : "Cập nhật tài khoản",
                    '/he-thong/doi-mat-khau'        : "Đổi mật khẩu"
                }
            },
            "5": {
                "tieude": "Quản lý công việc",
                "icon": "<i class='uil uil-document-layout-right'></i>",
                "chucnang": {
                    '/cong-viec/cua-ban'        : "Công việc của bạn",
                }
            },
            "6": {
                "tieude": "Quản lý chấm công",
                "icon": "<i class='uil uil-map-pin-alt'></i>",
                "chucnang": {
                    '/lap-don-xin-nghi-phep'    : "Lập đơn xin nghỉ phép",
                }
            }
        },
        15: {
            "2": {
                "tieude": "Quản lý hệ thống",
                "icon": "<i class='uil uil-bright'></i>",
                "chucnang": {
                    '/he-thong/cap-nhat-tai-khoan'  : "Cập nhật tài khoản",
                    '/he-thong/doi-mat-khau'        : "Đổi mật khẩu"
                }
            },
            "5": {
                "tieude": "Quản lý công việc",
                "icon": "<i class='uil uil-document-layout-right'></i>",
                "chucnang": {
                    '/cong-viec/cua-ban'        : "Công việc của bạn",
                }
            },
            "6": {
                "tieude": "Quản lý chấm công",
                "icon": "<i class='uil uil-map-pin-alt'></i>",
                "chucnang": {
                    '/lap-don-xin-nghi-phep'    : "Lập đơn xin nghỉ phép",
                }
            }
        },
        16: {
            "2": {
                "tieude": "Quản lý hệ thống",
                "icon": "<i class='uil uil-bright'></i>",
                "chucnang": {
                    '/he-thong/cap-nhat-tai-khoan'  : "Cập nhật tài khoản",
                    '/he-thong/doi-mat-khau'        : "Đổi mật khẩu"
                }
            },
            "5": {
                "tieude": "Quản lý công việc",
                "icon": "<i class='uil uil-document-layout-right'></i>",
                "chucnang": {
                    '/cong-viec/cua-ban'        : "Công việc của bạn",
                }
            },
            "6": {
                "tieude": "Quản lý chấm công",
                "icon": "<i class='uil uil-map-pin-alt'></i>",
                "chucnang": {
                    '/lap-don-xin-nghi-phep'    : "Lập đơn xin nghỉ phép",
                }
            }
        },
        17: {
            "2": {
                "tieude": "Quản lý hệ thống",
                "icon": "<i class='uil uil-bright'></i>",
                "chucnang": {
                    '/he-thong/cap-nhat-tai-khoan'  : "Cập nhật tài khoản",
                    '/he-thong/doi-mat-khau'        : "Đổi mật khẩu"
                }
            },
            "5": {
                "tieude": "Quản lý công việc",
                "icon": "<i class='uil uil-document-layout-right'></i>",
                "chucnang": {
                    '/cong-viec/cua-ban'        : "Công việc của bạn",
                }
            },
            "6": {
                "tieude": "Quản lý chấm công",
                "icon": "<i class='uil uil-map-pin-alt'></i>",
                "chucnang": {
                    '/lap-don-xin-nghi-phep'    : "Lập đơn xin nghỉ phép",
                }
            }
        },
        18: {
            "2": {
                "tieude": "Quản lý hệ thống",
                "icon": "<i class='uil uil-bright'></i>",
                "chucnang": {
                    '/he-thong/cap-nhat-tai-khoan'  : "Cập nhật tài khoản",
                    '/he-thong/doi-mat-khau'        : "Đổi mật khẩu"
                }
            },
            "5": {
                "tieude": "Quản lý công việc",
                "icon": "<i class='uil uil-document-layout-right'></i>",
                "chucnang": {
                    '/cong-viec/cua-ban'        : "Công việc của bạn",
                }
            },
            "6": {
                "tieude": "Quản lý chấm công",
                "icon": "<i class='uil uil-map-pin-alt'></i>",
                "chucnang": {
                    '/lap-don-xin-nghi-phep'    : "Lập đơn xin nghỉ phép",
                }
            }
        },
        19: {
            "2": {
                "tieude": "Quản lý hệ thống",
                "icon": "<i class='uil uil-bright'></i>",
                "chucnang": {
                    '/he-thong/cap-nhat-tai-khoan'  : "Cập nhật tài khoản",
                    '/he-thong/doi-mat-khau'        : "Đổi mật khẩu"
                }
            },
            "5": {
                "tieude": "Quản lý công việc",
                "icon": "<i class='uil uil-document-layout-right'></i>",
                "chucnang": {
                    '/cong-viec/cua-ban'        : "Công việc của bạn",
                }
            },
            "6": {
                "tieude": "Quản lý chấm công",
                "icon": "<i class='uil uil-map-pin-alt'></i>",
                "chucnang": {
                    '/lap-don-xin-nghi-phep'    : "Lập đơn xin nghỉ phép",
                }
            }
        },
        20:  {
            "2": {
                "tieude": "Quản lý hệ thống",
                "icon": "<i class='uil uil-bright'></i>",
                "chucnang": {
                    '/he-thong/cap-nhat-tai-khoan'  : "Cập nhật tài khoản",
                    '/he-thong/doi-mat-khau'        : "Đổi mật khẩu"
                }
            },
            "5": {
                "tieude": "Quản lý công việc",
                "icon": "<i class='uil uil-document-layout-right'></i>",
                "chucnang": {
                    '/cong-viec/cua-ban'        : "Công việc của bạn",
                }
            },
            "6": {
                "tieude": "Quản lý chấm công",
                "icon": "<i class='uil uil-map-pin-alt'></i>",
                "chucnang": {
                    '/lap-don-xin-nghi-phep'    : "Lập đơn xin nghỉ phép",
                }
            }
        },
    }
}