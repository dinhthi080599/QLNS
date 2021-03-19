/*
 Navicat Premium Data Transfer

 Source Server         : QLNS
 Source Server Type    : PostgreSQL
 Source Server Version : 130001
 Source Host           : localhost:5432
 Source Catalog        : QLNS
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 130001
 File Encoding         : 65001

 Date: 19/03/2021 23:02:23
*/


-- ----------------------------
-- Sequence structure for tbl_bophan_pk_ibophanid_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "tbl_bophan_pk_ibophanid_seq";
CREATE SEQUENCE "tbl_bophan_pk_ibophanid_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for tbl_donxin_nghiphep_PK_iDonxinNghiphepID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "tbl_donxin_nghiphep_PK_iDonxinNghiphepID_seq";
CREATE SEQUENCE "tbl_donxin_nghiphep_PK_iDonxinNghiphepID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for tbl_ngaynghi_trongnam_PK_iNgaynghiTrongnamID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "tbl_ngaynghi_trongnam_PK_iNgaynghiTrongnamID_seq";
CREATE SEQUENCE "tbl_ngaynghi_trongnam_PK_iNgaynghiTrongnamID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for tbl_nhanvien_PK_iNhanvienID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "tbl_nhanvien_PK_iNhanvienID_seq";
CREATE SEQUENCE "tbl_nhanvien_PK_iNhanvienID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for tbl_quatrinh_lamviec_PK_iQuatrinhLamviecID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "tbl_quatrinh_lamviec_PK_iQuatrinhLamviecID_seq";
CREATE SEQUENCE "tbl_quatrinh_lamviec_PK_iQuatrinhLamviecID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for tbl_test__id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "tbl_test__id_seq";
CREATE SEQUENCE "tbl_test__id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for tbl_thoigian_lamviec_pk_ithoigianlamviecid_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "tbl_thoigian_lamviec_pk_ithoigianlamviecid_seq";
CREATE SEQUENCE "tbl_thoigian_lamviec_pk_ithoigianlamviecid_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for tbl_vitri_congviec_PK_iVitriCongviecID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "tbl_vitri_congviec_PK_iVitriCongviecID_seq";
CREATE SEQUENCE "tbl_vitri_congviec_PK_iVitriCongviecID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Table structure for dm_trangthai_donxin_nghiphep
-- ----------------------------
DROP TABLE IF EXISTS "dm_trangthai_donxin_nghiphep";
CREATE TABLE "dm_trangthai_donxin_nghiphep" (
  "PK_iTrangthaiDonxinNghiphepID" int2 NOT NULL,
  "sTenTrangthaiDonxinNghiphep" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of dm_trangthai_donxin_nghiphep
-- ----------------------------
BEGIN;
INSERT INTO "dm_trangthai_donxin_nghiphep" VALUES (0, 'Chưa duyệt');
INSERT INTO "dm_trangthai_donxin_nghiphep" VALUES (1, 'Đã duyệt');
INSERT INTO "dm_trangthai_donxin_nghiphep" VALUES (2, 'Đã hủy');
COMMIT;

-- ----------------------------
-- Table structure for tbl_bangchamcong
-- ----------------------------
DROP TABLE IF EXISTS "tbl_bangchamcong";
CREATE TABLE "tbl_bangchamcong" (
  "PK_sBangChamcongID" varchar(30) COLLATE "pg_catalog"."default" NOT NULL,
  "FK_iNhanvienID" int8,
  "tThoigianVaolamSang" varchar(255) COLLATE "pg_catalog"."default",
  "tThoigianNghiSang" varchar(255) COLLATE "pg_catalog"."default",
  "tThoigianVaolamChieu" varchar(255) COLLATE "pg_catalog"."default",
  "tThoigianNghiChieu" varchar(255) COLLATE "pg_catalog"."default",
  "tThoigianVaolamToi" varchar(255) COLLATE "pg_catalog"."default",
  "tThoigianNghiToi" varchar(255) COLLATE "pg_catalog"."default",
  "dNgayChamcong" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of tbl_bangchamcong
-- ----------------------------
BEGIN;
INSERT INTO "tbl_bangchamcong" VALUES ('2021_1_1_3', 3, '08:49:05', '12:10:35', '13:06:44', '15:07:55', '', '', '01-01-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_1_2_3', 3, '07:58:57', '12:08:09', '14:41:35', '15:10:31', '', '', '02-01-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_1_3_3', 3, '07:19:00', '12:06:58', '13:10:15', '15:09:13', '', '', '03-01-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_1_4_3', 3, '07:31:59', '12:06:58', '13:18:30', '15:10:09', '', '', '04-01-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_1_5_3', 3, '07:31:39', '12:10:34', '13:02:18', '15:01:56', '', '', '05-01-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_1_6_3', 3, '08:46:36', '12:01:26', '13:54:57', '15:09:30', '', '', '06-01-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_1_7_3', 3, '07:13:38', '12:02:01', '13:46:00', '15:07:39', '', '', '07-01-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_1_8_3', 3, '08:30:47', '12:01:49', '13:56:57', '15:08:19', '', '', '08-01-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_1_9_3', 3, '07:19:19', '12:02:11', '13:23:24', '15:00:14', '', '', '09-01-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_1_10_3', 3, '07:05:13', '12:06:21', '13:11:30', '15:00:08', '', '', '10-01-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_1_11_3', 3, '08:42:57', '12:09:51', '13:57:31', '15:08:48', '', '', '11-01-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_1_12_3', 3, '08:45:18', '12:07:09', '13:42:58', '15:09:17', '', '', '12-01-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_1_13_3', 3, '07:29:43', '12:05:56', '13:38:42', '15:03:30', '', '', '13-01-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_1_14_3', 3, '07:34:08', '12:00:53', '13:11:28', '15:03:45', '', '', '14-01-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_1_15_3', 3, '08:56:47', '12:05:19', '13:44:15', '15:08:15', '', '', '15-01-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_1_16_3', 3, '08:31:27', '12:01:26', '14:51:31', '15:06:06', '', '', '16-01-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_1_17_3', 3, '07:37:39', '12:07:54', '13:20:13', '15:10:30', '', '', '17-01-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_1_18_3', 3, '08:42:23', '12:06:04', '13:45:00', '15:00:58', '', '', '18-01-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_1_19_3', 3, '07:48:14', '12:08:22', '13:40:38', '15:08:41', '', '', '19-01-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_1_20_3', 3, '08:14:08', '12:09:20', '13:39:43', '15:02:21', '', '', '20-01-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_1_21_3', 3, '07:54:08', '12:02:50', '13:18:37', '15:03:54', '', '', '21-01-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_1_22_3', 3, '07:42:02', '12:08:15', '13:59:48', '15:06:36', '', '', '22-01-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_1_23_3', 3, '08:35:21', '12:03:39', '14:45:49', '15:03:42', '', '', '23-01-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_1_24_3', 3, '07:04:33', '12:07:02', '13:19:16', '15:02:39', '', '', '24-01-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_1_25_3', 3, '07:43:43', '12:03:33', '13:01:02', '15:08:04', '', '', '25-01-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_1_26_3', 3, '07:55:31', '12:01:13', '14:56:23', '15:04:59', '', '', '26-01-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_1_27_3', 3, '08:12:28', '12:04:29', '13:18:09', '15:05:27', '', '', '27-01-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_1_28_3', 3, '08:30:48', '12:00:01', '13:22:28', '15:05:48', '', '', '28-01-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_1_29_3', 3, '07:23:01', '12:10:07', '13:22:48', '15:08:17', '', '', '29-01-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_1_30_3', 3, '08:44:35', '12:10:38', '13:38:31', '15:04:42', '', '', '30-01-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_1_31_3', 3, '08:02:40', '12:04:54', '13:09:48', '15:03:49', '', '', '31-01-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_2_1_1', 1, '07:21:42', '12:02:47', '13:25:58', '15:02:35', '', '', '01-02-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_2_1_2', 2, '07:02:56', '12:10:14', '14:45:03', '15:06:23', '', '', '01-02-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_2_1_3', 3, '07:04:10', '12:06:49', '13:31:48', '15:00:31', '', '', '01-02-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_2_2_1', 1, '07:19:41', '12:07:09', '13:27:42', '15:04:12', '', '', '02-02-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_2_2_2', 2, '08:15:15', '12:03:51', '13:26:14', '15:08:29', '', '', '02-02-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_2_2_3', 3, '07:48:57', '12:07:33', '14:22:30', '15:04:23', '', '', '02-02-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_2_3_1', 1, '08:59:46', '12:04:53', '14:33:39', '15:06:46', '', '', '03-02-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_2_3_2', 2, '07:29:19', '12:05:09', '13:43:47', '15:01:43', '', '', '03-02-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_2_3_3', 3, '07:12:42', '12:05:04', '14:17:36', '15:02:56', '', '', '03-02-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_2_4_1', 1, '07:17:11', '12:01:37', '14:05:26', '15:07:48', '', '', '04-02-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_2_4_2', 2, '08:42:50', '12:06:13', '13:31:39', '15:00:38', '', '', '04-02-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_2_4_3', 3, '07:46:29', '12:01:43', '14:48:29', '15:10:15', '', '', '04-02-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_2_5_1', 1, '08:56:51', '12:01:56', '13:35:51', '15:00:25', '', '', '05-02-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_2_5_2', 2, '07:23:24', '12:00:41', '14:15:30', '15:04:09', '', '', '05-02-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_2_5_3', 3, '08:15:45', '12:04:12', '13:15:48', '15:06:31', '', '', '05-02-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_2_6_1', 1, '07:27:03', '12:00:58', '13:12:56', '15:10:34', '', '', '06-02-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_2_6_2', 2, '07:01:28', '12:05:04', '13:42:05', '15:10:32', '', '', '06-02-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_2_6_3', 3, '08:34:03', '12:02:11', '13:14:45', '15:10:02', '', '', '06-02-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_2_7_1', 1, '08:32:25', '12:02:32', '13:28:10', '15:07:11', '', '', '07-02-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_2_7_2', 2, '07:01:45', '12:03:48', '13:11:19', '15:07:31', '', '', '07-02-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_2_7_3', 3, '07:06:08', '12:09:49', '13:35:16', '15:01:13', '', '', '07-02-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_2_8_1', 1, '08:31:12', '12:09:51', '14:40:54', '15:01:41', '', '', '08-02-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_2_8_2', 2, '08:28:34', '12:03:45', '13:52:55', '15:06:40', '', '', '08-02-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_2_8_3', 3, '08:32:12', '12:08:45', '13:19:01', '15:06:54', '', '', '08-02-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_2_9_1', 1, '07:31:37', '12:10:51', '14:34:31', '15:02:13', '', '', '09-02-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_2_9_2', 2, '08:27:08', '12:04:10', '13:29:31', '15:07:26', '', '', '09-02-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_2_9_3', 3, '08:11:48', '12:04:36', '13:16:34', '15:02:14', '', '', '09-02-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_2_10_1', 1, '07:37:29', '12:09:04', '14:18:34', '15:00:02', '', '', '10-02-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_2_10_2', 2, '07:07:28', '12:09:47', '13:59:01', '15:05:08', '', '', '10-02-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_2_10_3', 3, '08:47:26', '12:09:20', '14:59:08', '15:05:11', '', '', '10-02-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_2_11_1', 1, '07:19:14', '12:10:33', '13:43:25', '15:01:15', '', '', '11-02-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_2_11_2', 2, '08:15:36', '12:09:42', '13:00:05', '15:03:45', '', '', '11-02-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_2_11_3', 3, '08:40:03', '12:09:33', '13:23:36', '15:08:41', '', '', '11-02-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_2_12_1', 1, '07:44:25', '12:05:17', '13:14:15', '15:09:49', '', '', '12-02-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_2_12_2', 2, '08:50:08', '12:00:02', '13:00:30', '15:03:02', '', '', '12-02-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_2_12_3', 3, '08:21:08', '12:08:51', '13:01:05', '15:06:26', '', '', '12-02-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_2_13_1', 1, '08:16:13', '12:07:52', '13:10:12', '15:08:36', '', '', '13-02-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_2_13_2', 2, '08:16:30', '12:06:51', '13:12:07', '15:04:36', '', '', '13-02-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_2_13_3', 3, '07:16:00', '12:02:49', '13:20:20', '15:02:56', '', '', '13-02-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_2_14_1', 1, '08:32:28', '12:02:06', '13:27:30', '15:08:47', '', '', '14-02-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_2_14_2', 2, '08:05:19', '12:06:04', '13:08:50', '15:07:19', '', '', '14-02-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_2_14_3', 3, '08:41:08', '12:09:51', '13:42:02', '15:00:15', '', '', '14-02-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_2_15_1', 1, '08:20:45', '12:01:58', '13:23:29', '15:03:13', '', '', '15-02-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_2_15_2', 2, '07:52:16', '12:05:48', '13:41:37', '15:08:40', '', '', '15-02-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_2_15_3', 3, '07:45:27', '12:05:28', '13:46:27', '15:07:20', '', '', '15-02-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_2_16_1', 1, '07:13:18', '12:09:23', '13:39:59', '15:10:38', '', '', '16-02-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_2_16_2', 2, '07:35:41', '12:09:54', '13:09:26', '15:03:04', '', '', '16-02-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_2_16_3', 3, '08:41:54', '12:06:56', '14:52:05', '15:01:21', '', '', '16-02-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_2_17_1', 1, '07:06:17', '12:01:01', '13:39:14', '15:03:43', '', '', '17-02-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_2_17_2', 2, '07:52:24', '12:02:50', '14:39:04', '15:06:36', '', '', '17-02-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_2_17_3', 3, '08:25:30', '12:06:12', '14:36:56', '15:03:24', '', '', '17-02-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_2_18_1', 1, '07:15:51', '12:04:06', '14:01:40', '15:03:29', '', '', '18-02-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_2_18_2', 2, '07:34:13', '12:00:41', '13:56:52', '15:06:26', '', '', '18-02-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_2_18_3', 3, '07:09:50', '12:10:56', '13:11:13', '15:05:28', '', '', '18-02-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_2_19_1', 1, '07:59:03', '12:09:00', '13:12:53', '15:05:32', '', '', '19-02-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_2_19_2', 2, '07:02:43', '12:00:13', '14:40:59', '15:05:15', '', '', '19-02-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_2_19_3', 3, '08:44:34', '12:07:27', '13:17:11', '15:07:22', '', '', '19-02-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_2_20_1', 1, '08:50:55', '12:02:48', '14:56:06', '15:01:14', '', '', '20-02-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_2_20_2', 2, '07:32:51', '12:03:40', '13:14:10', '15:04:50', '', '', '20-02-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_2_20_3', 3, '07:33:56', '12:02:33', '13:04:10', '15:07:32', '', '', '20-02-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_2_21_1', 1, '08:32:54', '12:02:01', '13:42:25', '15:02:38', '', '', '21-02-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_2_21_2', 2, '08:50:35', '12:00:28', '13:18:51', '15:08:30', '', '', '21-02-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_2_21_3', 3, '07:36:39', '12:01:40', '13:01:10', '15:05:10', '', '', '21-02-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_2_22_1', 1, '07:59:23', '12:04:07', '13:11:04', '15:04:25', '', '', '22-02-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_2_22_2', 2, '07:03:12', '12:02:09', '13:18:15', '15:02:58', '', '', '22-02-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_2_22_3', 3, '08:09:34', '12:03:03', '13:20:38', '15:05:07', '', '', '22-02-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_2_23_1', 1, '08:01:11', '12:07:17', '13:25:35', '15:09:47', '', '', '23-02-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_2_23_2', 2, '08:33:39', '12:02:01', '13:32:36', '15:06:48', '', '', '23-02-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_2_23_3', 3, '07:40:37', '12:00:53', '13:25:03', '15:09:22', '', '', '23-02-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_2_24_1', 1, '07:48:26', '12:03:08', '14:00:52', '15:05:35', '', '', '24-02-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_2_24_2', 2, '08:04:14', '12:10:38', '13:53:30', '15:05:36', '', '', '24-02-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_2_24_3', 3, '08:45:28', '12:07:07', '13:23:44', '15:02:37', '', '', '24-02-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_2_25_1', 1, '07:58:37', '12:08:16', '13:43:19', '15:00:16', '', '', '25-02-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_2_25_2', 2, '07:13:21', '12:03:38', '13:09:05', '15:10:26', '', '', '25-02-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_2_25_3', 3, '07:39:29', '12:06:27', '13:06:19', '15:10:06', '', '', '25-02-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_2_26_1', 1, '07:59:56', '12:04:12', '13:05:33', '15:03:02', '', '', '26-02-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_2_26_2', 2, '08:23:30', '12:09:55', '14:21:54', '15:07:50', '', '', '26-02-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_2_26_3', 3, '07:38:08', '12:03:17', '13:06:14', '15:05:36', '', '', '26-02-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_2_27_1', 1, '07:12:42', '12:06:18', '13:24:37', '15:01:56', '', '', '27-02-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_2_27_2', 2, '08:49:55', '12:10:02', '13:50:27', '15:01:18', '', '', '27-02-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_2_27_3', 3, '08:06:27', '12:04:57', '13:06:05', '15:03:10', '', '', '27-02-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_2_28_1', 1, '07:13:46', '12:02:26', '13:33:21', '15:05:49', '', '', '28-02-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_2_28_2', 2, '07:31:36', '12:04:11', '13:04:23', '15:00:38', '', '', '28-02-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_2_28_3', 3, '08:02:14', '12:10:57', '14:24:39', '15:09:31', '', '', '28-02-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_1_1_1', 1, '08:42:34', '12:08:44', '14:20:57', '15:09:19', '', '', '01-01-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_1_1_2', 2, '08:23:15', '12:02:24', '13:31:45', '15:05:51', '', '', '01-01-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_1_2_1', 1, '07:00:01', '12:10:32', '13:48:51', '15:08:51', '', '', '02-01-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_1_2_2', 2, '07:24:43', '12:00:03', '14:27:13', '15:06:58', '', '', '02-01-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_1_3_1', 1, '07:24:41', '12:03:00', '13:37:41', '15:10:15', '', '', '03-01-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_1_3_2', 2, '07:46:56', '12:01:07', '13:05:36', '15:05:46', '', '', '03-01-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_1_4_1', 1, '07:21:16', '12:10:56', '13:09:46', '15:00:49', '', '', '04-01-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_1_4_2', 2, '07:48:48', '12:03:01', '14:34:29', '15:06:25', '', '', '04-01-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_1_5_1', 1, '08:35:47', '12:01:35', '13:41:26', '15:01:27', '', '', '05-01-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_1_5_2', 2, '08:54:25', '12:01:36', '13:39:50', '15:10:49', '', '', '05-01-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_1_6_1', 1, '08:22:08', '12:01:51', '13:43:37', '15:02:50', '', '', '06-01-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_1_6_2', 2, '07:47:08', '12:03:25', '13:34:29', '15:02:00', '', '', '06-01-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_1_7_1', 1, '08:17:47', '12:06:53', '13:02:32', '15:10:13', '', '', '07-01-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_1_7_2', 2, '08:38:41', '12:08:17', '13:07:14', '15:08:23', '', '', '07-01-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_1_8_1', 1, '07:52:45', '12:08:19', '14:49:48', '15:03:01', '', '', '08-01-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_1_8_2', 2, '07:22:49', '12:03:41', '13:28:42', '15:03:39', '', '', '08-01-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_1_9_1', 1, '07:53:34', '12:08:52', '14:28:52', '15:06:32', '', '', '09-01-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_1_9_2', 2, '08:49:49', '12:03:17', '13:39:54', '15:05:16', '', '', '09-01-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_1_10_1', 1, '07:33:31', '12:07:12', '13:26:10', '15:01:44', '', '', '10-01-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_1_10_2', 2, '07:08:18', '12:01:20', '14:48:25', '15:09:47', '', '', '10-01-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_1_11_1', 1, '07:59:07', '12:00:57', '13:13:04', '15:02:26', '', '', '11-01-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_1_11_2', 2, '08:19:50', '12:04:53', '13:46:03', '15:03:06', '', '', '11-01-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_1_12_1', 1, '08:11:47', '12:08:03', '13:23:56', '15:02:03', '', '', '12-01-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_1_12_2', 2, '07:33:51', '12:00:01', '14:30:43', '15:04:29', '', '', '12-01-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_1_13_1', 1, '07:26:43', '12:00:59', '13:40:55', '15:08:53', '', '', '13-01-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_1_13_2', 2, '08:33:47', '12:07:52', '14:19:41', '15:05:08', '', '', '13-01-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_1_14_1', 1, '07:04:55', '12:04:40', '14:40:19', '15:03:58', '', '', '14-01-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_1_14_2', 2, '07:53:03', '12:03:02', '13:56:58', '15:05:34', '', '', '14-01-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_1_15_1', 1, '07:43:45', '12:01:29', '14:56:18', '15:07:51', '', '', '15-01-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_1_15_2', 2, '07:37:24', '12:02:32', '13:51:33', '15:01:50', '', '', '15-01-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_1_16_1', 1, '07:16:05', '12:03:33', '14:29:10', '15:07:20', '', '', '16-01-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_1_16_2', 2, '07:06:15', '12:03:56', '13:58:32', '15:09:18', '', '', '16-01-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_1_17_1', 1, '08:29:05', '12:00:00', '14:02:39', '15:09:11', '', '', '17-01-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_1_17_2', 2, '07:09:07', '12:01:17', '13:11:57', '15:03:54', '', '', '17-01-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_1_18_1', 1, '07:10:40', '12:05:15', '14:56:48', '15:05:50', '', '', '18-01-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_1_18_2', 2, '08:45:06', '12:02:07', '13:12:31', '15:04:19', '', '', '18-01-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_1_19_1', 1, '07:15:03', '12:05:37', '14:00:41', '15:04:13', '', '', '19-01-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_1_19_2', 2, '07:44:41', '12:01:42', '14:42:28', '15:05:19', '', '', '19-01-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_1_20_1', 1, '08:44:07', '12:03:02', '13:25:59', '15:08:27', '', '', '20-01-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_1_20_2', 2, '07:41:26', '12:09:44', '14:37:10', '15:01:00', '', '', '20-01-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_1_21_1', 1, '07:02:08', '12:08:47', '14:24:12', '15:05:03', '', '', '21-01-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_1_21_2', 2, '08:00:09', '12:08:54', '14:31:39', '15:08:24', '', '', '21-01-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_1_22_1', 1, '08:04:22', '12:00:14', '13:34:26', '15:08:25', '', '', '22-01-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_1_22_2', 2, '07:58:41', '12:06:38', '13:23:50', '15:09:31', '', '', '22-01-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_1_23_1', 1, '07:25:29', '12:07:27', '13:40:35', '15:03:58', '', '', '23-01-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_1_23_2', 2, '07:43:28', '12:03:16', '13:19:19', '15:10:08', '', '', '23-01-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_1_24_1', 1, '07:20:34', '12:08:43', '13:24:28', '15:10:16', '', '', '24-01-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_1_24_2', 2, '08:41:48', '12:06:19', '14:28:24', '15:05:04', '', '', '24-01-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_1_25_1', 1, '07:22:03', '12:02:24', '13:48:49', '15:06:37', '', '', '25-01-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_1_25_2', 2, '07:46:50', '12:03:35', '13:13:00', '15:00:28', '', '', '25-01-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_1_26_1', 1, '07:40:13', '12:01:43', '14:58:30', '15:05:48', '', '', '26-01-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_1_26_2', 2, '07:30:40', '12:10:14', '13:01:01', '15:01:08', '', '', '26-01-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_1_27_1', 1, '08:52:11', '12:05:14', '14:26:16', '15:06:22', '', '', '27-01-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_1_27_2', 2, '08:42:51', '12:08:02', '13:23:13', '15:00:49', '', '', '27-01-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_1_28_1', 1, '08:16:52', '12:04:56', '13:27:29', '15:05:54', '', '', '28-01-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_1_28_2', 2, '07:30:40', '12:00:39', '14:12:09', '15:10:21', '', '', '28-01-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_1_29_1', 1, '08:04:09', '12:02:48', '13:34:37', '15:00:17', '', '', '29-01-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_1_29_2', 2, '07:16:24', '12:01:43', '13:38:57', '15:01:46', '', '', '29-01-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_1_30_1', 1, '08:33:05', '12:05:29', '13:21:36', '15:03:00', '', '', '30-01-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_1_30_2', 2, '07:22:23', '12:00:54', '13:35:23', '15:10:36', '', '', '30-01-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_1_31_1', 1, '08:24:46', '12:07:29', '13:44:46', '15:05:56', '', '', '31-01-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_1_31_2', 2, '08:04:02', '12:06:57', '13:55:41', '15:02:11', '', '', '31-01-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_3_1_1', 1, '07:55:01', '12:02:22', '13:07:07', '15:09:04', '', '', '01-03-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_3_1_2', 2, '07:11:16', '12:09:27', '13:11:19', '15:01:51', '', '', '01-03-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_3_1_3', 3, '08:08:56', '12:04:59', '13:37:58', '15:06:23', '', '', '01-03-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_3_2_1', 1, '07:34:30', '12:00:15', '13:19:17', '15:07:59', '', '', '02-03-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_3_2_2', 2, '08:37:28', '12:05:40', '14:58:17', '15:09:27', '', '', '02-03-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_3_2_3', 3, '07:21:37', '12:00:10', '13:52:12', '15:10:47', '', '', '02-03-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_3_3_1', 1, '07:12:39', '12:07:36', '13:52:37', '15:03:09', '', '', '03-03-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_3_3_2', 2, '07:50:27', '12:05:18', '13:48:08', '15:02:07', '', '', '03-03-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_3_3_3', 3, '08:23:09', '12:04:29', '13:34:50', '15:05:16', '', '', '03-03-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_3_4_1', 1, '07:27:33', '12:06:25', '13:21:22', '15:06:29', '', '', '04-03-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_3_4_2', 2, '07:10:06', '12:01:15', '13:28:24', '15:06:42', '', '', '04-03-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_3_4_3', 3, '07:58:22', '12:03:15', '13:39:25', '15:01:52', '', '', '04-03-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_3_5_1', 1, '08:49:06', '12:08:27', '13:36:14', '15:10:33', '', '', '05-03-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_3_5_2', 2, '08:11:28', '12:00:18', '13:37:27', '15:00:31', '', '', '05-03-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_3_5_3', 3, '07:48:38', '12:02:54', '13:14:45', '15:07:56', '', '', '05-03-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_3_6_1', 1, '08:40:47', '12:07:47', '13:16:12', '15:10:18', '', '', '06-03-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_3_6_2', 2, '07:58:16', '12:06:31', '13:27:53', '15:07:27', '', '', '06-03-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_3_6_3', 3, '08:37:55', '12:05:09', '13:24:24', '15:08:28', '', '', '06-03-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_3_7_1', 1, '07:15:09', '12:00:49', '13:45:22', '15:07:29', '', '', '07-03-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_3_7_2', 2, '07:57:15', '12:07:16', '13:58:04', '15:10:28', '', '', '07-03-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_3_7_3', 3, '07:06:31', '12:08:34', '13:28:22', '15:05:46', '', '', '07-03-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_3_8_1', 1, '08:30:19', '12:08:07', '13:39:50', '15:07:33', '', '', '08-03-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_3_8_2', 2, '08:28:44', '12:04:18', '13:14:11', '15:02:05', '', '', '08-03-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_3_8_3', 3, '08:20:31', '12:08:04', '13:09:24', '15:01:20', '', '', '08-03-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_3_9_1', 1, '07:41:13', '12:01:15', '13:04:50', '15:02:13', '', '', '09-03-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_3_9_2', 2, '07:15:34', '12:03:54', '13:44:25', '15:00:02', '', '', '09-03-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_3_9_3', 3, '08:16:36', '12:03:21', '13:38:38', '15:05:18', '', '', '09-03-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_3_10_1', 1, '08:13:09', '12:08:44', '13:59:42', '15:04:00', '', '', '10-03-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_3_10_2', 2, '07:23:58', '12:07:54', '13:48:40', '15:07:03', '', '', '10-03-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_3_10_3', 3, '07:51:12', '12:07:08', '13:52:09', '15:02:53', '', '', '10-03-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_3_11_1', 1, '07:25:08', '12:08:27', '13:10:21', '15:10:45', '', '', '11-03-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_3_11_2', 2, '07:35:55', '12:00:24', '13:31:41', '15:01:48', '', '', '11-03-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_3_11_3', 3, '07:35:05', '12:02:43', '14:42:51', '15:00:04', '', '', '11-03-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_3_12_1', 1, '07:10:37', '12:05:13', '13:32:07', '15:01:33', '', '', '12-03-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_3_12_2', 2, '07:59:55', '12:02:40', '13:47:09', '15:10:25', '', '', '12-03-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_3_12_3', 3, '07:10:12', '12:01:07', '13:17:50', '15:05:57', '', '', '12-03-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_3_13_1', 1, '07:27:20', '12:04:01', '14:52:35', '15:02:37', '', '', '13-03-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_3_13_2', 2, '07:05:17', '12:05:26', '13:59:58', '15:00:14', '', '', '13-03-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_3_13_3', 3, '07:03:15', '12:09:56', '13:39:52', '15:07:40', '', '', '13-03-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_3_14_1', 1, '08:09:21', '12:09:06', '13:52:31', '15:07:17', '', '', '14-03-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_3_14_2', 2, '08:15:04', '12:06:19', '13:54:59', '15:09:47', '', '', '14-03-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_3_14_3', 3, '08:09:04', '12:01:04', '13:15:20', '15:08:42', '', '', '14-03-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_3_15_1', 1, '07:05:32', '12:05:45', '14:34:39', '15:02:22', '', '', '15-03-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_3_15_2', 2, '08:02:21', '12:04:02', '13:17:47', '15:00:04', '', '', '15-03-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_3_15_3', 3, '07:28:53', '12:02:48', '13:04:56', '15:00:08', '', '', '15-03-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_3_16_1', 1, '07:30:56', '12:10:15', '14:13:44', '15:06:29', '', '', '16-03-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_3_16_2', 2, '07:23:28', '12:01:52', '13:13:42', '15:07:48', '', '', '16-03-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_3_16_3', 3, '07:03:03', '12:03:32', '13:14:52', '15:00:22', '', '', '16-03-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_3_17_1', 1, '07:15:36', '12:04:14', '13:42:10', '15:03:44', '', '', '17-03-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_3_17_2', 2, '07:58:33', '12:06:22', '13:22:57', '15:00:53', '', '', '17-03-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_3_17_3', 3, '08:50:30', '12:03:24', '13:33:17', '15:03:07', '', '', '17-03-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_3_18_1', 1, '08:53:14', '12:10:32', '14:48:53', '15:06:08', '', '', '18-03-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_3_18_2', 2, '07:46:29', '12:02:18', '14:13:09', '15:05:53', '', '', '18-03-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_3_18_3', 3, '07:34:05', '12:03:08', '13:28:32', '15:03:41', '', '', '18-03-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_3_19_1', 1, '07:39:51', '12:10:52', '13:10:18', '15:10:34', '', '', '19-03-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_3_19_2', 2, '07:50:19', '12:01:54', '13:24:46', '15:03:10', '', '', '19-03-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_3_19_3', 3, '08:33:42', '12:01:23', '13:11:00', '15:10:29', '', '', '19-03-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_3_20_1', 1, '08:15:47', '12:00:34', '14:30:49', '15:10:08', '', '', '20-03-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_3_20_2', 2, '07:01:33', '12:10:05', '13:56:47', '15:03:24', '', '', '20-03-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_3_20_3', 3, '08:42:39', '12:04:27', '13:16:41', '15:03:09', '', '', '20-03-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_3_21_1', 1, '08:20:55', '12:03:43', '14:08:09', '15:01:09', '', '', '21-03-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_3_21_2', 2, '08:41:15', '12:01:44', '13:16:53', '15:10:35', '', '', '21-03-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_3_21_3', 3, '07:54:01', '12:05:21', '13:24:15', '15:07:18', '', '', '21-03-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_3_22_1', 1, '07:21:19', '12:07:04', '13:52:22', '15:03:22', '', '', '22-03-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_3_22_2', 2, '08:54:48', '12:06:47', '13:58:36', '15:10:53', '', '', '22-03-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_3_22_3', 3, '08:09:35', '12:10:24', '13:59:31', '15:01:10', '', '', '22-03-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_3_23_1', 1, '08:10:17', '12:08:26', '14:11:08', '15:03:57', '', '', '23-03-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_3_23_2', 2, '08:02:59', '12:04:00', '13:28:20', '15:06:46', '', '', '23-03-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_3_23_3', 3, '07:14:13', '12:08:13', '13:16:24', '15:09:51', '', '', '23-03-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_3_24_1', 1, '07:02:12', '12:10:57', '14:01:32', '15:02:10', '', '', '24-03-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_3_24_2', 2, '08:38:24', '12:00:56', '13:00:32', '15:05:48', '', '', '24-03-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_3_24_3', 3, '07:38:49', '12:04:12', '13:18:23', '15:08:46', '', '', '24-03-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_3_25_1', 1, '07:59:31', '12:00:50', '13:36:13', '15:05:17', '', '', '25-03-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_3_25_2', 2, '07:18:33', '12:02:45', '13:57:25', '15:06:03', '', '', '25-03-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_3_25_3', 3, '07:28:26', '12:09:10', '14:34:55', '15:09:53', '', '', '25-03-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_3_26_1', 1, '07:41:42', '12:06:20', '13:38:38', '15:07:09', '', '', '26-03-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_3_26_2', 2, '07:29:31', '12:00:25', '13:44:39', '15:10:53', '', '', '26-03-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_3_26_3', 3, '07:10:12', '12:01:36', '13:50:39', '15:03:21', '', '', '26-03-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_3_27_1', 1, '08:48:00', '12:01:34', '13:26:33', '15:04:23', '', '', '27-03-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_3_27_2', 2, '08:16:23', '12:01:27', '13:15:28', '15:09:32', '', '', '27-03-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_3_27_3', 3, '08:37:25', '12:01:54', '13:49:13', '15:02:21', '', '', '27-03-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_3_28_1', 1, '08:05:32', '12:02:22', '14:03:35', '15:08:26', '', '', '28-03-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_3_28_2', 2, '07:55:43', '12:05:18', '13:00:57', '15:00:03', '', '', '28-03-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_3_28_3', 3, '08:18:43', '12:05:39', '14:19:01', '15:03:53', '', '', '28-03-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_3_29_1', 1, '07:00:29', '12:08:47', '13:42:06', '15:07:43', '', '', '29-03-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_3_29_2', 2, '07:40:15', '12:02:33', '13:42:59', '15:09:47', '', '', '29-03-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_3_29_3', 3, '07:23:36', '12:05:28', '13:12:50', '15:02:30', '', '', '29-03-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_3_30_1', 1, '07:08:48', '12:02:09', '13:17:22', '15:10:20', '', '', '30-03-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_3_30_2', 2, '08:04:49', '12:06:08', '14:41:11', '15:10:11', '', '', '30-03-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_3_30_3', 3, '07:37:29', '12:03:22', '13:09:39', '15:08:19', '', '', '30-03-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_3_31_1', 1, '07:21:46', '12:05:32', '13:30:11', '15:04:59', '', '', '31-03-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_3_31_2', 2, '07:31:03', '12:02:47', '13:05:25', '15:06:20', '', '', '31-03-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2021_3_31_3', 3, '08:27:17', '12:04:16', '13:43:06', '15:05:29', '', '', '31-03-2021');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_1_1_1', 1, '07:16:18', '12:03:24', '14:50:49', '15:10:35', '', '', '01-01-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_1_1_2', 2, '08:29:14', '12:05:55', '13:00:16', '15:01:37', '', '', '01-01-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_1_1_3', 3, '07:21:45', '12:01:34', '13:41:13', '15:01:40', '', '', '01-01-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_1_2_1', 1, '08:59:26', '12:02:20', '14:33:39', '15:10:11', '', '', '02-01-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_1_2_2', 2, '08:54:08', '12:02:00', '13:49:15', '15:07:18', '', '', '02-01-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_1_2_3', 3, '07:17:06', '12:09:13', '13:32:30', '15:04:57', '', '', '02-01-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_1_3_1', 1, '07:38:22', '12:09:55', '13:52:08', '15:06:23', '', '', '03-01-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_1_3_2', 2, '07:43:20', '12:05:07', '14:02:30', '15:09:33', '', '', '03-01-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_1_3_3', 3, '07:32:51', '12:01:13', '14:31:56', '15:08:02', '', '', '03-01-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_1_4_1', 1, '08:49:09', '12:01:51', '13:10:20', '15:03:27', '', '', '04-01-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_1_4_2', 2, '07:03:18', '12:07:45', '13:51:49', '15:04:55', '', '', '04-01-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_1_4_3', 3, '07:31:09', '12:02:52', '13:19:39', '15:04:53', '', '', '04-01-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_1_5_1', 1, '08:15:57', '12:03:54', '13:29:37', '15:01:33', '', '', '05-01-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_1_5_2', 2, '07:38:06', '12:09:17', '14:34:43', '15:08:46', '', '', '05-01-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_1_5_3', 3, '07:07:38', '12:03:37', '13:42:26', '15:09:47', '', '', '05-01-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_1_6_1', 1, '08:25:30', '12:04:56', '13:17:16', '15:06:09', '', '', '06-01-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_1_6_2', 2, '07:41:37', '12:05:40', '13:39:40', '15:04:14', '', '', '06-01-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_1_6_3', 3, '07:45:55', '12:03:37', '13:02:16', '15:00:09', '', '', '06-01-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_1_7_1', 1, '08:10:54', '12:08:54', '14:14:56', '15:06:33', '', '', '07-01-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_1_7_2', 2, '08:48:18', '12:10:04', '13:04:25', '15:03:49', '', '', '07-01-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_1_7_3', 3, '07:26:25', '12:01:55', '13:24:38', '15:08:11', '', '', '07-01-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_1_8_1', 1, '07:07:22', '12:02:41', '14:17:58', '15:09:00', '', '', '08-01-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_1_8_2', 2, '08:10:33', '12:04:52', '13:10:20', '15:09:43', '', '', '08-01-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_1_8_3', 3, '08:24:07', '12:08:17', '13:16:39', '15:09:34', '', '', '08-01-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_1_9_1', 1, '07:20:58', '12:01:42', '13:11:33', '15:01:41', '', '', '09-01-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_1_9_2', 2, '08:44:45', '12:05:44', '13:57:03', '15:04:55', '', '', '09-01-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_1_9_3', 3, '08:37:19', '12:04:40', '13:38:34', '15:01:40', '', '', '09-01-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_1_10_1', 1, '07:27:58', '12:02:27', '13:26:55', '15:04:34', '', '', '10-01-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_1_10_2', 2, '07:06:49', '12:03:33', '14:59:54', '15:01:46', '', '', '10-01-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_1_10_3', 3, '08:51:14', '12:02:20', '14:17:16', '15:07:15', '', '', '10-01-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_1_11_1', 1, '07:34:20', '12:10:37', '13:19:54', '15:02:46', '', '', '11-01-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_1_11_2', 2, '08:16:24', '12:03:41', '13:53:16', '15:07:35', '', '', '11-01-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_1_11_3', 3, '07:59:29', '12:10:51', '13:37:25', '15:10:34', '', '', '11-01-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_1_12_1', 1, '07:10:16', '12:02:26', '13:21:06', '15:05:21', '', '', '12-01-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_1_12_2', 2, '07:51:28', '12:07:06', '13:00:26', '15:10:12', '', '', '12-01-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_1_12_3', 3, '07:17:23', '12:08:49', '14:23:42', '15:04:21', '', '', '12-01-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_1_13_1', 1, '07:12:37', '12:04:55', '13:05:39', '15:05:06', '', '', '13-01-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_1_13_2', 2, '08:40:13', '12:02:02', '13:46:31', '15:08:02', '', '', '13-01-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_1_13_3', 3, '08:09:10', '12:09:45', '14:46:29', '15:07:57', '', '', '13-01-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_1_14_1', 1, '08:39:34', '12:02:23', '13:32:56', '15:08:20', '', '', '14-01-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_1_14_2', 2, '08:52:44', '12:10:20', '13:55:25', '15:06:30', '', '', '14-01-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_1_14_3', 3, '08:13:19', '12:00:22', '13:42:29', '15:03:48', '', '', '14-01-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_1_15_1', 1, '08:39:59', '12:09:16', '13:46:05', '15:09:15', '', '', '15-01-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_1_15_2', 2, '08:23:33', '12:10:07', '13:08:30', '15:03:47', '', '', '15-01-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_1_15_3', 3, '08:15:36', '12:04:50', '14:45:18', '15:09:01', '', '', '15-01-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_1_16_1', 1, '08:25:23', '12:03:42', '14:27:24', '15:00:43', '', '', '16-01-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_1_16_2', 2, '08:36:18', '12:00:59', '13:14:41', '15:01:35', '', '', '16-01-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_1_16_3', 3, '08:45:11', '12:05:16', '14:20:58', '15:03:38', '', '', '16-01-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_1_17_1', 1, '08:57:42', '12:00:42', '13:20:34', '15:07:50', '', '', '17-01-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_1_17_2', 2, '08:32:23', '12:07:01', '13:44:18', '15:03:03', '', '', '17-01-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_1_17_3', 3, '08:50:32', '12:00:54', '13:36:57', '15:10:21', '', '', '17-01-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_1_18_1', 1, '08:21:12', '12:10:44', '13:37:58', '15:05:34', '', '', '18-01-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_1_18_2', 2, '07:02:38', '12:06:51', '13:07:37', '15:03:38', '', '', '18-01-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_1_18_3', 3, '07:21:58', '12:06:32', '13:21:51', '15:08:43', '', '', '18-01-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_1_19_1', 1, '07:50:11', '12:04:10', '13:17:32', '15:06:23', '', '', '19-01-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_1_19_2', 2, '07:18:38', '12:02:54', '13:39:06', '15:10:28', '', '', '19-01-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_1_19_3', 3, '07:35:49', '12:09:23', '13:10:22', '15:03:19', '', '', '19-01-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_1_20_1', 1, '07:17:39', '12:06:22', '14:29:40', '15:02:46', '', '', '20-01-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_1_20_2', 2, '08:33:34', '12:09:24', '13:52:50', '15:09:01', '', '', '20-01-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_1_20_3', 3, '07:03:39', '12:05:24', '13:16:53', '15:01:40', '', '', '20-01-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_1_21_1', 1, '07:00:59', '12:03:19', '13:53:15', '15:04:56', '', '', '21-01-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_1_21_2', 2, '08:47:00', '12:09:10', '13:12:01', '15:07:34', '', '', '21-01-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_1_21_3', 3, '08:36:32', '12:01:14', '13:31:27', '15:05:56', '', '', '21-01-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_1_22_1', 1, '07:49:09', '12:01:26', '13:56:05', '15:07:31', '', '', '22-01-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_1_22_2', 2, '07:34:11', '12:10:29', '13:38:06', '15:09:30', '', '', '22-01-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_1_22_3', 3, '08:20:38', '12:10:20', '13:19:22', '15:05:17', '', '', '22-01-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_1_23_1', 1, '08:42:00', '12:04:40', '13:49:10', '15:07:59', '', '', '23-01-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_1_23_2', 2, '07:08:10', '12:04:52', '14:11:00', '15:04:43', '', '', '23-01-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_1_23_3', 3, '07:09:43', '12:03:02', '13:40:41', '15:02:04', '', '', '23-01-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_1_24_1', 1, '08:06:00', '12:01:40', '13:21:22', '15:01:03', '', '', '24-01-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_1_24_2', 2, '07:50:58', '12:04:04', '13:23:57', '15:07:18', '', '', '24-01-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_1_24_3', 3, '07:05:56', '12:07:38', '13:49:10', '15:09:31', '', '', '24-01-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_1_25_1', 1, '07:16:02', '12:00:45', '13:59:31', '15:07:58', '', '', '25-01-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_1_25_2', 2, '08:45:26', '12:00:09', '13:42:59', '15:10:49', '', '', '25-01-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_1_25_3', 3, '07:03:16', '12:06:20', '13:34:53', '15:10:08', '', '', '25-01-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_1_26_1', 1, '07:47:43', '12:04:52', '13:49:20', '15:07:39', '', '', '26-01-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_1_26_2', 2, '07:45:43', '12:00:44', '13:53:33', '15:03:11', '', '', '26-01-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_1_26_3', 3, '08:25:54', '12:10:10', '14:22:22', '15:02:11', '', '', '26-01-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_1_27_1', 1, '08:33:51', '12:07:10', '13:22:33', '15:07:00', '', '', '27-01-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_1_27_2', 2, '08:16:17', '12:03:11', '13:04:48', '15:01:39', '', '', '27-01-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_1_27_3', 3, '08:19:07', '12:03:03', '13:32:54', '15:02:02', '', '', '27-01-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_1_28_1', 1, '07:36:13', '12:04:39', '13:21:53', '15:06:58', '', '', '28-01-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_1_28_2', 2, '07:59:50', '12:10:14', '14:59:39', '15:02:26', '', '', '28-01-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_1_28_3', 3, '07:04:32', '12:08:15', '13:59:14', '15:06:45', '', '', '28-01-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_1_29_1', 1, '07:20:58', '12:05:21', '13:57:39', '15:06:19', '', '', '29-01-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_1_29_2', 2, '08:17:35', '12:03:23', '13:38:56', '15:02:42', '', '', '29-01-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_1_29_3', 3, '07:58:10', '12:10:49', '13:30:02', '15:00:24', '', '', '29-01-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_1_30_1', 1, '08:05:31', '12:09:49', '14:15:44', '15:10:29', '', '', '30-01-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_1_30_2', 2, '07:29:03', '12:00:10', '13:56:42', '15:02:35', '', '', '30-01-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_1_30_3', 3, '08:07:09', '12:10:34', '13:46:38', '15:10:58', '', '', '30-01-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_1_31_1', 1, '08:00:03', '12:05:26', '13:56:00', '15:06:52', '', '', '31-01-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_1_31_2', 2, '08:10:20', '12:10:45', '13:39:25', '15:05:00', '', '', '31-01-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_1_31_3', 3, '08:23:21', '12:02:21', '13:16:35', '15:00:07', '', '', '31-01-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_1_32_1', 1, '08:17:15', '12:07:09', '12:32:57', '15:10:14', '', '', '01-01-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_1_32_2', 2, '07:36:51', '12:01:20', '12:19:14', '15:05:09', '', '', '01-01-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_1_32_3', 3, '08:24:13', '12:01:04', '12:33:32', '15:06:34', '', '', '01-01-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_2_1_1', 1, '07:18:16', '12:01:29', '13:15:11', '15:08:30', '', '', '01-02-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_2_1_2', 2, '08:42:36', '12:03:05', '14:45:44', '15:01:23', '', '', '01-02-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_2_1_3', 3, '07:55:36', '12:05:20', '13:55:22', '15:06:59', '', '', '01-02-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_2_2_1', 1, '07:56:24', '12:00:25', '13:26:43', '15:07:05', '', '', '02-02-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_2_2_2', 2, '07:36:51', '12:09:12', '14:35:45', '15:05:13', '', '', '02-02-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_2_2_3', 3, '07:46:11', '12:07:32', '13:04:57', '15:02:17', '', '', '02-02-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_2_3_1', 1, '07:56:48', '12:07:57', '13:34:31', '15:06:07', '', '', '03-02-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_2_3_2', 2, '07:50:03', '12:02:46', '14:41:55', '15:10:12', '', '', '03-02-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_2_3_3', 3, '08:48:48', '12:02:15', '13:14:22', '15:07:16', '', '', '03-02-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_2_4_1', 1, '07:59:56', '12:06:45', '13:23:35', '15:09:35', '', '', '04-02-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_2_4_2', 2, '07:53:35', '12:02:13', '13:42:55', '15:00:26', '', '', '04-02-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_2_4_3', 3, '08:19:04', '12:02:59', '13:26:10', '15:04:04', '', '', '04-02-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_2_5_1', 1, '07:37:29', '12:06:56', '13:37:21', '15:05:05', '', '', '05-02-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_2_5_2', 2, '08:22:06', '12:08:11', '14:01:50', '15:04:11', '', '', '05-02-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_2_5_3', 3, '08:11:20', '12:04:00', '14:37:40', '15:08:25', '', '', '05-02-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_2_6_1', 1, '08:10:45', '12:05:38', '14:02:33', '15:08:51', '', '', '06-02-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_2_6_2', 2, '08:53:38', '12:03:57', '14:26:29', '15:08:23', '', '', '06-02-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_2_6_3', 3, '07:57:22', '12:07:09', '13:49:20', '15:06:13', '', '', '06-02-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_2_7_1', 1, '08:57:42', '12:02:13', '13:26:56', '15:10:56', '', '', '07-02-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_2_7_2', 2, '07:04:14', '12:07:17', '13:10:35', '15:09:10', '', '', '07-02-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_2_7_3', 3, '07:57:47', '12:08:12', '14:30:40', '15:06:26', '', '', '07-02-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_2_8_1', 1, '08:07:34', '12:04:21', '14:24:21', '15:07:54', '', '', '08-02-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_2_8_2', 2, '08:59:30', '12:03:50', '13:20:54', '15:02:14', '', '', '08-02-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_2_8_3', 3, '07:21:32', '12:00:42', '14:26:41', '15:10:31', '', '', '08-02-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_2_9_1', 1, '08:06:13', '12:09:35', '13:01:16', '15:06:58', '', '', '09-02-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_2_9_2', 2, '07:04:22', '12:03:19', '14:02:08', '15:04:31', '', '', '09-02-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_2_9_3', 3, '07:04:13', '12:08:35', '13:31:45', '15:05:37', '', '', '09-02-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_2_10_1', 1, '08:17:38', '12:04:52', '13:58:05', '15:10:44', '', '', '10-02-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_2_10_2', 2, '07:26:20', '12:09:07', '14:35:48', '15:02:45', '', '', '10-02-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_2_10_3', 3, '07:47:03', '12:04:15', '13:47:03', '15:08:13', '', '', '10-02-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_2_11_1', 1, '07:05:42', '12:01:19', '13:01:15', '15:05:22', '', '', '11-02-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_2_11_2', 2, '07:18:40', '12:08:50', '14:24:00', '15:00:30', '', '', '11-02-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_2_11_3', 3, '07:11:13', '12:03:43', '13:55:51', '15:10:44', '', '', '11-02-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_2_12_1', 1, '07:55:44', '12:06:33', '13:39:31', '15:09:23', '', '', '12-02-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_2_12_2', 2, '07:25:02', '12:07:59', '14:12:36', '15:09:31', '', '', '12-02-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_2_12_3', 3, '07:42:45', '12:00:46', '13:06:54', '15:10:40', '', '', '12-02-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_2_13_1', 1, '08:25:42', '12:07:20', '14:55:18', '15:04:31', '', '', '13-02-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_2_13_2', 2, '08:04:36', '12:10:41', '13:56:03', '15:07:50', '', '', '13-02-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_2_13_3', 3, '07:23:34', '12:05:17', '13:01:43', '15:05:28', '', '', '13-02-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_2_14_1', 1, '07:05:25', '12:08:00', '13:20:21', '15:10:52', '', '', '14-02-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_2_14_2', 2, '08:41:46', '12:10:15', '14:32:39', '15:00:45', '', '', '14-02-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_2_14_3', 3, '08:46:36', '12:09:47', '13:32:55', '15:01:18', '', '', '14-02-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_2_15_1', 1, '08:19:43', '12:01:34', '14:07:56', '15:05:44', '', '', '15-02-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_2_15_2', 2, '08:55:49', '12:06:02', '13:13:42', '15:09:07', '', '', '15-02-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_2_15_3', 3, '08:35:06', '12:01:13', '13:17:15', '15:06:19', '', '', '15-02-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_2_16_1', 1, '08:44:10', '12:10:01', '13:59:58', '15:03:15', '', '', '16-02-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_2_16_2', 2, '07:14:52', '12:07:31', '13:16:33', '15:06:39', '', '', '16-02-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_2_16_3', 3, '07:17:22', '12:05:21', '13:06:06', '15:04:08', '', '', '16-02-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_2_17_1', 1, '07:59:25', '12:09:43', '14:30:27', '15:03:54', '', '', '17-02-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_2_17_2', 2, '08:28:40', '12:04:16', '13:25:09', '15:02:48', '', '', '17-02-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_2_17_3', 3, '08:54:16', '12:10:35', '13:40:04', '15:06:26', '', '', '17-02-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_2_18_1', 1, '07:10:25', '12:06:38', '13:44:51', '15:02:07', '', '', '18-02-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_2_18_2', 2, '08:29:34', '12:02:39', '14:35:03', '15:00:20', '', '', '18-02-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_2_18_3', 3, '07:55:58', '12:10:32', '14:48:45', '15:09:51', '', '', '18-02-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_2_19_1', 1, '08:02:20', '12:04:41', '13:25:49', '15:03:01', '', '', '19-02-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_2_19_2', 2, '07:11:39', '12:07:10', '14:18:23', '15:04:57', '', '', '19-02-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_2_19_3', 3, '08:42:09', '12:09:46', '13:35:44', '15:02:29', '', '', '19-02-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_2_20_1', 1, '08:41:52', '12:08:54', '13:06:49', '15:10:02', '', '', '20-02-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_2_20_2', 2, '08:39:18', '12:03:44', '14:50:38', '15:10:20', '', '', '20-02-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_2_20_3', 3, '08:08:22', '12:00:54', '13:50:08', '15:09:10', '', '', '20-02-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_2_21_1', 1, '07:35:31', '12:01:54', '13:59:03', '15:00:16', '', '', '21-02-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_2_21_2', 2, '07:54:26', '12:06:36', '13:39:36', '15:01:59', '', '', '21-02-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_2_21_3', 3, '07:03:31', '12:10:04', '13:12:18', '15:04:30', '', '', '21-02-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_2_22_1', 1, '08:46:23', '12:05:27', '13:28:19', '15:10:48', '', '', '22-02-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_2_22_2', 2, '08:03:49', '12:06:51', '13:19:48', '15:05:27', '', '', '22-02-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_2_22_3', 3, '07:05:17', '12:10:31', '14:05:03', '15:10:09', '', '', '22-02-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_2_23_1', 1, '07:04:35', '12:10:24', '14:02:27', '15:06:47', '', '', '23-02-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_2_23_2', 2, '08:22:00', '12:05:21', '13:27:17', '15:06:21', '', '', '23-02-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_2_23_3', 3, '07:08:11', '12:08:59', '14:20:18', '15:02:54', '', '', '23-02-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_2_24_1', 1, '07:53:06', '12:04:18', '14:00:16', '15:09:27', '', '', '24-02-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_2_24_2', 2, '07:14:32', '12:09:18', '14:57:01', '15:05:34', '', '', '24-02-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_2_24_3', 3, '08:47:43', '12:03:54', '13:07:57', '15:08:50', '', '', '24-02-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_2_25_1', 1, '07:38:16', '12:07:19', '13:22:59', '15:01:26', '', '', '25-02-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_2_25_2', 2, '07:07:30', '12:04:29', '13:27:01', '15:07:44', '', '', '25-02-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_2_25_3', 3, '08:52:56', '12:04:44', '14:52:10', '15:05:21', '', '', '25-02-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_2_26_1', 1, '07:44:29', '12:04:21', '14:49:00', '15:05:56', '', '', '26-02-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_2_26_2', 2, '07:34:43', '12:01:29', '13:00:24', '15:09:08', '', '', '26-02-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_2_26_3', 3, '07:27:50', '12:04:40', '13:49:17', '15:07:17', '', '', '26-02-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_2_27_1', 1, '08:17:08', '12:10:46', '13:26:12', '15:08:37', '', '', '27-02-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_2_27_2', 2, '08:29:01', '12:06:57', '13:50:33', '15:10:50', '', '', '27-02-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_2_27_3', 3, '08:23:12', '12:07:26', '14:58:46', '15:08:46', '', '', '27-02-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_2_28_1', 1, '07:32:34', '12:00:41', '13:01:05', '15:04:34', '', '', '28-02-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_2_28_2', 2, '07:32:35', '12:02:54', '13:52:44', '15:09:23', '', '', '28-02-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_2_28_3', 3, '07:46:56', '12:00:05', '14:10:02', '15:00:13', '', '', '28-02-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_3_1_1', 1, '07:27:02', '12:09:23', '13:53:40', '15:01:52', '', '', '01-03-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_3_1_2', 2, '07:54:48', '12:01:54', '14:23:40', '15:08:25', '', '', '01-03-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_3_1_3', 3, '08:37:27', '12:07:08', '14:06:24', '15:10:30', '', '', '01-03-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_3_2_1', 1, '08:00:58', '12:01:15', '14:54:58', '15:08:40', '', '', '02-03-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_3_2_2', 2, '08:41:19', '12:08:35', '14:47:56', '15:03:17', '', '', '02-03-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_3_2_3', 3, '07:44:55', '12:00:16', '13:33:42', '15:08:42', '', '', '02-03-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_3_3_1', 1, '08:28:32', '12:09:56', '13:50:47', '15:05:34', '', '', '03-03-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_3_3_2', 2, '08:06:21', '12:06:57', '13:47:14', '15:10:08', '', '', '03-03-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_3_3_3', 3, '08:44:36', '12:00:33', '13:25:25', '15:10:53', '', '', '03-03-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_3_4_1', 1, '08:41:14', '12:08:39', '13:38:47', '15:01:17', '', '', '04-03-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_3_4_2', 2, '07:52:28', '12:06:19', '13:17:33', '15:00:08', '', '', '04-03-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_3_4_3', 3, '08:54:28', '12:07:09', '13:10:26', '15:03:00', '', '', '04-03-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_3_5_1', 1, '08:12:28', '12:01:48', '13:24:53', '15:08:27', '', '', '05-03-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_3_5_2', 2, '08:11:19', '12:04:49', '13:27:39', '15:08:02', '', '', '05-03-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_3_5_3', 3, '08:03:19', '12:10:37', '13:39:01', '15:01:53', '', '', '05-03-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_3_6_1', 1, '07:01:26', '12:07:08', '13:24:22', '15:00:38', '', '', '06-03-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_3_6_2', 2, '07:05:07', '12:01:24', '14:56:15', '15:08:29', '', '', '06-03-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_3_6_3', 3, '08:46:44', '12:04:46', '13:23:32', '15:08:13', '', '', '06-03-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_3_7_1', 1, '07:05:05', '12:08:30', '14:38:38', '15:00:25', '', '', '07-03-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_3_7_2', 2, '07:23:34', '12:03:05', '14:00:29', '15:03:10', '', '', '07-03-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_3_7_3', 3, '08:25:13', '12:10:25', '13:46:13', '15:09:38', '', '', '07-03-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_3_8_1', 1, '07:30:09', '12:04:52', '13:41:16', '15:05:13', '', '', '08-03-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_3_8_2', 2, '08:40:25', '12:05:11', '13:02:10', '15:08:36', '', '', '08-03-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_3_8_3', 3, '07:54:41', '12:06:33', '13:10:12', '15:07:29', '', '', '08-03-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_3_9_1', 1, '08:00:36', '12:05:22', '13:52:37', '15:03:45', '', '', '09-03-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_3_9_2', 2, '08:07:58', '12:01:40', '14:26:05', '15:01:35', '', '', '09-03-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_3_9_3', 3, '07:44:56', '12:09:16', '13:48:03', '15:04:11', '', '', '09-03-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_3_10_1', 1, '07:41:56', '12:05:29', '13:43:24', '15:10:40', '', '', '10-03-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_3_10_2', 2, '08:40:20', '12:10:15', '13:44:25', '15:09:53', '', '', '10-03-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_3_10_3', 3, '08:44:01', '12:06:25', '13:41:02', '15:03:26', '', '', '10-03-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_3_11_1', 1, '08:28:44', '12:06:25', '13:36:02', '15:06:52', '', '', '11-03-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_3_11_2', 2, '08:20:07', '12:07:10', '13:30:48', '15:07:53', '', '', '11-03-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_3_11_3', 3, '07:18:34', '12:00:45', '13:04:23', '15:08:58', '', '', '11-03-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_3_12_1', 1, '08:13:06', '12:02:07', '14:20:16', '15:02:08', '', '', '12-03-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_3_12_2', 2, '07:52:59', '12:06:16', '14:11:10', '15:05:59', '', '', '12-03-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_3_12_3', 3, '08:46:17', '12:01:31', '13:08:52', '15:05:44', '', '', '12-03-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_3_13_1', 1, '08:46:36', '12:07:02', '13:01:49', '15:03:37', '', '', '13-03-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_3_13_2', 2, '07:31:19', '12:08:48', '13:43:26', '15:08:57', '', '', '13-03-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_3_13_3', 3, '08:59:43', '12:04:22', '14:56:21', '15:10:32', '', '', '13-03-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_3_14_1', 1, '07:19:53', '12:02:39', '13:26:54', '15:06:03', '', '', '14-03-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_3_14_2', 2, '08:18:20', '12:08:14', '14:05:15', '15:05:54', '', '', '14-03-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_3_14_3', 3, '07:30:41', '12:08:32', '14:01:25', '15:09:10', '', '', '14-03-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_3_15_1', 1, '08:16:22', '12:02:29', '13:22:08', '15:02:26', '', '', '15-03-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_3_15_2', 2, '07:36:23', '12:10:01', '13:15:49', '15:04:08', '', '', '15-03-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_3_15_3', 3, '08:44:03', '12:03:16', '13:50:17', '15:08:00', '', '', '15-03-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_3_16_1', 1, '08:14:00', '12:02:13', '14:18:37', '15:08:01', '', '', '16-03-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_3_16_2', 2, '07:28:03', '12:09:35', '13:32:21', '15:09:38', '', '', '16-03-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_3_16_3', 3, '08:44:33', '12:00:48', '13:08:33', '15:09:25', '', '', '16-03-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_3_17_1', 1, '07:20:07', '12:10:54', '13:24:52', '15:10:13', '', '', '17-03-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_3_17_2', 2, '07:34:15', '12:02:00', '14:41:29', '15:07:08', '', '', '17-03-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_3_17_3', 3, '07:31:18', '12:00:05', '14:03:39', '15:10:11', '', '', '17-03-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_3_18_1', 1, '07:15:24', '12:10:44', '14:19:22', '15:07:41', '', '', '18-03-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_3_18_2', 2, '07:27:39', '12:06:08', '13:18:10', '15:00:07', '', '', '18-03-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_3_18_3', 3, '08:23:59', '12:09:30', '13:08:56', '15:10:48', '', '', '18-03-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_3_19_1', 1, '07:21:34', '12:05:34', '14:48:27', '15:03:57', '', '', '19-03-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_3_19_2', 2, '07:34:55', '12:01:54', '13:41:28', '15:07:38', '', '', '19-03-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_3_19_3', 3, '07:50:02', '12:02:45', '13:20:21', '15:01:22', '', '', '19-03-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_3_20_1', 1, '07:18:06', '12:08:05', '13:52:13', '15:00:23', '', '', '20-03-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_3_20_2', 2, '08:28:51', '12:04:16', '14:04:55', '15:07:07', '', '', '20-03-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_3_20_3', 3, '08:55:52', '12:03:48', '14:57:54', '15:09:21', '', '', '20-03-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_3_21_1', 1, '07:37:08', '12:00:37', '13:33:35', '15:03:01', '', '', '21-03-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_3_21_2', 2, '07:03:31', '12:08:26', '13:33:51', '15:03:37', '', '', '21-03-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_3_21_3', 3, '07:16:19', '12:05:16', '13:15:21', '15:00:41', '', '', '21-03-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_3_22_1', 1, '07:49:49', '12:08:13', '14:15:53', '15:00:15', '', '', '22-03-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_3_22_2', 2, '08:00:34', '12:01:56', '14:30:57', '15:04:32', '', '', '22-03-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_3_22_3', 3, '07:34:18', '12:06:39', '13:59:19', '15:07:16', '', '', '22-03-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_3_23_1', 1, '08:01:20', '12:03:39', '14:04:27', '15:09:55', '', '', '23-03-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_3_23_2', 2, '08:58:42', '12:10:43', '13:07:17', '15:10:45', '', '', '23-03-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_3_23_3', 3, '07:49:14', '12:03:21', '13:52:49', '15:06:03', '', '', '23-03-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_3_24_1', 1, '08:21:23', '12:00:34', '13:06:01', '15:01:47', '', '', '24-03-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_3_24_2', 2, '08:38:37', '12:06:27', '13:41:02', '15:05:37', '', '', '24-03-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_3_24_3', 3, '08:12:03', '12:04:24', '14:13:01', '15:10:34', '', '', '24-03-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_3_25_1', 1, '08:04:56', '12:00:38', '13:54:29', '15:04:49', '', '', '25-03-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_3_25_2', 2, '07:39:34', '12:04:38', '14:58:43', '15:01:46', '', '', '25-03-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_3_25_3', 3, '07:46:02', '12:02:29', '13:51:12', '15:08:10', '', '', '25-03-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_3_26_1', 1, '08:54:36', '12:02:43', '14:27:37', '15:02:50', '', '', '26-03-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_3_26_2', 2, '07:49:15', '12:08:01', '14:40:40', '15:02:25', '', '', '26-03-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_3_26_3', 3, '08:12:27', '12:03:04', '13:18:09', '15:02:50', '', '', '26-03-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_3_27_1', 1, '08:34:26', '12:02:55', '13:10:00', '15:02:27', '', '', '27-03-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_3_27_2', 2, '07:33:21', '12:04:39', '14:35:36', '15:09:03', '', '', '27-03-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_3_27_3', 3, '07:08:47', '12:08:08', '13:34:06', '15:02:58', '', '', '27-03-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_3_28_1', 1, '08:54:46', '12:05:56', '13:39:42', '15:05:06', '', '', '28-03-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_3_28_2', 2, '08:20:53', '12:04:28', '13:02:26', '15:00:09', '', '', '28-03-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_3_28_3', 3, '07:35:51', '12:07:06', '13:17:42', '15:02:37', '', '', '28-03-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_3_29_1', 1, '07:44:47', '12:02:28', '13:07:21', '15:10:54', '', '', '29-03-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_3_29_2', 2, '07:57:33', '12:07:02', '13:57:57', '15:03:11', '', '', '29-03-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_3_29_3', 3, '07:12:00', '12:01:56', '14:38:48', '15:08:59', '', '', '29-03-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_3_30_1', 1, '07:52:45', '12:04:58', '14:52:55', '15:03:04', '', '', '30-03-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_3_30_2', 2, '07:47:41', '12:02:55', '14:53:30', '15:07:10', '', '', '30-03-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_3_30_3', 3, '07:56:21', '12:03:34', '13:53:27', '15:03:41', '', '', '30-03-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_3_31_1', 1, '08:55:34', '12:09:05', '14:57:04', '15:02:31', '', '', '31-03-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_3_31_2', 2, '07:15:26', '12:04:52', '13:31:26', '15:08:06', '', '', '31-03-2019');
INSERT INTO "tbl_bangchamcong" VALUES ('2019_3_31_3', 3, '08:15:57', '12:00:09', '14:07:52', '15:10:07', '', '', '31-03-2019');
COMMIT;

-- ----------------------------
-- Table structure for tbl_bophan
-- ----------------------------
DROP TABLE IF EXISTS "tbl_bophan";
CREATE TABLE "tbl_bophan" (
  "pk_ibophanid" int4 NOT NULL DEFAULT nextval('tbl_bophan_pk_ibophanid_seq'::regclass),
  "stenbophan" varchar(255) COLLATE "pg_catalog"."default",
  "ithutubophan" int2
)
;

-- ----------------------------
-- Records of tbl_bophan
-- ----------------------------
BEGIN;
INSERT INTO "tbl_bophan" VALUES (1, 'Tuyển dụng', 1);
INSERT INTO "tbl_bophan" VALUES (2, 'Lương thưởng & phúc lợi', 2);
INSERT INTO "tbl_bophan" VALUES (3, 'Hành chính', 3);
INSERT INTO "tbl_bophan" VALUES (4, 'Kế hoạch', 4);
INSERT INTO "tbl_bophan" VALUES (5, 'Kế toán', 5);
INSERT INTO "tbl_bophan" VALUES (6, 'Marketing', 6);
INSERT INTO "tbl_bophan" VALUES (7, 'Sale', 7);
INSERT INTO "tbl_bophan" VALUES (8, 'Kho', 8);
INSERT INTO "tbl_bophan" VALUES (9, 'Chăm sóc khách hàng', 9);
COMMIT;

-- ----------------------------
-- Table structure for tbl_donxin_nghiphep
-- ----------------------------
DROP TABLE IF EXISTS "tbl_donxin_nghiphep";
CREATE TABLE "tbl_donxin_nghiphep" (
  "PK_iDonxinNghiphepID" int4 NOT NULL GENERATED ALWAYS AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
),
  "FK_iNhanvienID" int4,
  "sLydoNghi" text COLLATE "pg_catalog"."default",
  "tThoigianTao" date,
  "FK_iNguoiDuyetID" int4,
  "dThoigianDuyet" date,
  "FK_iTrangthaiDonxinNghiphepID" int4,
  "sGhichuDonxinNghiphep" text COLLATE "pg_catalog"."default",
  "dNgayNghi" date,
  "dNgayKethucNghi" date,
  "sLydoHuy" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of tbl_donxin_nghiphep
-- ----------------------------
BEGIN;
INSERT INTO "tbl_donxin_nghiphep" OVERRIDING SYSTEM VALUE VALUES (7, 1, 'T123', '2021-11-03', 1, '2021-11-03', 1, 'aaa', '2021-11-03', '2021-11-03', NULL);
INSERT INTO "tbl_donxin_nghiphep" OVERRIDING SYSTEM VALUE VALUES (2, 2, 'Tại vì mưa không rơi', '2021-03-03', 1, '2021-11-03', 1, 'thích thì hủy thôi', '2021-03-03', NULL, NULL);
INSERT INTO "tbl_donxin_nghiphep" OVERRIDING SYSTEM VALUE VALUES (8, 1, 'T123', '2021-11-03', 1, '2021-11-03', 2, 'T213', '2021-11-03', '2021-11-03', 'Xóa');
INSERT INTO "tbl_donxin_nghiphep" OVERRIDING SYSTEM VALUE VALUES (6, 1, 'T123', '2021-11-03', 1, '2021-11-03', 2, 'T213', '2021-11-03', '2021-11-03', 'B, "FK_iNguoiDuyetID" = 1');
INSERT INTO "tbl_donxin_nghiphep" OVERRIDING SYSTEM VALUE VALUES (9, 1, 'Lý do nghỉ 1', '2021-12-03', NULL, NULL, 0, '123213', '2021-11-03', '2021-12-03', NULL);
INSERT INTO "tbl_donxin_nghiphep" OVERRIDING SYSTEM VALUE VALUES (10, 1, 'Lý do 3', '2021-12-03', NULL, NULL, 0, 'ok', '2021-03-14', '2021-03-14', NULL);
INSERT INTO "tbl_donxin_nghiphep" OVERRIDING SYSTEM VALUE VALUES (11, 1, '', '2021-12-03', NULL, NULL, 0, '', '2021-03-28', '2021-03-28', NULL);
INSERT INTO "tbl_donxin_nghiphep" OVERRIDING SYSTEM VALUE VALUES (12, 1, 'Tesst', '2021-12-03', NULL, NULL, 0, 'T', '2021-03-19', '2021-03-28', NULL);
INSERT INTO "tbl_donxin_nghiphep" OVERRIDING SYSTEM VALUE VALUES (13, 1, '', '2021-12-03', NULL, NULL, 0, '', '2021-03-19', '2021-03-31', NULL);
INSERT INTO "tbl_donxin_nghiphep" OVERRIDING SYSTEM VALUE VALUES (3, 1, 'TTT', NULL, NULL, NULL, 0, 'TTTTTTTTTTTTTTT', '2021-10-03', '2021-12-03', NULL);
INSERT INTO "tbl_donxin_nghiphep" OVERRIDING SYSTEM VALUE VALUES (1, 1, 'Tại vì mưa rơi', '2021-03-01', 1, '2021-07-03', 0, 'b', '2021-03-01', NULL, NULL);
INSERT INTO "tbl_donxin_nghiphep" OVERRIDING SYSTEM VALUE VALUES (4, 1, 'sss', '2021-11-03', 1, '2021-11-03', 0, 'TTT', '2021-11-03', '2021-11-03', NULL);
INSERT INTO "tbl_donxin_nghiphep" OVERRIDING SYSTEM VALUE VALUES (5, 1, 'Test 1', '2021-11-03', 1, '2021-11-03', 0, 'TTTTTTTTTT', '2021-11-03', '2021-11-03', NULL);
COMMIT;

-- ----------------------------
-- Table structure for tbl_ngaynghi_trongnam
-- ----------------------------
DROP TABLE IF EXISTS "tbl_ngaynghi_trongnam";
CREATE TABLE "tbl_ngaynghi_trongnam" (
  "PK_iNgaynghiTrongnamID" int8 NOT NULL GENERATED ALWAYS AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
),
  "sTenNgaynghi" varchar(300) COLLATE "pg_catalog"."default" NOT NULL,
  "FK_iNguoitaoID" int8,
  "dThoigianTao" date,
  "dNgayBatdau" date,
  "dNgayKethuc" date
)
;

-- ----------------------------
-- Records of tbl_ngaynghi_trongnam
-- ----------------------------
BEGIN;
INSERT INTO "tbl_ngaynghi_trongnam" OVERRIDING SYSTEM VALUE VALUES (7, 'Tết tây', 1, '2020-01-01', '2020-01-01', '2020-01-01');
INSERT INTO "tbl_ngaynghi_trongnam" OVERRIDING SYSTEM VALUE VALUES (24, 'TTTTTT', 1, '2021-08-03', '2021-04-02', '2021-04-02');
COMMIT;

-- ----------------------------
-- Table structure for tbl_nhanvien
-- ----------------------------
DROP TABLE IF EXISTS "tbl_nhanvien";
CREATE TABLE "tbl_nhanvien" (
  "PK_iNhanvienID" int8 NOT NULL GENERATED ALWAYS AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
),
  "sHoten" varchar(255) COLLATE "pg_catalog"."default",
  "sTen" varchar(25) COLLATE "pg_catalog"."default",
  "dNgaysinh" date,
  "bGioitinh" bit(1),
  "sDiachi" text COLLATE "pg_catalog"."default",
  "sDienthoai" varchar(20) COLLATE "pg_catalog"."default",
  "sCMND" varchar(20) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of tbl_nhanvien
-- ----------------------------
BEGIN;
INSERT INTO "tbl_nhanvien" OVERRIDING SYSTEM VALUE VALUES (1, 'Nguyễn Đình', 'Thi', '1999-08-05', '1', 'Nguyễn Khoái', '0906225615', '013675498');
INSERT INTO "tbl_nhanvien" OVERRIDING SYSTEM VALUE VALUES (2, 'Bùi Văn', 'Hùng', '1999-01-01', '1', 'Hòa Bình', '0123456789', '012345678');
INSERT INTO "tbl_nhanvien" OVERRIDING SYSTEM VALUE VALUES (3, 'Nguyễn Duy', 'Thành', '1998-07-05', '1', 'Hà Tây', '0123456799', '013245699');
COMMIT;

-- ----------------------------
-- Table structure for tbl_quatrinh_lamviec
-- ----------------------------
DROP TABLE IF EXISTS "tbl_quatrinh_lamviec";
CREATE TABLE "tbl_quatrinh_lamviec" (
  "PK_iQuatrinhLamviecID" int8 NOT NULL GENERATED ALWAYS AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
),
  "FK_iNhanvienID" int8,
  "dNgayBatdau" date,
  "dNgayKethuc" date,
  "FK_iVitriCongviecID" int8,
  "FK_iNguoiChuyenID" int8,
  "sGhichu" text COLLATE "pg_catalog"."default",
  "tThoigianChuyen" timestamp(6)
)
;

