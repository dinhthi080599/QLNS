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
-- Name: dm_trangthai_donxin_nghiphep; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dm_trangthai_donxin_nghiphep (
    "PK_iTrangthaiDonxinNghiphepID" smallint NOT NULL,
    "sTenTrangthaiDonxinNghiphep" character varying(255)
);


ALTER TABLE public.dm_trangthai_donxin_nghiphep OWNER TO postgres;

--
-- Name: tbl_bangchamcong; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tbl_bangchamcong (
    "PK_sBangChamcongID" character varying(60) NOT NULL,
    "FK_iNhanvienID" character varying(40),
    "tThoigianVaolamSang" character varying(255),
    "tThoigianNghiSang" character varying(255),
    "tThoigianVaolamChieu" character varying(255),
    "tThoigianNghiChieu" character varying(255),
    "tThoigianVaolamToi" character varying(255),
    "tThoigianNghiToi" character varying(255),
    "dNgayChamcong" character varying(255)
);


ALTER TABLE public.tbl_bangchamcong OWNER TO postgres;

--
-- Name: tbl_bophan; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tbl_bophan (
    stenbophan character varying(255),
    ithutubophan smallint,
    _id character varying(40) NOT NULL,
    pk_ibophanid character varying(40)
);


ALTER TABLE public.tbl_bophan OWNER TO postgres;

--
-- Name: tbl_donxin_nghiphep; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tbl_donxin_nghiphep (
    "PK_iDonxinNghiphepID" integer NOT NULL,
    fk_inhanvienid character varying(40),
    "sLydoNghi" text,
    "tThoigianTao" date,
    "FK_iNguoiDuyetID" character varying(40),
    "dThoigianDuyet" date,
    "FK_iTrangthaiDonxinNghiphepID" smallint,
    "sGhichuDonxinNghiphep" text,
    "dNgayNghi" date,
    "dNgayKethucNghi" date,
    "sLydoHuy" text
);


ALTER TABLE public.tbl_donxin_nghiphep OWNER TO postgres;

--
-- Name: tbl_donxin_nghiphep_PK_iDonxinNghiphepID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.tbl_donxin_nghiphep ALTER COLUMN "PK_iDonxinNghiphepID" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."tbl_donxin_nghiphep_PK_iDonxinNghiphepID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


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
-- Name: tbl_nhanvien; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tbl_nhanvien (
    pk_inhanvienid bigint NOT NULL,
    shoten character varying(255),
    sten character varying(25),
    dngaysinh date,
    bgioitinh bit(1),
    sdiachi text,
    sdienthoai character varying(20),
    scmnd character varying(20),
    _id character varying(40) NOT NULL,
    smanhanvien character varying(50),
    snoisinh text,
    snguyenquyen text,
    semail character varying(100),
    sduongdananhdaidien text,
    fk_inguoithemid character varying(50)
);


ALTER TABLE public.tbl_nhanvien OWNER TO postgres;

--
-- Name: tbl_quatrinh_lamviec; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tbl_quatrinh_lamviec (
    pk_iquatrinhlamviecid bigint NOT NULL,
    fk_inhanvienid character varying(40),
    dngaybatdau date,
    dngaykethuc date,
    fk_ivitricongviecid character varying(40),
    fk_inguoichuyenid character varying(40),
    sghichu text,
    tthoigianchuyen timestamp(6) without time zone,
    _id character varying(40) NOT NULL
);


ALTER TABLE public.tbl_quatrinh_lamviec OWNER TO postgres;

--
-- Name: tbl_thoigian_lamviec; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tbl_thoigian_lamviec (
    pk_ithoigianlamviecid integer,
    fk_ibophanid character varying(40),
    tthoigianbatdausang time without time zone,
    tthoigiankethucsang time without time zone,
    tthoigianbatdauchieu time without time zone,
    tthoigiankethucchieu time without time zone,
    tthoigianbatdautoi time without time zone,
    tthoigiankethuctoi time without time zone,
    sngaytrongtuan character varying(10),
    dngayapdung timestamp without time zone,
    tthoigiantao timestamp without time zone,
    fk_inguoitao character varying(40)
);


ALTER TABLE public.tbl_thoigian_lamviec OWNER TO postgres;

--
-- Name: tbl_thoigian_lamviec_pk_ithoigianlamviecid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tbl_thoigian_lamviec_pk_ithoigianlamviecid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbl_thoigian_lamviec_pk_ithoigianlamviecid_seq OWNER TO postgres;

--
-- Name: tbl_thoigian_lamviec_pk_ithoigianlamviecid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tbl_thoigian_lamviec_pk_ithoigianlamviecid_seq OWNED BY public.tbl_thoigian_lamviec.pk_ithoigianlamviecid;


--
-- Name: tbl_vitri_congviec; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tbl_vitri_congviec (
    stenvitricongviec character varying(255),
    fk_ibophanid character varying(40),
    ithutuvitricongviec bigint,
    _id character varying(40) NOT NULL,
    pk_ivitricongviecid character varying(40)
);


ALTER TABLE public.tbl_vitri_congviec OWNER TO postgres;

--
-- Name: tbl_thoigian_lamviec pk_ithoigianlamviecid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tbl_thoigian_lamviec ALTER COLUMN pk_ithoigianlamviecid SET DEFAULT nextval('public.tbl_thoigian_lamviec_pk_ithoigianlamviecid_seq'::regclass);


--
-- Name: dm_trangthai_donxin_nghiphep dm_trangthai_donxin_nghiphep_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dm_trangthai_donxin_nghiphep
    ADD CONSTRAINT dm_trangthai_donxin_nghiphep_pkey PRIMARY KEY ("PK_iTrangthaiDonxinNghiphepID");


