-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 23, 2021 at 06:41 AM
-- Server version: 10.4.17-MariaDB-log
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `danhgia_congviec`
--

-- --------------------------------------------------------

--
-- Table structure for table `dm_danhgia_congviec`
--

CREATE TABLE `dm_danhgia_congviec` (
  `PK_iDanhgiaCongviecID` tinyint(4) NOT NULL,
  `sTenDanhgiaCongviec` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `iSodiem` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dm_trangthai_congviec`
--

CREATE TABLE `dm_trangthai_congviec` (
  `PK_iTrangthaiCongviecID` tinyint(4) NOT NULL,
  `sTenTrangthaiCongviec` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dm_trangthai_congviec`
--

INSERT INTO `dm_trangthai_congviec` (`PK_iTrangthaiCongviecID`, `sTenTrangthaiCongviec`) VALUES
(1, 'Chưa phân công'),
(2, 'Đã phân công'),
(3, 'Hủy');

-- --------------------------------------------------------

--
-- Table structure for table `dm_trangthai_phancong_congviec`
--

CREATE TABLE `dm_trangthai_phancong_congviec` (
  `PK_iTrangthaiPhancongCongviecID` tinyint(4) NOT NULL,
  `sTenTrangthaiPhancongCongviec` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dm_trangthai_phancong_congviec`
--

INSERT INTO `dm_trangthai_phancong_congviec` (`PK_iTrangthaiPhancongCongviecID`, `sTenTrangthaiPhancongCongviec`) VALUES
(1, 'Đang thực hiện'),
(2, 'Tạm dừng'),
(3, 'Hủy'),
(4, 'Hoàn thành'),
(5, 'Đã kiểm tra & đánh giá');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bophan`
--

CREATE TABLE `tbl_bophan` (
  `PK_iBophanID` bigint(20) NOT NULL,
  `sTenBophan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `iThutuBophan` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_congviec`
--

CREATE TABLE `tbl_congviec` (
  `PK_iCongviecID` bigint(20) NOT NULL,
  `sTenCongviecID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sNoidungCongviec` text COLLATE utf8_unicode_ci NOT NULL,
  `FK_iNguoiThemCongviecID` bigint(20) NOT NULL,
  `tThoigianThemCongviec` datetime NOT NULL,
  `FK_iTrangthaiCongviecID` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_nhanvien`
--

CREATE TABLE `tbl_nhanvien` (
  `_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PK_iNhanvienID` bigint(20) NOT NULL,
  `sMaNhanvien` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `sHoten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sTen` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `dNgaysinh` date NOT NULL,
  `sNoisinh` text COLLATE utf8_unicode_ci NOT NULL,
  `bGioitinh` bit(1) NOT NULL,
  `sNguyenquan` text COLLATE utf8_unicode_ci NOT NULL,
  `sDiachi` text COLLATE utf8_unicode_ci NOT NULL,
  `sDienthoai` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `sEmail` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sDuongdanAnhdaidien` text COLLATE utf8_unicode_ci NOT NULL,
  `FK_iNguoithemID` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_phancong_congviec`
--

CREATE TABLE `tbl_phancong_congviec` (
  `PK_iNhanvienID` bigint(20) NOT NULL,
  `PK_iCongviecID` bigint(20) NOT NULL,
  `dNgayBatdauCongviec` date NOT NULL,
  `dNgayKethucCongviec` date NOT NULL,
  `FK_iNguoiPhancongID` bigint(20) NOT NULL,
  `tThoigianPhancong` datetime NOT NULL,
  `FK_iTrangthaiPhancongCongviecID` tinyint(4) NOT NULL,
  `FK_iDanhgiaCongviec` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_quatrinh_lamviec`
--

CREATE TABLE `tbl_quatrinh_lamviec` (
  `PK_iQuatrinhLamviecID` bigint(20) NOT NULL,
  `FK_iNhanvienID` bigint(20) NOT NULL,
  `dNgayBatdau` date NOT NULL,
  `dNgayKethuc` date DEFAULT NULL,
  `FK_iVitriCongviecID` bigint(20) NOT NULL,
  `FK_iNguoiChuyenID` bigint(20) NOT NULL,
  `tThoigianChuyen` datetime NOT NULL,
  `sGhichu` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vitri_congviec`
--

CREATE TABLE `tbl_vitri_congviec` (
  `PK_iVitriCongviecID` bigint(20) NOT NULL,
  `sTenVitriCongviec` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `FK_iBophanID` bigint(20) NOT NULL,
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
-- Indexes for table `dm_trangthai_congviec`
--
ALTER TABLE `dm_trangthai_congviec`
  ADD PRIMARY KEY (`PK_iTrangthaiCongviecID`);

--
-- Indexes for table `dm_trangthai_phancong_congviec`
--
ALTER TABLE `dm_trangthai_phancong_congviec`
  ADD PRIMARY KEY (`PK_iTrangthaiPhancongCongviecID`);

--
-- Indexes for table `tbl_bophan`
--
ALTER TABLE `tbl_bophan`
  ADD PRIMARY KEY (`PK_iBophanID`);

--
-- Indexes for table `tbl_congviec`
--
ALTER TABLE `tbl_congviec`
  ADD PRIMARY KEY (`PK_iCongviecID`),
  ADD KEY `FK_iNguoiThemCongviecID` (`FK_iNguoiThemCongviecID`),
  ADD KEY `tbl_congviec_ibfk_2` (`FK_iTrangthaiCongviecID`);

--
-- Indexes for table `tbl_nhanvien`
--
ALTER TABLE `tbl_nhanvien`
  ADD PRIMARY KEY (`PK_iNhanvienID`),
  ADD UNIQUE KEY `sDienthoai` (`sDienthoai`),
  ADD UNIQUE KEY `sMaNhanvien` (`sMaNhanvien`),
  ADD UNIQUE KEY `sEmail` (`sEmail`);

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
  MODIFY `PK_iDanhgiaCongviecID` tinyint(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dm_trangthai_congviec`
--
ALTER TABLE `dm_trangthai_congviec`
  MODIFY `PK_iTrangthaiCongviecID` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `dm_trangthai_phancong_congviec`
--
ALTER TABLE `dm_trangthai_phancong_congviec`
  MODIFY `PK_iTrangthaiPhancongCongviecID` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_bophan`
--
ALTER TABLE `tbl_bophan`
  MODIFY `PK_iBophanID` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_congviec`
--
ALTER TABLE `tbl_congviec`
  MODIFY `PK_iCongviecID` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_phancong_congviec`
--
ALTER TABLE `tbl_phancong_congviec`
  MODIFY `PK_iNhanvienID` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_quatrinh_lamviec`
--
ALTER TABLE `tbl_quatrinh_lamviec`
  MODIFY `PK_iQuatrinhLamviecID` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_vitri_congviec`
--
ALTER TABLE `tbl_vitri_congviec`
  MODIFY `PK_iVitriCongviecID` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_congviec`
--
ALTER TABLE `tbl_congviec`
  ADD CONSTRAINT `tbl_congviec_ibfk_1` FOREIGN KEY (`FK_iNguoiThemCongviecID`) REFERENCES `tbl_nhanvien` (`PK_iNhanvienID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_congviec_ibfk_2` FOREIGN KEY (`FK_iTrangthaiCongviecID`) REFERENCES `dm_trangthai_congviec` (`PK_iTrangthaiCongviecID`) ON UPDATE CASCADE;

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
-- Constraints for table `tbl_vitri_congviec`
--
ALTER TABLE `tbl_vitri_congviec`
  ADD CONSTRAINT `tbl_vitri_congviec_ibfk_1` FOREIGN KEY (`FK_iBophanID`) REFERENCES `tbl_bophan` (`PK_iBophanID`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
