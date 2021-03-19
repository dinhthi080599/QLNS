-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 27, 2021 at 09:34 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_qlns`
--

-- --------------------------------------------------------

--
-- Table structure for table `dm_danhgia_congviec`
--

CREATE TABLE `dm_danhgia_congviec` (
  `PK_iDanhgiaCongviecID` int(11) NOT NULL,
  `sTenDanhgiaCongviec` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `iSodiem` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dm_hinhthuc_dangtuyen`
--

CREATE TABLE `dm_hinhthuc_dangtuyen` (
  `PK_iHinhthucDangtuyenID` tinyint(4) NOT NULL,
  `sTenHinhthucDangtuyen` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dm_loaichungchi`
--

CREATE TABLE `dm_loaichungchi` (
  `PK_iLoaichungchiID` tinyint(4) NOT NULL,
  `sTenLoaiChungchi` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dm_loaihopdong`
--

CREATE TABLE `dm_loaihopdong` (
  `PK_iLoaiHopdongID` tinyint(4) NOT NULL,
  `sTenLoaiHopdong` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dm_loaikhenthuong_kyluat`
--

CREATE TABLE `dm_loaikhenthuong_kyluat` (
  `PK_iLoaiKhenthuongKyluat` tinyint(4) NOT NULL,
  `sLoaiKhenthuongKyluat` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dm_quyen`
--

CREATE TABLE `dm_quyen` (
  `PK_iQuyenID` tinyint(4) NOT NULL,
  `sTenQuyen` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dm_trangthai_congviec`
--

CREATE TABLE `dm_trangthai_congviec` (
  `PK_iTrangthaiCongviecID` tinyint(4) NOT NULL,
  `sTenTrangthaiCongviec` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dm_trangthai_donxin_nghiphep`
--

CREATE TABLE `dm_trangthai_donxin_nghiphep` (
  `PK_iTrangthaiDonxinNghiphepID` tinyint(4) NOT NULL,
  `sTenTrangthaiDonxinNghiphep` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dm_trangthai_hoso`
--

CREATE TABLE `dm_trangthai_hoso` (
  `PK_iTrangthaiHosoID` tinyint(4) NOT NULL,
  `sTenTrangthaiHoso` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dm_trangthai_kehoach_tuyendung`
--

CREATE TABLE `dm_trangthai_kehoach_tuyendung` (
  `PK_iTrangthaiKehoachTuyendungID` tinyint(4) NOT NULL,
  `sTenTrangthaiKehoachTuyendung` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dm_trangthai_phancong_congviec`
--

CREATE TABLE `dm_trangthai_phancong_congviec` (
  `PK_iTrangthaiPhancongCongviecID` tinyint(4) NOT NULL,
  `sTenTrangthaiPhancongCongviec` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dm_trangthai_quyetdinh_tuyendung`
--

CREATE TABLE `dm_trangthai_quyetdinh_tuyendung` (
  `PK_iTrangthaiQuyetdinhTuyendungID` tinyint(4) NOT NULL,
  `sTenTrangthaiQuyetdinhTuyendung` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dm_trangthai_taikhoan`
--

CREATE TABLE `dm_trangthai_taikhoan` (
  `PK_iTrangthaiTaikhoanID` tinyint(4) NOT NULL,
  `sTenTrangthaiTaikhoan` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bangchamcong`
--

CREATE TABLE `tbl_bangchamcong` (
  `PK_sBangChamcongID` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `FK_iNhanvienID` int(11) NOT NULL,
  `tThoigianVaolamSang` int(11) NOT NULL,
  `tThoigianNghiSang` int(11) NOT NULL,
  `tThoigianVaolamChieu` datetime NOT NULL,
  `tThoigianNghiChieu` datetime NOT NULL,
  `tThoigianVaolamToi` datetime NOT NULL,
  `tThoigianNghiToi` datetime NOT NULL,
  `dNgayChamcong` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bantin_tuyendung`
--

CREATE TABLE `tbl_bantin_tuyendung` (
  `PK_iBantinTuyendungID` bigint(20) NOT NULL,
  `FK_iChitietKehoachTuyendungID` bigint(20) NOT NULL,
  `sTieudeTinTuyendung` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sNoidungTinTuyendung` text COLLATE utf8_unicode_ci NOT NULL,
  `FK_iNguoiDangID` int(11) NOT NULL,
  `tThoigianDang` datetime NOT NULL,
  `tThoigianHethan` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bophan`
--

CREATE TABLE `tbl_bophan` (
  `PK_iBophanID` int(11) NOT NULL,
  `sTenBophan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `iThutuBophan` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_chitiet_kehoach_tuyendung`
--

CREATE TABLE `tbl_chitiet_kehoach_tuyendung` (
  `PK_iChitietKehoachTuyendungID` bigint(20) NOT NULL,
  `FK_iKehoachTuyendungID` bigint(20) NOT NULL,
  `FK_iVitriCongviecID` int(11) NOT NULL,
  `iSoluong` int(11) NOT NULL,
  `sLydoTuyen` text COLLATE utf8_unicode_ci NOT NULL,
  `iMucluongDukien` int(11) NOT NULL,
  `dThoigianNhanHosoTuyendung` date NOT NULL,
  `dThoigianTestHosoTuyendung` date NOT NULL,
  `dThoigianPhongvanTuyendung` date NOT NULL,
  `FK_iHinhthucDangtuyenID` tinyint(4) NOT NULL,
  `iKinhphiDutruTuyendung` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_chucnang`
--

CREATE TABLE `tbl_chucnang` (
  `PK_sChucnangID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `sTenChucnang` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sIconChucnang` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `iThutuChucnang` tinyint(4) NOT NULL,
  `bHienthiChucnang` bit(1) NOT NULL DEFAULT b'1',
  `FK_iMenuID` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_chungchi`
--

CREATE TABLE `tbl_chungchi` (
  `PK_iChungchiID` int(11) NOT NULL,
  `FK_iLoaiChungchi` tinyint(4) NOT NULL,
  `FK_iNhanvienID` int(11) NOT NULL,
  `dNgayBatdau` date NOT NULL,
  `dNgayKethuc` date DEFAULT NULL,
  `FK_iNguoiThemID` int(11) NOT NULL,
  `dThoigianThemID` int(11) NOT NULL,
  `sTepDinhkem` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_congviec`
--

CREATE TABLE `tbl_congviec` (
  `PK_iCongviecID` int(11) NOT NULL,
  `sTenCongviecID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sNoidungCongviec` text COLLATE utf8_unicode_ci NOT NULL,
  `FK_iNguoiThemCongviecID` int(11) NOT NULL,
  `tThoigianThemCongviec` datetime NOT NULL,
  `FK_iTrangthaiCongviecID` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_donxin_nghiphep`
--

CREATE TABLE `tbl_donxin_nghiphep` (
  `PK_iDonxinNghiphepID` bigint(20) NOT NULL,
  `FK_iNhanvienID` int(11) NOT NULL,
  `sLydoNghi` int(11) NOT NULL,
  `tThoigianTao` datetime NOT NULL,
  `FK_iNguoiDuyetID` int(11) DEFAULT NULL,
  `dThoigianDuyet` date DEFAULT NULL,
  `FK_iTrangthaiDonxinNghiphepID` tinyint(4) NOT NULL DEFAULT 1,
  `sGhichuDonxinNghiphep` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hopdong_laodong`
--

CREATE TABLE `tbl_hopdong_laodong` (
  `PK_iHopdongLaodongID` bigint(20) NOT NULL,
  `FK_iNhanvienID` int(11) NOT NULL,
  `sSoHopdong` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `FK_iLoaiHopdongID` tinyint(4) NOT NULL,
  `dNgayKy` date NOT NULL,
  `dNgayCoHieuluc` date NOT NULL,
  `dNgayHetHan` date NOT NULL,
  `FK_iVitriCongviecID` int(11) NOT NULL,
  `iLuongCoban` int(11) NOT NULL,
  `iLuongDongBaohiem` int(11) NOT NULL,
  `FK_iNguoiKyID` int(11) NOT NULL,
  `sGhichu` text COLLATE utf8_unicode_ci NOT NULL,
  `sTepDinhkem` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hoso_tuyendung`
--

CREATE TABLE `tbl_hoso_tuyendung` (
  `PK_iHosoTuyendungID` bigint(20) NOT NULL,
  `sHotenUngvien` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sTenUngvien` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `sEmailUngvien` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sDienthoaiUngvien` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `sDuongdanHosoUngvien` text COLLATE utf8_unicode_ci NOT NULL,
  `FK_iNguoiLuuID` int(11) NOT NULL,
  `tThoigianLuu` datetime NOT NULL,
  `FK_iTrangthaiHosoID` tinyint(4) NOT NULL,
  `sDanhgiaHoso` text COLLATE utf8_unicode_ci NOT NULL,
  `FK_iNguoiDanhgiaHosoID` int(11) NOT NULL,
  `tThoigianDanhgiaHoso` datetime NOT NULL,
  `bGioitinhUngvien` bit(1) NOT NULL,
  `dNgaysinhUngvien` date NOT NULL,
  `FK_iVitriCongvievID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kehoach_tuyendung`
--

CREATE TABLE `tbl_kehoach_tuyendung` (
  `PK_iKehoachTuyendungID` bigint(20) NOT NULL,
  `sTieudeKehoach` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sNoidungKehoach` text COLLATE utf8_unicode_ci NOT NULL,
  `FK_iNguoilapKehoachID` int(11) NOT NULL,
  `tThoigianLapKehoach` datetime NOT NULL,
  `FK_iNguoiduyetKehoachID` int(11) NOT NULL,
  `tThoigianDuyetKehoachID` int(11) NOT NULL,
  `FK_iTrangthaiKehoachTuyendungID` tinyint(4) NOT NULL,
  `sLydo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_khenthuong_kyluat`
--

CREATE TABLE `tbl_khenthuong_kyluat` (
  `PK_iKhenthuongKyluatID` bigint(20) NOT NULL,
  `sTieude` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sNoidung` text COLLATE utf8_unicode_ci NOT NULL,
  `FK_iLoaiKhenthuongKyluatID` tinyint(4) NOT NULL,
  `FK_iNguoiLapID` int(11) NOT NULL,
  `tThoigianLap` datetime NOT NULL,
  `FK_iNguoiduyetID` int(11) NOT NULL,
  `tThoigianDuyet` datetime NOT NULL,
  `iKinhphi` int(11) DEFAULT NULL,
  `sGhichu` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_luong`
--

CREATE TABLE `tbl_luong` (
  `PK_iLuongID` int(11) NOT NULL,
  `FK_iNhanvienID` int(11) NOT NULL,
  `FK_iNguoiLapID` int(11) NOT NULL,
  `tThoigianLap` datetime NOT NULL,
  `iThang` tinyint(4) NOT NULL,
  `iNam` year(4) NOT NULL,
  `iPhanhoi` int(11) NOT NULL,
  `iTongluong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_menu`
--

CREATE TABLE `tbl_menu` (
  `PK_iMenuID` tinyint(4) NOT NULL,
  `sTenMenu` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `sIconMenu` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bHienthiMenu` bit(1) NOT NULL DEFAULT b'1',
  `iThutuMenu` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_muchue`
--

CREATE TABLE `tbl_muchue` (
  `PK_iMucThue` int(11) NOT NULL,
  `iMucLuongToiThieu` int(11) NOT NULL,
  `fMucThue` float NOT NULL,
  `dThoigianHieuluc` date NOT NULL,
  `FK_iNguoiTao` int(11) NOT NULL,
  `tThoigianTao` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ngaynghi_trongnam`
--

CREATE TABLE `tbl_ngaynghi_trongnam` (
  `PK_iNgaynghiTrongnamID` int(11) NOT NULL,
  `sTenNgaynghi` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `dNgayNghi` date NOT NULL,
  `FK_iNguoitaoID` int(11) NOT NULL,
  `dThoigianTao` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_nhanvien`
--

CREATE TABLE `tbl_nhanvien` (
  `PK_iNhanvienID` int(11) NOT NULL,
  `sHoten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sTen` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `dNgaysinh` date NOT NULL,
  `bGioitinh` bit(1) NOT NULL,
  `sDiachi` text COLLATE utf8_unicode_ci NOT NULL,
  `sDienthoai` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `sCMND` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `sMasothue` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `sDuongdanSoyeuLylich` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_phancong_congviec`
--

CREATE TABLE `tbl_phancong_congviec` (
  `PK_iNhanvienID` int(11) NOT NULL,
  `PK_iCongviecID` bigint(20) NOT NULL,
  `dNgayBatdauCongviec` date NOT NULL,
  `dNgayKethucCongviec` date NOT NULL,
  `FK_iNguoiPhancongID` int(11) NOT NULL,
  `tThoigianPhancong` datetime NOT NULL,
  `FK_iTrangthaiPhancongCongviecID` tinyint(4) NOT NULL,
  `FK_iDanhgiaCongviec` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_quatrinh_lamviec`
--

CREATE TABLE `tbl_quatrinh_lamviec` (
  `PK_iQuatrinhLamviecID` bigint(20) NOT NULL,
  `FK_iNhanvienID` int(11) NOT NULL,
  `dNgayBatdau` date NOT NULL,
  `dNgayKethuc` date DEFAULT NULL,
  `FK_iVitriCongviecID` int(11) NOT NULL,
  `FK_iNguoiChuyenID` int(11) NOT NULL,
  `tThoigianChuyen` datetime NOT NULL,
  `sGhichu` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_quyen_chucnang`
--

CREATE TABLE `tbl_quyen_chucnang` (
  `PK_iQuyenID` tinyint(4) NOT NULL,
  `PK_sChucnangID` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_quyetdinh_tuyendung`
--

CREATE TABLE `tbl_quyetdinh_tuyendung` (
  `PK_iQuyetdinhTuyendungID` bigint(20) NOT NULL,
  `sTieudeQuyetdinhTuyendung` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tThoigianLapQuyetdinhTuyendung` datetime NOT NULL,
  `FK_iNguoiLapQuyetdinhTuyendungID` int(11) NOT NULL,
  `FK_iNguoiDuyetQuyetdinhTuyendungID` int(11) NOT NULL,
  `tThoigianDuyetQuyetdinhTuyendung` datetime NOT NULL,
  `sGhichu` int(11) NOT NULL,
  `FK_iTrangthaiQuyetdinhTuyendungID` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_taikhoan`
--

CREATE TABLE `tbl_taikhoan` (
  `PK_iTaikhoanID` int(11) NOT NULL,
  `sTenTaikhoan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sMatkhau` varchar(72) COLLATE utf8_unicode_ci NOT NULL,
  `iTrangthaiTaikhoan` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1. Đã kích hoạt 2. Bị khoá',
  `FK_iQuyenID` tinyint(4) NOT NULL,
  `FK_iNhanvienID` int(11) NOT NULL,
  `FK_iNguoiCapID` int(11) NOT NULL,
  `tThoigianCap` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_thoigian_lamviec`
--

CREATE TABLE `tbl_thoigian_lamviec` (
  `PK_iThoigianLamviecID` bigint(20) NOT NULL,
  `FK_iBophanID` int(11) NOT NULL,
  `tThoigianBatdauSang` time NOT NULL,
  `tThoigianKethucSang` time NOT NULL,
  `tThoigianBatdauChieu` time NOT NULL,
  `tThoigianKethucChieu` time NOT NULL,
  `tThoigianBatdauToi` time NOT NULL,
  `tThoigianKethucToi` time NOT NULL,
  `dNgayApdung` datetime NOT NULL,
  `FK_iNguoiTao` int(11) NOT NULL,
  `tThoigianTao` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vitri_congviec`
--

CREATE TABLE `tbl_vitri_congviec` (
  `PK_iVitriCongviecID` int(11) NOT NULL,
  `sTenVitriCongviec` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `FK_iBophanID` int(11) NOT NULL,
  `iThutuVitriCongviec` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dm_danhgia_congviec`
--
ALTER TABLE `dm_danhgia_congviec`
  ADD PRIMARY KEY (`PK_iDanhgiaCongviecID`);

--
-- Indexes for table `dm_hinhthuc_dangtuyen`
--
ALTER TABLE `dm_hinhthuc_dangtuyen`
  ADD PRIMARY KEY (`PK_iHinhthucDangtuyenID`);

--
-- Indexes for table `dm_loaichungchi`
--
ALTER TABLE `dm_loaichungchi`
  ADD PRIMARY KEY (`PK_iLoaichungchiID`);

--
-- Indexes for table `dm_loaihopdong`
--
ALTER TABLE `dm_loaihopdong`
  ADD PRIMARY KEY (`PK_iLoaiHopdongID`);

--
-- Indexes for table `dm_loaikhenthuong_kyluat`
--
ALTER TABLE `dm_loaikhenthuong_kyluat`
  ADD PRIMARY KEY (`PK_iLoaiKhenthuongKyluat`);

--
-- Indexes for table `dm_quyen`
--
ALTER TABLE `dm_quyen`
  ADD PRIMARY KEY (`PK_iQuyenID`);

--
-- Indexes for table `dm_trangthai_congviec`
--
ALTER TABLE `dm_trangthai_congviec`
  ADD PRIMARY KEY (`PK_iTrangthaiCongviecID`);

--
-- Indexes for table `dm_trangthai_donxin_nghiphep`
--
ALTER TABLE `dm_trangthai_donxin_nghiphep`
  ADD PRIMARY KEY (`PK_iTrangthaiDonxinNghiphepID`);

--
-- Indexes for table `dm_trangthai_hoso`
--
ALTER TABLE `dm_trangthai_hoso`
  ADD PRIMARY KEY (`PK_iTrangthaiHosoID`);

--
-- Indexes for table `dm_trangthai_kehoach_tuyendung`
--
ALTER TABLE `dm_trangthai_kehoach_tuyendung`
  ADD PRIMARY KEY (`PK_iTrangthaiKehoachTuyendungID`);

--
-- Indexes for table `dm_trangthai_phancong_congviec`
--
ALTER TABLE `dm_trangthai_phancong_congviec`
  ADD PRIMARY KEY (`PK_iTrangthaiPhancongCongviecID`);

--
-- Indexes for table `dm_trangthai_quyetdinh_tuyendung`
--
ALTER TABLE `dm_trangthai_quyetdinh_tuyendung`
  ADD PRIMARY KEY (`PK_iTrangthaiQuyetdinhTuyendungID`);

--
-- Indexes for table `dm_trangthai_taikhoan`
--
ALTER TABLE `dm_trangthai_taikhoan`
  ADD PRIMARY KEY (`PK_iTrangthaiTaikhoanID`);

--
-- Indexes for table `tbl_bangchamcong`
--
ALTER TABLE `tbl_bangchamcong`
  ADD PRIMARY KEY (`PK_sBangChamcongID`),
  ADD KEY `tbl_bangchamcong_ibfk_1` (`FK_iNhanvienID`);

--
-- Indexes for table `tbl_bantin_tuyendung`
--
ALTER TABLE `tbl_bantin_tuyendung`
  ADD PRIMARY KEY (`PK_iBantinTuyendungID`),
  ADD KEY `tbl_bantin_tuyendung_ibfk_1` (`FK_iNguoiDangID`),
  ADD KEY `FK_iChitietKehoachTuyendungID` (`FK_iChitietKehoachTuyendungID`);

--
-- Indexes for table `tbl_bophan`
--
ALTER TABLE `tbl_bophan`
  ADD PRIMARY KEY (`PK_iBophanID`);

--
-- Indexes for table `tbl_chitiet_kehoach_tuyendung`
--
ALTER TABLE `tbl_chitiet_kehoach_tuyendung`
  ADD PRIMARY KEY (`PK_iChitietKehoachTuyendungID`),
  ADD KEY `FK_iKehoachTuyendungID` (`FK_iKehoachTuyendungID`),
  ADD KEY `tbl_chitiet_kehoach_tuyendung_ibfk_2` (`FK_iVitriCongviecID`),
  ADD KEY `FK_iHinhthucDangtuyenID` (`FK_iHinhthucDangtuyenID`);

--
-- Indexes for table `tbl_chucnang`
--
ALTER TABLE `tbl_chucnang`
  ADD PRIMARY KEY (`PK_sChucnangID`),
  ADD KEY `tbl_chucnang_ibfk_1` (`FK_iMenuID`);

--
-- Indexes for table `tbl_chungchi`
--
ALTER TABLE `tbl_chungchi`
  ADD PRIMARY KEY (`PK_iChungchiID`),
  ADD KEY `FK_iLoaiChungchi` (`FK_iLoaiChungchi`),
  ADD KEY `FK_iNhanvienID` (`FK_iNhanvienID`),
  ADD KEY `FK_iNguoiThemID` (`FK_iNguoiThemID`);

--
-- Indexes for table `tbl_congviec`
--
ALTER TABLE `tbl_congviec`
  ADD PRIMARY KEY (`PK_iCongviecID`),
  ADD KEY `FK_iNguoiThemCongviecID` (`FK_iNguoiThemCongviecID`),
  ADD KEY `tbl_congviec_ibfk_2` (`FK_iTrangthaiCongviecID`);

--
-- Indexes for table `tbl_donxin_nghiphep`
--
ALTER TABLE `tbl_donxin_nghiphep`
  ADD PRIMARY KEY (`PK_iDonxinNghiphepID`),
  ADD KEY `FK_iNhanvienID` (`FK_iNhanvienID`),
  ADD KEY `FK_iNguoiDuyetID` (`FK_iNguoiDuyetID`),
  ADD KEY `tbl_donxin_nghiphep_ibfk_3` (`FK_iTrangthaiDonxinNghiphepID`);

--
-- Indexes for table `tbl_hopdong_laodong`
--
ALTER TABLE `tbl_hopdong_laodong`
  ADD PRIMARY KEY (`PK_iHopdongLaodongID`),
  ADD KEY `FK_iLoaiHopdongID` (`FK_iLoaiHopdongID`),
  ADD KEY `FK_iNguoiKyID` (`FK_iNguoiKyID`),
  ADD KEY `tbl_hopdong_laodong_ibfk_3` (`FK_iNhanvienID`);

--
-- Indexes for table `tbl_hoso_tuyendung`
--
ALTER TABLE `tbl_hoso_tuyendung`
  ADD PRIMARY KEY (`PK_iHosoTuyendungID`),
  ADD KEY `FK_iNguoiDanhgiaHosoID` (`FK_iNguoiDanhgiaHosoID`),
  ADD KEY `tbl_hoso_tuyendung_ibfk_2` (`FK_iNguoiLuuID`),
  ADD KEY `FK_iTrangthaiHosoID` (`FK_iTrangthaiHosoID`),
  ADD KEY `FK_iVitriCongvievID` (`FK_iVitriCongvievID`);

--
-- Indexes for table `tbl_kehoach_tuyendung`
--
ALTER TABLE `tbl_kehoach_tuyendung`
  ADD PRIMARY KEY (`PK_iKehoachTuyendungID`),
  ADD KEY `FK_iNguoiduyetKehoachID` (`FK_iNguoiduyetKehoachID`),
  ADD KEY `FK_iNguoilapKehoachID` (`FK_iNguoilapKehoachID`),
  ADD KEY `FK_iTrangthaiKehoachTuyendungID` (`FK_iTrangthaiKehoachTuyendungID`);

--
-- Indexes for table `tbl_khenthuong_kyluat`
--
ALTER TABLE `tbl_khenthuong_kyluat`
  ADD PRIMARY KEY (`PK_iKhenthuongKyluatID`),
  ADD KEY `FK_iLoaiKhenthuongKyluatID` (`FK_iLoaiKhenthuongKyluatID`),
  ADD KEY `tbl_khenthuong_kyluat_ibfk_2` (`FK_iNguoiduyetID`),
  ADD KEY `FK_iNguoiLapID` (`FK_iNguoiLapID`);

--
-- Indexes for table `tbl_luong`
--
ALTER TABLE `tbl_luong`
  ADD PRIMARY KEY (`PK_iLuongID`),
  ADD KEY `FK_iNguoiLapID` (`FK_iNguoiLapID`),
  ADD KEY `FK_iNhanvienID` (`FK_iNhanvienID`);

--
-- Indexes for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  ADD PRIMARY KEY (`PK_iMenuID`);

--
-- Indexes for table `tbl_muchue`
--
ALTER TABLE `tbl_muchue`
  ADD PRIMARY KEY (`PK_iMucThue`),
  ADD KEY `FK_iNguoiTao` (`FK_iNguoiTao`);

--
-- Indexes for table `tbl_ngaynghi_trongnam`
--
ALTER TABLE `tbl_ngaynghi_trongnam`
  ADD PRIMARY KEY (`PK_iNgaynghiTrongnamID`),
  ADD KEY `FK_iNguoitaoID` (`FK_iNguoitaoID`);

--
-- Indexes for table `tbl_nhanvien`
--
ALTER TABLE `tbl_nhanvien`
  ADD PRIMARY KEY (`PK_iNhanvienID`),
  ADD UNIQUE KEY `sDienthoai` (`sDienthoai`,`sCMND`,`sMasothue`);

--
-- Indexes for table `tbl_phancong_congviec`
--
ALTER TABLE `tbl_phancong_congviec`
  ADD PRIMARY KEY (`PK_iNhanvienID`),
  ADD KEY `FK_iDanhgiaCongviec` (`FK_iDanhgiaCongviec`),
  ADD KEY `FK_iNguoiPhancongID` (`FK_iNguoiPhancongID`),
  ADD KEY `tbl_phancong_congviec_ibfk_3` (`FK_iTrangthaiPhancongCongviecID`);

--
-- Indexes for table `tbl_quatrinh_lamviec`
--
ALTER TABLE `tbl_quatrinh_lamviec`
  ADD PRIMARY KEY (`PK_iQuatrinhLamviecID`),
  ADD KEY `FK_iNguoiChuyenID` (`FK_iNguoiChuyenID`),
  ADD KEY `FK_iNhanvienID` (`FK_iNhanvienID`),
  ADD KEY `FK_iVitriCongviecID` (`FK_iVitriCongviecID`);

--
-- Indexes for table `tbl_quyen_chucnang`
--
ALTER TABLE `tbl_quyen_chucnang`
  ADD PRIMARY KEY (`PK_iQuyenID`,`PK_sChucnangID`);

--
-- Indexes for table `tbl_quyetdinh_tuyendung`
--
ALTER TABLE `tbl_quyetdinh_tuyendung`
  ADD PRIMARY KEY (`PK_iQuyetdinhTuyendungID`),
  ADD KEY `FK_iNguoiDuyetQuyetdinhTuyendungID` (`FK_iNguoiDuyetQuyetdinhTuyendungID`),
  ADD KEY `FK_iNguoiLapQuyetdinhTuyendungID` (`FK_iNguoiLapQuyetdinhTuyendungID`),
  ADD KEY `FK_iTrangthaiQuyetdinhTuyendungID` (`FK_iTrangthaiQuyetdinhTuyendungID`);

--
-- Indexes for table `tbl_taikhoan`
--
ALTER TABLE `tbl_taikhoan`
  ADD PRIMARY KEY (`PK_iTaikhoanID`),
  ADD UNIQUE KEY `sTenTaikhoan` (`sTenTaikhoan`),
  ADD KEY `tbl_taikhoan_ibfk_1` (`FK_iNguoiCapID`),
  ADD KEY `FK_iNhanvienID` (`FK_iNhanvienID`),
  ADD KEY `FK_iQuyenID` (`FK_iQuyenID`);

--
-- Indexes for table `tbl_thoigian_lamviec`
--
ALTER TABLE `tbl_thoigian_lamviec`
  ADD PRIMARY KEY (`PK_iThoigianLamviecID`),
  ADD KEY `FK_iBophanID` (`FK_iBophanID`),
  ADD KEY `FK_iNguoiTao` (`FK_iNguoiTao`);

--
-- Indexes for table `tbl_vitri_congviec`
--
ALTER TABLE `tbl_vitri_congviec`
  ADD PRIMARY KEY (`PK_iVitriCongviecID`),
  ADD KEY `FK_iBophanID` (`FK_iBophanID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dm_danhgia_congviec`
--
ALTER TABLE `dm_danhgia_congviec`
  MODIFY `PK_iDanhgiaCongviecID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dm_hinhthuc_dangtuyen`
--
ALTER TABLE `dm_hinhthuc_dangtuyen`
  MODIFY `PK_iHinhthucDangtuyenID` tinyint(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dm_loaichungchi`
--
ALTER TABLE `dm_loaichungchi`
  MODIFY `PK_iLoaichungchiID` tinyint(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dm_loaihopdong`
--
ALTER TABLE `dm_loaihopdong`
  MODIFY `PK_iLoaiHopdongID` tinyint(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dm_loaikhenthuong_kyluat`
--
ALTER TABLE `dm_loaikhenthuong_kyluat`
  MODIFY `PK_iLoaiKhenthuongKyluat` tinyint(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dm_quyen`
--
ALTER TABLE `dm_quyen`
  MODIFY `PK_iQuyenID` tinyint(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dm_trangthai_congviec`
--
ALTER TABLE `dm_trangthai_congviec`
  MODIFY `PK_iTrangthaiCongviecID` tinyint(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dm_trangthai_donxin_nghiphep`
--
ALTER TABLE `dm_trangthai_donxin_nghiphep`
  MODIFY `PK_iTrangthaiDonxinNghiphepID` tinyint(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dm_trangthai_hoso`
--
ALTER TABLE `dm_trangthai_hoso`
  MODIFY `PK_iTrangthaiHosoID` tinyint(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dm_trangthai_kehoach_tuyendung`
--
ALTER TABLE `dm_trangthai_kehoach_tuyendung`
  MODIFY `PK_iTrangthaiKehoachTuyendungID` tinyint(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dm_trangthai_phancong_congviec`
--
ALTER TABLE `dm_trangthai_phancong_congviec`
  MODIFY `PK_iTrangthaiPhancongCongviecID` tinyint(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dm_trangthai_quyetdinh_tuyendung`
--
ALTER TABLE `dm_trangthai_quyetdinh_tuyendung`
  MODIFY `PK_iTrangthaiQuyetdinhTuyendungID` tinyint(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dm_trangthai_taikhoan`
--
ALTER TABLE `dm_trangthai_taikhoan`
  MODIFY `PK_iTrangthaiTaikhoanID` tinyint(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_bantin_tuyendung`
--
ALTER TABLE `tbl_bantin_tuyendung`
  MODIFY `PK_iBantinTuyendungID` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_bophan`
--
ALTER TABLE `tbl_bophan`
  MODIFY `PK_iBophanID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_chitiet_kehoach_tuyendung`
--
ALTER TABLE `tbl_chitiet_kehoach_tuyendung`
  MODIFY `PK_iChitietKehoachTuyendungID` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_chungchi`
--
ALTER TABLE `tbl_chungchi`
  MODIFY `PK_iChungchiID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_congviec`
--
ALTER TABLE `tbl_congviec`
  MODIFY `PK_iCongviecID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_donxin_nghiphep`
--
ALTER TABLE `tbl_donxin_nghiphep`
  MODIFY `PK_iDonxinNghiphepID` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_hopdong_laodong`
--
ALTER TABLE `tbl_hopdong_laodong`
  MODIFY `PK_iHopdongLaodongID` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_hoso_tuyendung`
--
ALTER TABLE `tbl_hoso_tuyendung`
  MODIFY `PK_iHosoTuyendungID` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_kehoach_tuyendung`
--
ALTER TABLE `tbl_kehoach_tuyendung`
  MODIFY `PK_iKehoachTuyendungID` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_khenthuong_kyluat`
--
ALTER TABLE `tbl_khenthuong_kyluat`
  MODIFY `PK_iKhenthuongKyluatID` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_luong`
--
ALTER TABLE `tbl_luong`
  MODIFY `PK_iLuongID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  MODIFY `PK_iMenuID` tinyint(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_muchue`
--
ALTER TABLE `tbl_muchue`
  MODIFY `PK_iMucThue` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_ngaynghi_trongnam`
--
ALTER TABLE `tbl_ngaynghi_trongnam`
  MODIFY `PK_iNgaynghiTrongnamID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_nhanvien`
--
ALTER TABLE `tbl_nhanvien`
  MODIFY `PK_iNhanvienID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_phancong_congviec`
--
ALTER TABLE `tbl_phancong_congviec`
  MODIFY `PK_iNhanvienID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_quatrinh_lamviec`
--
ALTER TABLE `tbl_quatrinh_lamviec`
  MODIFY `PK_iQuatrinhLamviecID` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_quyetdinh_tuyendung`
--
ALTER TABLE `tbl_quyetdinh_tuyendung`
  MODIFY `PK_iQuyetdinhTuyendungID` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_thoigian_lamviec`
--
ALTER TABLE `tbl_thoigian_lamviec`
  MODIFY `PK_iThoigianLamviecID` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_vitri_congviec`
--
ALTER TABLE `tbl_vitri_congviec`
  MODIFY `PK_iVitriCongviecID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_bangchamcong`
--
ALTER TABLE `tbl_bangchamcong`
  ADD CONSTRAINT `tbl_bangchamcong_ibfk_1` FOREIGN KEY (`FK_iNhanvienID`) REFERENCES `tbl_nhanvien` (`PK_iNhanvienID`) ON UPDATE CASCADE;

--
-- Constraints for table `tbl_bantin_tuyendung`
--
ALTER TABLE `tbl_bantin_tuyendung`
  ADD CONSTRAINT `tbl_bantin_tuyendung_ibfk_1` FOREIGN KEY (`FK_iNguoiDangID`) REFERENCES `tbl_nhanvien` (`PK_iNhanvienID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_bantin_tuyendung_ibfk_2` FOREIGN KEY (`FK_iChitietKehoachTuyendungID`) REFERENCES `tbl_chitiet_kehoach_tuyendung` (`PK_iChitietKehoachTuyendungID`) ON UPDATE CASCADE;

--
-- Constraints for table `tbl_chitiet_kehoach_tuyendung`
--
ALTER TABLE `tbl_chitiet_kehoach_tuyendung`
  ADD CONSTRAINT `tbl_chitiet_kehoach_tuyendung_ibfk_1` FOREIGN KEY (`FK_iKehoachTuyendungID`) REFERENCES `tbl_kehoach_tuyendung` (`PK_iKehoachTuyendungID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_chitiet_kehoach_tuyendung_ibfk_2` FOREIGN KEY (`FK_iVitriCongviecID`) REFERENCES `tbl_vitri_congviec` (`PK_iVitriCongviecID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_chitiet_kehoach_tuyendung_ibfk_3` FOREIGN KEY (`FK_iHinhthucDangtuyenID`) REFERENCES `dm_hinhthuc_dangtuyen` (`PK_iHinhthucDangtuyenID`) ON UPDATE CASCADE;

--
-- Constraints for table `tbl_chucnang`
--
ALTER TABLE `tbl_chucnang`
  ADD CONSTRAINT `tbl_chucnang_ibfk_1` FOREIGN KEY (`FK_iMenuID`) REFERENCES `tbl_menu` (`PK_iMenuID`) ON UPDATE CASCADE;

--
-- Constraints for table `tbl_chungchi`
--
ALTER TABLE `tbl_chungchi`
  ADD CONSTRAINT `tbl_chungchi_ibfk_1` FOREIGN KEY (`FK_iLoaiChungchi`) REFERENCES `dm_loaichungchi` (`PK_iLoaichungchiID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_chungchi_ibfk_2` FOREIGN KEY (`FK_iNhanvienID`) REFERENCES `tbl_nhanvien` (`PK_iNhanvienID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_chungchi_ibfk_3` FOREIGN KEY (`FK_iNguoiThemID`) REFERENCES `tbl_nhanvien` (`PK_iNhanvienID`) ON UPDATE CASCADE;

--
-- Constraints for table `tbl_congviec`
--
ALTER TABLE `tbl_congviec`
  ADD CONSTRAINT `tbl_congviec_ibfk_1` FOREIGN KEY (`FK_iNguoiThemCongviecID`) REFERENCES `tbl_nhanvien` (`PK_iNhanvienID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_congviec_ibfk_2` FOREIGN KEY (`FK_iTrangthaiCongviecID`) REFERENCES `dm_trangthai_congviec` (`PK_iTrangthaiCongviecID`) ON UPDATE CASCADE;

--
-- Constraints for table `tbl_donxin_nghiphep`
--
ALTER TABLE `tbl_donxin_nghiphep`
  ADD CONSTRAINT `tbl_donxin_nghiphep_ibfk_1` FOREIGN KEY (`FK_iNhanvienID`) REFERENCES `tbl_nhanvien` (`PK_iNhanvienID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_donxin_nghiphep_ibfk_2` FOREIGN KEY (`FK_iNguoiDuyetID`) REFERENCES `tbl_nhanvien` (`PK_iNhanvienID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_donxin_nghiphep_ibfk_3` FOREIGN KEY (`FK_iTrangthaiDonxinNghiphepID`) REFERENCES `dm_trangthai_donxin_nghiphep` (`PK_iTrangthaiDonxinNghiphepID`) ON UPDATE CASCADE;

--
-- Constraints for table `tbl_hopdong_laodong`
--
ALTER TABLE `tbl_hopdong_laodong`
  ADD CONSTRAINT `tbl_hopdong_laodong_ibfk_1` FOREIGN KEY (`FK_iLoaiHopdongID`) REFERENCES `dm_loaihopdong` (`PK_iLoaiHopdongID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_hopdong_laodong_ibfk_2` FOREIGN KEY (`FK_iNguoiKyID`) REFERENCES `tbl_nhanvien` (`PK_iNhanvienID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_hopdong_laodong_ibfk_3` FOREIGN KEY (`FK_iNhanvienID`) REFERENCES `tbl_nhanvien` (`PK_iNhanvienID`) ON UPDATE CASCADE;

--
-- Constraints for table `tbl_hoso_tuyendung`
--
ALTER TABLE `tbl_hoso_tuyendung`
  ADD CONSTRAINT `tbl_hoso_tuyendung_ibfk_1` FOREIGN KEY (`FK_iNguoiDanhgiaHosoID`) REFERENCES `tbl_nhanvien` (`PK_iNhanvienID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_hoso_tuyendung_ibfk_2` FOREIGN KEY (`FK_iNguoiLuuID`) REFERENCES `tbl_nhanvien` (`PK_iNhanvienID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_hoso_tuyendung_ibfk_3` FOREIGN KEY (`FK_iTrangthaiHosoID`) REFERENCES `dm_trangthai_hoso` (`PK_iTrangthaiHosoID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_hoso_tuyendung_ibfk_4` FOREIGN KEY (`FK_iVitriCongvievID`) REFERENCES `tbl_vitri_congviec` (`PK_iVitriCongviecID`) ON UPDATE CASCADE;

--
-- Constraints for table `tbl_kehoach_tuyendung`
--
ALTER TABLE `tbl_kehoach_tuyendung`
  ADD CONSTRAINT `tbl_kehoach_tuyendung_ibfk_1` FOREIGN KEY (`FK_iNguoiduyetKehoachID`) REFERENCES `tbl_nhanvien` (`PK_iNhanvienID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_kehoach_tuyendung_ibfk_2` FOREIGN KEY (`FK_iNguoilapKehoachID`) REFERENCES `tbl_nhanvien` (`PK_iNhanvienID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_kehoach_tuyendung_ibfk_3` FOREIGN KEY (`FK_iTrangthaiKehoachTuyendungID`) REFERENCES `dm_trangthai_kehoach_tuyendung` (`PK_iTrangthaiKehoachTuyendungID`) ON UPDATE CASCADE;

--
-- Constraints for table `tbl_khenthuong_kyluat`
--
ALTER TABLE `tbl_khenthuong_kyluat`
  ADD CONSTRAINT `tbl_khenthuong_kyluat_ibfk_1` FOREIGN KEY (`FK_iLoaiKhenthuongKyluatID`) REFERENCES `dm_loaikhenthuong_kyluat` (`PK_iLoaiKhenthuongKyluat`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_khenthuong_kyluat_ibfk_2` FOREIGN KEY (`FK_iNguoiduyetID`) REFERENCES `tbl_nhanvien` (`PK_iNhanvienID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_khenthuong_kyluat_ibfk_3` FOREIGN KEY (`FK_iNguoiLapID`) REFERENCES `tbl_nhanvien` (`PK_iNhanvienID`) ON UPDATE CASCADE;

--
-- Constraints for table `tbl_luong`
--
ALTER TABLE `tbl_luong`
  ADD CONSTRAINT `tbl_luong_ibfk_1` FOREIGN KEY (`FK_iNguoiLapID`) REFERENCES `tbl_nhanvien` (`PK_iNhanvienID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_luong_ibfk_2` FOREIGN KEY (`FK_iNhanvienID`) REFERENCES `tbl_nhanvien` (`PK_iNhanvienID`) ON UPDATE CASCADE;

--
-- Constraints for table `tbl_muchue`
--
ALTER TABLE `tbl_muchue`
  ADD CONSTRAINT `tbl_muchue_ibfk_1` FOREIGN KEY (`FK_iNguoiTao`) REFERENCES `tbl_nhanvien` (`PK_iNhanvienID`) ON UPDATE CASCADE;

--
-- Constraints for table `tbl_ngaynghi_trongnam`
--
ALTER TABLE `tbl_ngaynghi_trongnam`
  ADD CONSTRAINT `tbl_ngaynghi_trongnam_ibfk_1` FOREIGN KEY (`FK_iNguoitaoID`) REFERENCES `tbl_nhanvien` (`PK_iNhanvienID`) ON UPDATE CASCADE;

--
-- Constraints for table `tbl_phancong_congviec`
--
ALTER TABLE `tbl_phancong_congviec`
  ADD CONSTRAINT `tbl_phancong_congviec_ibfk_1` FOREIGN KEY (`FK_iDanhgiaCongviec`) REFERENCES `dm_danhgia_congviec` (`PK_iDanhgiaCongviecID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_phancong_congviec_ibfk_2` FOREIGN KEY (`FK_iNguoiPhancongID`) REFERENCES `tbl_nhanvien` (`PK_iNhanvienID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_phancong_congviec_ibfk_3` FOREIGN KEY (`FK_iTrangthaiPhancongCongviecID`) REFERENCES `dm_trangthai_phancong_congviec` (`PK_iTrangthaiPhancongCongviecID`) ON UPDATE CASCADE;

--
-- Constraints for table `tbl_quatrinh_lamviec`
--
ALTER TABLE `tbl_quatrinh_lamviec`
  ADD CONSTRAINT `tbl_quatrinh_lamviec_ibfk_1` FOREIGN KEY (`FK_iNguoiChuyenID`) REFERENCES `tbl_nhanvien` (`PK_iNhanvienID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_quatrinh_lamviec_ibfk_2` FOREIGN KEY (`FK_iNhanvienID`) REFERENCES `tbl_nhanvien` (`PK_iNhanvienID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_quatrinh_lamviec_ibfk_3` FOREIGN KEY (`FK_iVitriCongviecID`) REFERENCES `tbl_vitri_congviec` (`PK_iVitriCongviecID`) ON UPDATE CASCADE;

--
-- Constraints for table `tbl_quyetdinh_tuyendung`
--
ALTER TABLE `tbl_quyetdinh_tuyendung`
  ADD CONSTRAINT `tbl_quyetdinh_tuyendung_ibfk_1` FOREIGN KEY (`FK_iNguoiDuyetQuyetdinhTuyendungID`) REFERENCES `tbl_nhanvien` (`PK_iNhanvienID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_quyetdinh_tuyendung_ibfk_2` FOREIGN KEY (`FK_iNguoiLapQuyetdinhTuyendungID`) REFERENCES `tbl_nhanvien` (`PK_iNhanvienID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_quyetdinh_tuyendung_ibfk_3` FOREIGN KEY (`FK_iTrangthaiQuyetdinhTuyendungID`) REFERENCES `dm_trangthai_quyetdinh_tuyendung` (`PK_iTrangthaiQuyetdinhTuyendungID`) ON UPDATE CASCADE;

--
-- Constraints for table `tbl_taikhoan`
--
ALTER TABLE `tbl_taikhoan`
  ADD CONSTRAINT `tbl_taikhoan_ibfk_1` FOREIGN KEY (`FK_iNguoiCapID`) REFERENCES `tbl_nhanvien` (`PK_iNhanvienID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_taikhoan_ibfk_2` FOREIGN KEY (`FK_iNhanvienID`) REFERENCES `tbl_nhanvien` (`PK_iNhanvienID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_taikhoan_ibfk_3` FOREIGN KEY (`FK_iQuyenID`) REFERENCES `dm_quyen` (`PK_iQuyenID`) ON UPDATE CASCADE;

--
-- Constraints for table `tbl_thoigian_lamviec`
--
ALTER TABLE `tbl_thoigian_lamviec`
  ADD CONSTRAINT `tbl_thoigian_lamviec_ibfk_1` FOREIGN KEY (`FK_iBophanID`) REFERENCES `tbl_bophan` (`PK_iBophanID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_thoigian_lamviec_ibfk_2` FOREIGN KEY (`FK_iNguoiTao`) REFERENCES `tbl_nhanvien` (`PK_iNhanvienID`) ON UPDATE CASCADE;

--
-- Constraints for table `tbl_vitri_congviec`
--
ALTER TABLE `tbl_vitri_congviec`
  ADD CONSTRAINT `tbl_vitri_congviec_ibfk_1` FOREIGN KEY (`FK_iBophanID`) REFERENCES `tbl_bophan` (`PK_iBophanID`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
