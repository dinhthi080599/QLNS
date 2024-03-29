--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1
-- Dumped by pg_dump version 13.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: tbl_ngaynghi_trongnam; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tbl_ngaynghi_trongnam (
    "PK_iNgaynghiTrongnamID" bigint NOT NULL,
    "sTenNgaynghi" character varying(300) NOT NULL,
    "FK_iNguoitaoID" character varying(40),
    "dThoigianTao" date,
    "dNgayBatdau" date,
    "dNgayKethuc" date
);


ALTER TABLE public.tbl_ngaynghi_trongnam OWNER TO postgres;

--
-- Name: tbl_ngaynghi_trongnam_PK_iNgaynghiTrongnamID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.tbl_ngaynghi_trongnam ALTER COLUMN "PK_iNgaynghiTrongnamID" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."tbl_ngaynghi_trongnam_PK_iNgaynghiTrongnamID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Data for Name: tbl_ngaynghi_trongnam; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.tbl_ngaynghi_trongnam ("PK_iNgaynghiTrongnamID", "sTenNgaynghi", "FK_iNguoitaoID", "dThoigianTao", "dNgayBatdau", "dNgayKethuc") OVERRIDING SYSTEM VALUE VALUES (42, 'Tß║┐t D╞░╞íng lß╗ïch', '604e50f39c8b96835ba9ff97', '2021-03-28', '2020-01-01', '2020-01-01');
INSERT INTO public.tbl_ngaynghi_trongnam ("PK_iNgaynghiTrongnamID", "sTenNgaynghi", "FK_iNguoitaoID", "dThoigianTao", "dNgayBatdau", "dNgayKethuc") OVERRIDING SYSTEM VALUE VALUES (43, 'Tß║┐t ├ém lß╗ïch', '604e50f39c8b96835ba9ff97', '2021-03-28', '2020-01-23', '2020-01-29');
INSERT INTO public.tbl_ngaynghi_trongnam ("PK_iNgaynghiTrongnamID", "sTenNgaynghi", "FK_iNguoitaoID", "dThoigianTao", "dNgayBatdau", "dNgayKethuc") OVERRIDING SYSTEM VALUE VALUES (44, 'Giß╗ù tß╗ò H├╣ng V╞░╞íng', '604e50f39c8b96835ba9ff97', '2021-03-28', '2020-04-02', '2020-04-02');
INSERT INTO public.tbl_ngaynghi_trongnam ("PK_iNgaynghiTrongnamID", "sTenNgaynghi", "FK_iNguoitaoID", "dThoigianTao", "dNgayBatdau", "dNgayKethuc") OVERRIDING SYSTEM VALUE VALUES (45, 'Ng├áy Chiß║┐n thß║»ng v├á ng├áy Quß╗æc tß║┐ lao ─æß╗Öng', '604e50f39c8b96835ba9ff97', '2021-03-28', '2020-04-30', '2020-05-03');
INSERT INTO public.tbl_ngaynghi_trongnam ("PK_iNgaynghiTrongnamID", "sTenNgaynghi", "FK_iNguoitaoID", "dThoigianTao", "dNgayBatdau", "dNgayKethuc") OVERRIDING SYSTEM VALUE VALUES (46, 'Ng├áy Quß╗æc kh├ính', '604e50f39c8b96835ba9ff97', '2021-03-28', '2020-09-02', '2020-09-02');
INSERT INTO public.tbl_ngaynghi_trongnam ("PK_iNgaynghiTrongnamID", "sTenNgaynghi", "FK_iNguoitaoID", "dThoigianTao", "dNgayBatdau", "dNgayKethuc") OVERRIDING SYSTEM VALUE VALUES (47, 'Tß║┐t D╞░╞íng lß╗ïch', '604e50f39c8b96835ba9ff97', '2021-03-28', '2021-01-01', '2021-01-01');
INSERT INTO public.tbl_ngaynghi_trongnam ("PK_iNgaynghiTrongnamID", "sTenNgaynghi", "FK_iNguoitaoID", "dThoigianTao", "dNgayBatdau", "dNgayKethuc") OVERRIDING SYSTEM VALUE VALUES (48, 'Tß║┐t ├ém lß╗ïch 2021', '604e50f39c8b96835ba9ff97', '2021-03-28', '2021-02-10', '2021-02-16');
INSERT INTO public.tbl_ngaynghi_trongnam ("PK_iNgaynghiTrongnamID", "sTenNgaynghi", "FK_iNguoitaoID", "dThoigianTao", "dNgayBatdau", "dNgayKethuc") OVERRIDING SYSTEM VALUE VALUES (49, 'Giß╗ù tß╗ò H├╣ng V╞░╞íng', '604e50f39c8b96835ba9ff97', '2021-03-28', '2021-04-21', '2021-04-21');
INSERT INTO public.tbl_ngaynghi_trongnam ("PK_iNgaynghiTrongnamID", "sTenNgaynghi", "FK_iNguoitaoID", "dThoigianTao", "dNgayBatdau", "dNgayKethuc") OVERRIDING SYSTEM VALUE VALUES (50, 'Ng├áy Chiß║┐n thß║»ng v├á ng├áy Quß╗æc tß║┐ lao ─æß╗Öng', '604e50f39c8b96835ba9ff97', '2021-03-28', '2021-04-30', '2021-05-03');
INSERT INTO public.tbl_ngaynghi_trongnam ("PK_iNgaynghiTrongnamID", "sTenNgaynghi", "FK_iNguoitaoID", "dThoigianTao", "dNgayBatdau", "dNgayKethuc") OVERRIDING SYSTEM VALUE VALUES (51, 'Ng├áy Quß╗æc kh├ính (2/9)', '604e50f39c8b96835ba9ff97', '2021-03-28', '2021-09-02', '2021-09-05');


--
-- Name: tbl_ngaynghi_trongnam_PK_iNgaynghiTrongnamID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."tbl_ngaynghi_trongnam_PK_iNgaynghiTrongnamID_seq"', 51, true);


--
-- Name: tbl_ngaynghi_trongnam tbl_ngaynghi_trongnamHide_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tbl_ngaynghi_trongnam
    ADD CONSTRAINT "tbl_ngaynghi_trongnamHide_pkey" PRIMARY KEY ("PK_iNgaynghiTrongnamID");


--
-- Name: tbl_ngaynghi_trongnam tbl_ngaynghi_trongnam_FK_iNguoitaoID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tbl_ngaynghi_trongnam
    ADD CONSTRAINT "tbl_ngaynghi_trongnam_FK_iNguoitaoID_fkey" FOREIGN KEY ("FK_iNguoitaoID") REFERENCES public.tbl_nhanvien(_id);


--
-- PostgreSQL database dump complete
--

