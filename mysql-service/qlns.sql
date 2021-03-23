-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 23, 2021 at 12:33 PM
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
-- Database: `qlns`
--

-- --------------------------------------------------------

--
-- Table structure for table `dm_danhgia_congviec`
--

CREATE TABLE `dm_danhgia_congviec` (
  `PK_iDanhgiaCongviecID` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `sTenDanhgiaCongviec` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `iSodiem` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dm_trangthai_congviec`
--

CREATE TABLE `dm_trangthai_congviec` (
  `PK_iTrangthaiCongviecID` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `sTenTrangthaiCongviec` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dm_trangthai_congviec`
--

INSERT INTO `dm_trangthai_congviec` (`PK_iTrangthaiCongviecID`, `sTenTrangthaiCongviec`) VALUES
('1', 'Chưa phân công'),
('2', 'Đã phân công'),
('3', 'Hủy');

-- --------------------------------------------------------

--
-- Table structure for table `dm_trangthai_phancong_congviec`
--

CREATE TABLE `dm_trangthai_phancong_congviec` (
  `PK_iTrangthaiPhancongCongviecID` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `sTenTrangthaiPhancongCongviec` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dm_trangthai_phancong_congviec`
--

INSERT INTO `dm_trangthai_phancong_congviec` (`PK_iTrangthaiPhancongCongviecID`, `sTenTrangthaiPhancongCongviec`) VALUES
('1', 'Đang thực hiện'),
('2', 'Tạm dừng'),
('3', 'Hủy'),
('4', 'Hoàn thành'),
('5', 'Đã kiểm tra & đánh giá');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bophan`
--

CREATE TABLE `tbl_bophan` (
  `_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `PK_iBophanID` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `sTenBophan` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `iThutuBophan` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_bophan`
--

INSERT INTO `tbl_bophan` (`_id`, `PK_iBophanID`, `sTenBophan`, `iThutuBophan`) VALUES
('60380bd10e583f2e7036ab1a', '1614285777577', 'BP tuyển dụng', '1'),
('60380bd10e583f2e7036ab1b', '1614285777578', 'BP lương thưởng và phúc lợi', '2'),
('60380bd10e583f2e7036ab1c', '1614285777579', 'BP hành chính', '3'),
('60380bd10e583f2e7036ab1d', '1614285777580', 'BP kế hoạch', '4'),
('60380bd10e583f2e7036ab1e', '1614285777581', 'BP kế toán', '5'),
('60380bd10e583f2e7036ab1f', '1614285777582', 'BP Marketing', '6'),
('60380bd10e583f2e7036ab20', '1614285777583', 'BP Sale', '7'),
('60380bd10e583f2e7036ab21', '1614285777584', 'BP kho', '8'),
('60380bd10e583f2e7036ab22', '1614285777585', 'BP chăm sóc khách hàng', '9'),
('605558caae514e0020080b97', '1616206026403', 'Điều hành', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_congviec`
--

CREATE TABLE `tbl_congviec` (
  `PK_iCongviecID` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `sTenCongviecID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sNoidungCongviec` text COLLATE utf8_unicode_ci NOT NULL,
  `FK_iNguoiThemCongviecID` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `tThoigianThemCongviec` datetime NOT NULL,
  `FK_iTrangthaiCongviecID` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_nhanvien`
--

CREATE TABLE `tbl_nhanvien` (
  `_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `PK_iNhanvienID` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
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

--
-- Dumping data for table `tbl_nhanvien`
--

INSERT INTO `tbl_nhanvien` (`_id`, `PK_iNhanvienID`, `sMaNhanvien`, `sHoten`, `sTen`, `dNgaysinh`, `sNoisinh`, `bGioitinh`, `sNguyenquan`, `sDiachi`, `sDienthoai`, `sEmail`, `sDuongdanAnhdaidien`, `FK_iNguoithemID`) VALUES
('604e50f39c8b96835ba9ff97', '1615745267125', 'CB3006', 'Bùi Văn Hùng', 'Hùng', '1999-06-29', 'Vĩnh Đồng, Kim Bôi, Hòa Bình', b'1', 'Vĩnh Đồng, Kim Bôi, Hòa Bình', 'Vĩnh Đồng, Kim Bôi, Hòa Bình', '0329-222-617', 'bacdau0302@gmail.com', './assets/avatar/avatar_1615745267125_1615745267.1910477.png', ''),
('60555964d242573c7742cf34', '1616206180170', 'GĐ0908', 'Thi Đình Nguyễn', 'Đình', '1999-08-08', 'Hà Nội', b'1', 'Nguyễn Khoái, Vĩnh Tuy, Hà Nội', 'Nguyễn Khoái, Vĩnh Tuy, Hà Nội', '0990-838-615', 'thind@gmail.com', '', '604e50f39c8b96835ba9ff97'),
('605569230fe553fa0f49c29e', '1616210211896', 'KT0927', 'Nguyễn Duy Thành', 'Thành', '1998-05-06', 'Hà Nội', b'1', 'Hà Nội', 'Hà Tây, Hà Nội', '0908-981-725', 'duythanh@gmail.com', '', '604e50f39c8b96835ba9ff97');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_phancong_congviec`
--

CREATE TABLE `tbl_phancong_congviec` (
  `PK_iNhanvienID` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `PK_iCongviecID` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `dNgayBatdauCongviec` date NOT NULL,
  `dNgayKethucCongviec` date NOT NULL,
  `FK_iNguoiPhancongID` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `tThoigianPhancong` datetime NOT NULL,
  `FK_iTrangthaiPhancongCongviecID` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `FK_iDanhgiaCongviec` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_quatrinh_lamviec`
--

CREATE TABLE `tbl_quatrinh_lamviec` (
  `_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `PK_iQuatrinhLamviecID` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `FK_iNhanvienID` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `dNgayBatdau` date NOT NULL,
  `dNgayKethuc` date DEFAULT NULL,
  `FK_iVitriCongviecID` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `FK_iNguoiChuyenID` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `tThoigianChuyen` datetime NOT NULL,
  `sGhichu` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_quatrinh_lamviec`
--

INSERT INTO `tbl_quatrinh_lamviec` (`_id`, `PK_iQuatrinhLamviecID`, `FK_iNhanvienID`, `dNgayBatdau`, `dNgayKethuc`, `FK_iVitriCongviecID`, `FK_iNguoiChuyenID`, `tThoigianChuyen`, `sGhichu`) VALUES
('60555964d242573c7742cf35', '1616206180170', '60555964d242573c7742cf34', '2020-12-10', '0000-00-00', '605558efae514e0020080b98', '604e50f39c8b96835ba9ff97', '2021-03-20 02:09:40', NULL),
('605569240fe553fa0f49c29f', '1616210211897', '605569230fe553fa0f49c29e', '2020-06-09', '0000-00-00', '60380bf70e583f2e7036ab24', '604e50f39c8b96835ba9ff97', '2021-03-20 03:16:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vitri_congviec`
--

CREATE TABLE `tbl_vitri_congviec` (
  `_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `PK_iVitriCongviecID` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `sTenVitriCongviec` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `FK_iBophanID` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `iThutuVitriCongviec` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_vitri_congviec`
--

INSERT INTO `tbl_vitri_congviec` (`_id`, `PK_iVitriCongviecID`, `sTenVitriCongviec`, `FK_iBophanID`, `iThutuVitriCongviec`) VALUES
('60380beb0e583f2e7036ab23', '1614285803089', 'Nhân viên sale', '60380bd10e583f2e7036ab20', '0'),
('60380bf70e583f2e7036ab24', '1614285815153', 'Nhân viên kế toán', '60380bd10e583f2e7036ab1e', '1'),
('6039f8aab6554c1be3312055', '1614411946849', 'Nhân viên Marketing', '60380bd10e583f2e7036ab1f', '2'),
('6039f8d3b6554c1be3312056', '1614411987948', 'Chuyên viên Tư vấn khách hàng', '60380bd10e583f2e7036ab22', '3'),
('6039f8fcb6554c1be3312057', '1614412028859', 'Chuyên viên Tư vấn và chốt đơn', '60380bd10e583f2e7036ab20', '4'),
('605558efae514e0020080b98', '1616206063215', 'Giám đốc', '605558caae514e0020080b97', '5');

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
  ADD PRIMARY KEY (`_id`);

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
  ADD UNIQUE KEY `sEmail` (`sEmail`),
  ADD UNIQUE KEY `_id` (`_id`);

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
  ADD PRIMARY KEY (`_id`),
  ADD KEY `FK_iNguoiChuyenID` (`FK_iNguoiChuyenID`),
  ADD KEY `FK_iNhanvienID` (`FK_iNhanvienID`),
  ADD KEY `FK_iVitriCongviecID` (`FK_iVitriCongviecID`);

--
-- Indexes for table `tbl_vitri_congviec`
--
ALTER TABLE `tbl_vitri_congviec`
  ADD PRIMARY KEY (`_id`),
  ADD UNIQUE KEY `_id` (`_id`),
  ADD KEY `FK_iBophanID` (`FK_iBophanID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_congviec`
--
ALTER TABLE `tbl_congviec`
  ADD CONSTRAINT `tbl_congviec_ibfk_1` FOREIGN KEY (`FK_iNguoiThemCongviecID`) REFERENCES `tbl_nhanvien` (`_id`) ON UPDATE CASCADE,
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
  ADD CONSTRAINT `tbl_quatrinh_lamviec_ibfk_1` FOREIGN KEY (`FK_iNguoiChuyenID`) REFERENCES `tbl_nhanvien` (`_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_quatrinh_lamviec_ibfk_2` FOREIGN KEY (`FK_iNhanvienID`) REFERENCES `tbl_nhanvien` (`_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_quatrinh_lamviec_ibfk_3` FOREIGN KEY (`FK_iVitriCongviecID`) REFERENCES `tbl_vitri_congviec` (`_id`) ON UPDATE CASCADE;

--
-- Constraints for table `tbl_vitri_congviec`
--
ALTER TABLE `tbl_vitri_congviec`
  ADD CONSTRAINT `tbl_vitri_congviec_ibfk_1` FOREIGN KEY (`FK_iBophanID`) REFERENCES `tbl_bophan` (`_id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
