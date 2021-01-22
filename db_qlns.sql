-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 22, 2021 at 03:00 PM
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
-- Table structure for table `dm_quyen`
--

CREATE TABLE `dm_quyen` (
  `PK_iQuyenID` tinyint(4) NOT NULL,
  `sTenQuyen` varchar(50) COLLATE utf8_unicode_ci NOT NULL
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
  `FK_iLoaiChungchi` int(11) NOT NULL,
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
  `FK_iTrangthaiHosoID` int(11) NOT NULL,
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
  `FK_iTrangthaiKehoachID` int(11) NOT NULL,
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
  `FK_iDanhmucKhenthuongKyluatID` tinyint(4) NOT NULL,
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
  `FK_INguoiLapQuyetdinhTuyendungID` int(11) NOT NULL,
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
  `PK_iVitriCongviecID` bigint(11) NOT NULL,
  `sTenVitriCongviec` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `FK_iBophanID` int(11) NOT NULL,
  `iThutuVitriCongviec` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dm_quyen`
--
ALTER TABLE `dm_quyen`
  ADD PRIMARY KEY (`PK_iQuyenID`);

--
-- Indexes for table `tbl_bangchamcong`
--
ALTER TABLE `tbl_bangchamcong`
  ADD PRIMARY KEY (`PK_sBangChamcongID`);

--
-- Indexes for table `tbl_bantin_tuyendung`
--
ALTER TABLE `tbl_bantin_tuyendung`
  ADD PRIMARY KEY (`PK_iBantinTuyendungID`);

--
-- Indexes for table `tbl_bophan`
--
ALTER TABLE `tbl_bophan`
  ADD PRIMARY KEY (`PK_iBophanID`);

--
-- Indexes for table `tbl_chitiet_kehoach_tuyendung`
--
ALTER TABLE `tbl_chitiet_kehoach_tuyendung`
  ADD PRIMARY KEY (`PK_iChitietKehoachTuyendungID`);

--
-- Indexes for table `tbl_chucnang`
--
ALTER TABLE `tbl_chucnang`
  ADD PRIMARY KEY (`PK_sChucnangID`);

--
-- Indexes for table `tbl_chungchi`
--
ALTER TABLE `tbl_chungchi`
  ADD PRIMARY KEY (`PK_iChungchiID`);

--
-- Indexes for table `tbl_congviec`
--
ALTER TABLE `tbl_congviec`
  ADD PRIMARY KEY (`PK_iCongviecID`);

--
-- Indexes for table `tbl_donxin_nghiphep`
--
ALTER TABLE `tbl_donxin_nghiphep`
  ADD PRIMARY KEY (`PK_iDonxinNghiphepID`);

--
-- Indexes for table `tbl_hopdong_laodong`
--
ALTER TABLE `tbl_hopdong_laodong`
  ADD PRIMARY KEY (`PK_iHopdongLaodongID`);

--
-- Indexes for table `tbl_hoso_tuyendung`
--
ALTER TABLE `tbl_hoso_tuyendung`
  ADD PRIMARY KEY (`PK_iHosoTuyendungID`);

--
-- Indexes for table `tbl_kehoach_tuyendung`
--
ALTER TABLE `tbl_kehoach_tuyendung`
  ADD PRIMARY KEY (`PK_iKehoachTuyendungID`);

--
-- Indexes for table `tbl_khenthuong_kyluat`
--
ALTER TABLE `tbl_khenthuong_kyluat`
  ADD PRIMARY KEY (`PK_iKhenthuongKyluatID`);

--
-- Indexes for table `tbl_luong`
--
ALTER TABLE `tbl_luong`
  ADD PRIMARY KEY (`PK_iLuongID`);

--
-- Indexes for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  ADD PRIMARY KEY (`PK_iMenuID`);

--
-- Indexes for table `tbl_muchue`
--
ALTER TABLE `tbl_muchue`
  ADD PRIMARY KEY (`PK_iMucThue`);

--
-- Indexes for table `tbl_ngaynghi_trongnam`
--
ALTER TABLE `tbl_ngaynghi_trongnam`
  ADD PRIMARY KEY (`PK_iNgaynghiTrongnamID`);

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
  ADD PRIMARY KEY (`PK_iNhanvienID`);

--
-- Indexes for table `tbl_quatrinh_lamviec`
--
ALTER TABLE `tbl_quatrinh_lamviec`
  ADD PRIMARY KEY (`PK_iQuatrinhLamviecID`);

--
-- Indexes for table `tbl_quyen_chucnang`
--
ALTER TABLE `tbl_quyen_chucnang`
  ADD PRIMARY KEY (`PK_iQuyenID`,`PK_sChucnangID`);

--
-- Indexes for table `tbl_quyetdinh_tuyendung`
--
ALTER TABLE `tbl_quyetdinh_tuyendung`
  ADD PRIMARY KEY (`PK_iQuyetdinhTuyendungID`);

--
-- Indexes for table `tbl_taikhoan`
--
ALTER TABLE `tbl_taikhoan`
  ADD PRIMARY KEY (`PK_iTaikhoanID`),
  ADD UNIQUE KEY `sTenTaikhoan` (`sTenTaikhoan`);

--
-- Indexes for table `tbl_thoigian_lamviec`
--
ALTER TABLE `tbl_thoigian_lamviec`
  ADD PRIMARY KEY (`PK_iThoigianLamviecID`);

--
-- Indexes for table `tbl_vitri_congviec`
--
ALTER TABLE `tbl_vitri_congviec`
  ADD PRIMARY KEY (`PK_iVitriCongviecID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dm_quyen`
--
ALTER TABLE `dm_quyen`
  MODIFY `PK_iQuyenID` tinyint(4) NOT NULL AUTO_INCREMENT;

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
  MODIFY `PK_iVitriCongviecID` bigint(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