--
-- Name: tbl_bangchamcong tbl_bangchamcong_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tbl_bangchamcong
    ADD CONSTRAINT tbl_bangchamcong_pkey PRIMARY KEY ("PK_sBangChamcongID");


--
-- Name: tbl_bophan tbl_bophan_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tbl_bophan
    ADD CONSTRAINT tbl_bophan_pkey PRIMARY KEY (_id);


--
-- Name: tbl_donxin_nghiphep tbl_donxin_nghiphep_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tbl_donxin_nghiphep
    ADD CONSTRAINT tbl_donxin_nghiphep_pkey PRIMARY KEY ("PK_iDonxinNghiphepID");


--
-- Name: tbl_ngaynghi_trongnam tbl_ngaynghi_trongnamHide_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tbl_ngaynghi_trongnam
    ADD CONSTRAINT "tbl_ngaynghi_trongnamHide_pkey" PRIMARY KEY ("PK_iNgaynghiTrongnamID");


--
-- Name: tbl_nhanvien tbl_nhanvien_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tbl_nhanvien
    ADD CONSTRAINT tbl_nhanvien_pkey PRIMARY KEY (_id);


--
-- Name: tbl_quatrinh_lamviec tbl_quatrinh_lamviec_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tbl_quatrinh_lamviec
    ADD CONSTRAINT tbl_quatrinh_lamviec_pkey PRIMARY KEY (_id);


--
-- Name: tbl_vitri_congviec tbl_vitri_congviec_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tbl_vitri_congviec
    ADD CONSTRAINT tbl_vitri_congviec_pkey PRIMARY KEY (_id);


--
-- Name: tbl_bangchamcong tbl_bangchamcong_FK_iNhanvienID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tbl_bangchamcong
    ADD CONSTRAINT "tbl_bangchamcong_FK_iNhanvienID_fkey" FOREIGN KEY ("FK_iNhanvienID") REFERENCES public.tbl_nhanvien(_id);


--
-- Name: tbl_donxin_nghiphep tbl_donxin_nghiphep_FK_iNguoiDuyetID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tbl_donxin_nghiphep
    ADD CONSTRAINT "tbl_donxin_nghiphep_FK_iNguoiDuyetID_fkey" FOREIGN KEY ("FK_iNguoiDuyetID") REFERENCES public.tbl_nhanvien(_id);


--
-- Name: tbl_donxin_nghiphep tbl_donxin_nghiphep_FK_iNhanvienID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tbl_donxin_nghiphep
    ADD CONSTRAINT "tbl_donxin_nghiphep_FK_iNhanvienID_fkey" FOREIGN KEY (fk_inhanvienid) REFERENCES public.tbl_nhanvien(_id);


--
-- Name: tbl_donxin_nghiphep tbl_donxin_nghiphep_FK_iTrangthaiDonxinNghiphepID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tbl_donxin_nghiphep
    ADD CONSTRAINT "tbl_donxin_nghiphep_FK_iTrangthaiDonxinNghiphepID_fkey" FOREIGN KEY ("FK_iTrangthaiDonxinNghiphepID") REFERENCES public.dm_trangthai_donxin_nghiphep("PK_iTrangthaiDonxinNghiphepID");


--
-- Name: tbl_ngaynghi_trongnam tbl_ngaynghi_trongnam_FK_iNguoitaoID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tbl_ngaynghi_trongnam
    ADD CONSTRAINT "tbl_ngaynghi_trongnam_FK_iNguoitaoID_fkey" FOREIGN KEY ("FK_iNguoitaoID") REFERENCES public.tbl_nhanvien(_id);


--
-- Name: tbl_quatrinh_lamviec tbl_quatrinh_lamviec_FK_iNguoiChuyenID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tbl_quatrinh_lamviec
    ADD CONSTRAINT "tbl_quatrinh_lamviec_FK_iNguoiChuyenID_fkey" FOREIGN KEY (fk_inguoichuyenid) REFERENCES public.tbl_nhanvien(_id);


--
-- Name: tbl_quatrinh_lamviec tbl_quatrinh_lamviec_FK_iNhanvienID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tbl_quatrinh_lamviec
    ADD CONSTRAINT "tbl_quatrinh_lamviec_FK_iNhanvienID_fkey" FOREIGN KEY (fk_inhanvienid) REFERENCES public.tbl_nhanvien(_id);


--
-- Name: tbl_quatrinh_lamviec tbl_quatrinh_lamviec_FK_iVitriCongviecID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tbl_quatrinh_lamviec
    ADD CONSTRAINT "tbl_quatrinh_lamviec_FK_iVitriCongviecID_fkey" FOREIGN KEY (fk_ivitricongviecid) REFERENCES public.tbl_vitri_congviec(_id);


--
-- Name: tbl_thoigian_lamviec tbl_thoigian_lamviec_fk_ibophanid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tbl_thoigian_lamviec
    ADD CONSTRAINT tbl_thoigian_lamviec_fk_ibophanid_fkey FOREIGN KEY (fk_ibophanid) REFERENCES public.tbl_bophan(_id);


--
-- Name: tbl_vitri_congviec tbl_vitri_congviec_FK_iBophanID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tbl_vitri_congviec
    ADD CONSTRAINT "tbl_vitri_congviec_FK_iBophanID_fkey" FOREIGN KEY (fk_ibophanid) REFERENCES public.tbl_bophan(_id);


--
-- PostgreSQL database dump complete
--