-- ----------------------------
-- Records of tbl_quatrinh_lamviec
-- ----------------------------
BEGIN;
INSERT INTO "tbl_quatrinh_lamviec" OVERRIDING SYSTEM VALUE VALUES (2, 1, '2021-08-03', NULL, 1, 1, NULL, NULL);
INSERT INTO "tbl_quatrinh_lamviec" OVERRIDING SYSTEM VALUE VALUES (1, 2, '2020-08-03', NULL, 3, 1, NULL, NULL);
INSERT INTO "tbl_quatrinh_lamviec" OVERRIDING SYSTEM VALUE VALUES (3, 3, '2021-03-19', NULL, 3, 1, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for tbl_test
-- ----------------------------
DROP TABLE IF EXISTS "tbl_test";
CREATE TABLE "tbl_test" (
  "_id" int4 NOT NULL DEFAULT nextval('tbl_test__id_seq'::regclass),
  "_name" text COLLATE "pg_catalog"."default",
  "_address" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of tbl_test
-- ----------------------------
BEGIN;
INSERT INTO "tbl_test" VALUES (9, 'Thi', 'Hà Nội');
COMMIT;

-- ----------------------------
-- Table structure for tbl_thoigian_lamviec
-- ----------------------------
DROP TABLE IF EXISTS "tbl_thoigian_lamviec";
CREATE TABLE "tbl_thoigian_lamviec" (
  "pk_ithoigianlamviecid" int4 NOT NULL DEFAULT nextval('tbl_thoigian_lamviec_pk_ithoigianlamviecid_seq'::regclass),
  "fk_ibophanid" int4 NOT NULL,
  "tthoigianbatdausang" time(6) NOT NULL,
  "tthoigiankethucsang" time(6) NOT NULL,
  "tthoigianbatdauchieu" time(6) NOT NULL,
  "tthoigiankethucchieu" time(6) NOT NULL,
  "tthoigianbatdautoi" time(6) NOT NULL,
  "tthoigiankethuctoi" time(6) NOT NULL,
  "sngaytrongtuan" varchar(10) COLLATE "pg_catalog"."default" NOT NULL,
  "dngayapdung" timestamp(6) NOT NULL,
  "fk_inguoitao" int4 NOT NULL,
  "tthoigiantao" timestamp(6) NOT NULL
)
;

-- ----------------------------
-- Records of tbl_thoigian_lamviec
-- ----------------------------
BEGIN;
INSERT INTO "tbl_thoigian_lamviec" VALUES (11, 2, '08:00:00', '12:00:00', '13:30:00', '17:30:00', '00:00:00', '00:00:00', '0', '2021-02-22 00:01:38', 0, '2021-02-23 00:01:38');
INSERT INTO "tbl_thoigian_lamviec" VALUES (12, 2, '08:00:00', '12:00:00', '13:30:00', '17:30:00', '00:00:00', '00:00:00', '1', '2021-02-22 00:01:38', 0, '2021-02-23 00:01:38');
INSERT INTO "tbl_thoigian_lamviec" VALUES (14, 2, '08:00:00', '12:00:00', '13:30:00', '17:30:00', '00:00:00', '00:00:00', '3', '2021-02-22 00:01:38', 0, '2021-02-23 00:01:38');
INSERT INTO "tbl_thoigian_lamviec" VALUES (15, 2, '08:00:00', '12:00:00', '13:30:00', '17:30:00', '00:00:00', '00:00:00', '4', '2021-02-22 00:01:38', 0, '2021-02-23 00:01:38');
INSERT INTO "tbl_thoigian_lamviec" VALUES (16, 2, '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '5', '2021-02-22 00:01:38', 0, '2021-02-23 00:01:38');
INSERT INTO "tbl_thoigian_lamviec" VALUES (17, 2, '00:00:00', '00:00:00', '13:30:00', '16:30:00', '00:00:00', '00:00:00', '6', '2021-02-22 00:01:38', 0, '2021-02-23 00:01:38');
INSERT INTO "tbl_thoigian_lamviec" VALUES (18, 3, '01:00:00', '01:13:00', '12:00:00', '12:00:00', '00:00:00', '00:00:00', '4', '2021-02-23 00:01:38', 1, '2021-02-28 23:26:53');
INSERT INTO "tbl_thoigian_lamviec" VALUES (21, 3, '01:04:00', '01:13:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '6', '2021-02-23 00:01:38', 1, '2021-02-28 23:27:35');
INSERT INTO "tbl_thoigian_lamviec" VALUES (4, 1, '08:00:00', '12:00:00', '13:00:00', '17:00:00', '00:00:00', '00:00:00', '0', '2021-02-23 00:01:38', 1, '2021-03-19 12:16:01');
INSERT INTO "tbl_thoigian_lamviec" VALUES (5, 1, '08:00:00', '12:00:00', '13:00:00', '17:00:00', '00:00:00', '00:00:00', '1', '2021-02-23 00:01:38', 1, '2021-03-19 12:16:05');
INSERT INTO "tbl_thoigian_lamviec" VALUES (20, 3, '13:00:00', '12:59:00', '01:00:00', '12:59:00', '01:00:00', '01:59:00', '0', '2021-02-23 00:01:38', 1, '2021-02-28 23:29:58');
INSERT INTO "tbl_thoigian_lamviec" VALUES (19, 3, '09:42:00', '00:45:00', '01:04:00', '01:13:00', '00:00:00', '00:00:00', '5', '2021-02-23 00:01:38', 1, '2021-03-01 09:44:05');
INSERT INTO "tbl_thoigian_lamviec" VALUES (6, 1, '08:00:00', '12:00:00', '13:00:00', '17:00:00', '00:00:00', '00:00:00', '2', '2021-02-23 00:01:38', 1, '2021-03-19 12:16:08');
INSERT INTO "tbl_thoigian_lamviec" VALUES (7, 1, '08:00:00', '12:00:00', '13:00:00', '17:00:00', '00:00:00', '00:00:00', '3', '2021-02-23 00:01:38', 1, '2021-03-19 12:16:11');
INSERT INTO "tbl_thoigian_lamviec" VALUES (8, 1, '08:00:00', '12:00:00', '13:00:00', '17:00:00', '00:00:00', '00:00:00', '4', '2021-02-23 00:01:38', 1, '2021-03-19 12:16:14');
INSERT INTO "tbl_thoigian_lamviec" VALUES (9, 1, '08:00:00', '12:00:00', '13:00:00', '17:00:00', '00:00:00', '00:00:00', '5', '2021-02-23 00:01:38', 1, '2021-03-19 12:16:17');
INSERT INTO "tbl_thoigian_lamviec" VALUES (10, 1, '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '6', '2021-02-23 00:01:38', 1, '2021-03-19 20:32:20');
INSERT INTO "tbl_thoigian_lamviec" VALUES (22, 3, '01:00:00', '12:59:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '1', '2021-02-23 00:01:38', 1, '2021-03-06 13:56:57');
INSERT INTO "tbl_thoigian_lamviec" VALUES (13, 2, '00:00:00', '00:00:00', '13:30:00', '17:34:00', '00:00:00', '00:00:00', '2', '2021-02-23 00:01:38', 1, '2021-08-03 13:49:09');
COMMIT;

-- ----------------------------
-- Table structure for tbl_vitri_congviec
-- ----------------------------
DROP TABLE IF EXISTS "tbl_vitri_congviec";
CREATE TABLE "tbl_vitri_congviec" (
  "PK_iVitriCongviecID" int8 NOT NULL GENERATED ALWAYS AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
),
  "sTenVitriCongviec" varchar(255) COLLATE "pg_catalog"."default",
  "FK_iBophanID" int8,
  "iThutuVitriCongviec" int8
)
;

-- ----------------------------
-- Records of tbl_vitri_congviec
-- ----------------------------
BEGIN;
INSERT INTO "tbl_vitri_congviec" OVERRIDING SYSTEM VALUE VALUES (1, 'Trưởng bộ phận', 1, 1);
INSERT INTO "tbl_vitri_congviec" OVERRIDING SYSTEM VALUE VALUES (3, 'Nhân viên chính', 1, 3);
INSERT INTO "tbl_vitri_congviec" OVERRIDING SYSTEM VALUE VALUES (2, 'Phó bộ phận', 2, 2);
COMMIT;

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "tbl_bophan_pk_ibophanid_seq"
OWNED BY "tbl_bophan"."pk_ibophanid";
SELECT setval('"tbl_bophan_pk_ibophanid_seq"', 10, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "tbl_donxin_nghiphep_PK_iDonxinNghiphepID_seq"
OWNED BY "tbl_donxin_nghiphep"."PK_iDonxinNghiphepID";
SELECT setval('"tbl_donxin_nghiphep_PK_iDonxinNghiphepID_seq"', 14, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "tbl_ngaynghi_trongnam_PK_iNgaynghiTrongnamID_seq"
OWNED BY "tbl_ngaynghi_trongnam"."PK_iNgaynghiTrongnamID";
SELECT setval('"tbl_ngaynghi_trongnam_PK_iNgaynghiTrongnamID_seq"', 26, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "tbl_nhanvien_PK_iNhanvienID_seq"
OWNED BY "tbl_nhanvien"."PK_iNhanvienID";
SELECT setval('"tbl_nhanvien_PK_iNhanvienID_seq"', 4, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "tbl_quatrinh_lamviec_PK_iQuatrinhLamviecID_seq"
OWNED BY "tbl_quatrinh_lamviec"."PK_iQuatrinhLamviecID";
SELECT setval('"tbl_quatrinh_lamviec_PK_iQuatrinhLamviecID_seq"', 4, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "tbl_test__id_seq"
OWNED BY "tbl_test"."_id";
SELECT setval('"tbl_test__id_seq"', 10, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "tbl_thoigian_lamviec_pk_ithoigianlamviecid_seq"
OWNED BY "tbl_thoigian_lamviec"."pk_ithoigianlamviecid";
SELECT setval('"tbl_thoigian_lamviec_pk_ithoigianlamviecid_seq"', 23, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "tbl_vitri_congviec_PK_iVitriCongviecID_seq"
OWNED BY "tbl_vitri_congviec"."PK_iVitriCongviecID";
SELECT setval('"tbl_vitri_congviec_PK_iVitriCongviecID_seq"', 4, true);

-- ----------------------------
-- Primary Key structure for table dm_trangthai_donxin_nghiphep
-- ----------------------------
ALTER TABLE "dm_trangthai_donxin_nghiphep" ADD CONSTRAINT "dm_trangthai_donxin_nghiphep_pkey" PRIMARY KEY ("PK_iTrangthaiDonxinNghiphepID");

-- ----------------------------
-- Primary Key structure for table tbl_bangchamcong
-- ----------------------------
ALTER TABLE "tbl_bangchamcong" ADD CONSTRAINT "tbl_bangchamcong_pkey" PRIMARY KEY ("PK_sBangChamcongID");

-- ----------------------------
-- Primary Key structure for table tbl_bophan
-- ----------------------------
ALTER TABLE "tbl_bophan" ADD CONSTRAINT "tbl_bophan_pkey" PRIMARY KEY ("pk_ibophanid");

-- ----------------------------
-- Primary Key structure for table tbl_donxin_nghiphep
-- ----------------------------
ALTER TABLE "tbl_donxin_nghiphep" ADD CONSTRAINT "tbl_donxin_nghiphep_pkey" PRIMARY KEY ("PK_iDonxinNghiphepID");

-- ----------------------------
-- Primary Key structure for table tbl_ngaynghi_trongnam
-- ----------------------------
ALTER TABLE "tbl_ngaynghi_trongnam" ADD CONSTRAINT "tbl_ngaynghi_trongnamHide_pkey" PRIMARY KEY ("PK_iNgaynghiTrongnamID");

-- ----------------------------
-- Primary Key structure for table tbl_nhanvien
-- ----------------------------
ALTER TABLE "tbl_nhanvien" ADD CONSTRAINT "tbl_nhanvien_pkey" PRIMARY KEY ("PK_iNhanvienID");

-- ----------------------------
-- Primary Key structure for table tbl_vitri_congviec
-- ----------------------------
ALTER TABLE "tbl_vitri_congviec" ADD CONSTRAINT "tbl_vitri_congviec_pkey" PRIMARY KEY ("PK_iVitriCongviecID");
