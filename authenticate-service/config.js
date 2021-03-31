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
    "quyen": {
        1: {
            "1": {
                "tieude": "Quản lý danh mục",
                "chucnang": {
                    '/danh-mục/bo-phan': "Bộ phận",
                    '/danh-mục/bo-phan': "Bộ phận",
                }
            },
            "2": {
                "tieude": "Quản lý hệ thống",
                "chucnang": {
                    '/danh-mục/bo-phan': "Bộ phận",
                    '/danh-mục/bo-phan': "Bộ phận",
                }
            }
        },
        2: "Giám đốc",
        3: "Phó giám đốc",
        4: "Trưởng BP tuyển dụng",
        5: "Trưởng BP lương thưởng & phúc lợi",
        6: "Trưởng BP hành chính",
        7: "Trưởng BP kế hoạch",
        8: "Trưởng BP kế toán",
        9: "Trưởng BP marketing",
        10: "Trưởng BP sale",
        11: "Trưởng BP kho",
        12: "Trưởng BP CSKH",
        13: "Nhân viên tuyển dụng",
        14: "Nhân viên lương thưởng & phúc lợi",
        15: "Nhân viên hành chính",
        16: "Nhân viên kế hoạch",
        17: "Nhân viên kế toán",
        18: "Nhân viên marketing",
        19: "Nhân viên sale",
        20: "Nhân viên kho",
    }
}