--
-- PostgreSQL database dump
--

\restrict boi4DgAKhUCmNZxOazja74Tu9H78wz43ofcRCkG3W0dDx1L20IjLWzCawuQCvwh

-- Dumped from database version 17.6
-- Dumped by pg_dump version 17.6

-- Started on 2025-10-21 11:07:17

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- TOC entry 217 (class 1259 OID 17562)
-- Name: Akun; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Akun" (
    id character varying(10) NOT NULL,
    username character varying(25) NOT NULL,
    password character varying(25) NOT NULL
);


ALTER TABLE public."Akun" OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 17565)
-- Name: Buku; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Buku" (
    isbn character varying(13) NOT NULL,
    judul character varying(50) NOT NULL,
    stok numeric(5,0) NOT NULL,
    harga numeric(9,0) NOT NULL,
    tahun_terbit numeric(4,0) NOT NULL,
    id_penerbit character varying(10)
);


ALTER TABLE public."Buku" OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 17568)
-- Name: Ditulis; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Ditulis" (
    isbn character varying(13) NOT NULL,
    id_penulis character varying(10) NOT NULL
);


ALTER TABLE public."Ditulis" OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 17571)
-- Name: Karyawan; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Karyawan" (
    id_karyawan character varying(10) NOT NULL,
    nama_depan character varying(25) NOT NULL,
    nama_belakang character varying(25) NOT NULL,
    jenis_kelamin character varying(1) NOT NULL,
    email character varying(25) NOT NULL,
    jabatan character varying(25) NOT NULL,
    alamat_nama_jalan character varying(50) NOT NULL,
    kode_pos character varying(10) NOT NULL
);


ALTER TABLE public."Karyawan" OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 17574)
-- Name: Kategori; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Kategori" (
    id_kategori character varying(10) NOT NULL,
    nama character varying(25) NOT NULL
);


ALTER TABLE public."Kategori" OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 17577)
-- Name: Kode_Pos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Kode_Pos" (
    kode_pos character varying NOT NULL,
    nama_provinsi character varying NOT NULL,
    nama_kota character varying NOT NULL,
    nama_kecamatan character varying NOT NULL,
    nama_kelurahan character varying NOT NULL
);


ALTER TABLE public."Kode_Pos" OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 17582)
-- Name: Memiliki (Buku_Kategori); Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Memiliki (Buku_Kategori)" (
    isbn character varying(13) NOT NULL,
    id_kategori character varying(10) NOT NULL
);


ALTER TABLE public."Memiliki (Buku_Kategori)" OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 17585)
-- Name: Memiliki (Pembelian_Buku); Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Memiliki (Pembelian_Buku)" (
    id_pembelian character varying(10) NOT NULL,
    isbn character varying(13) NOT NULL,
    harga_beli numeric(9,0) NOT NULL,
    jumlah_beli numeric(9,0) NOT NULL
);


ALTER TABLE public."Memiliki (Pembelian_Buku)" OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 17588)
-- Name: Memiliki (Transaksi_Buku); Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Memiliki (Transaksi_Buku)" (
    id_transaksi character varying(10) NOT NULL,
    isbn character varying(13) NOT NULL,
    jumlah numeric(3,0) NOT NULL
);


ALTER TABLE public."Memiliki (Transaksi_Buku)" OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 17591)
-- Name: Nomor_Hp_Karyawan; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Nomor_Hp_Karyawan" (
    id_karyawan character varying(10) NOT NULL,
    nomor_hp character varying(12) NOT NULL
);


ALTER TABLE public."Nomor_Hp_Karyawan" OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 17594)
-- Name: Nomor_Hp_Pelanggan; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Nomor_Hp_Pelanggan" (
    id_pelanggan character varying(10) NOT NULL,
    nomor_hp character varying(12) NOT NULL
);


ALTER TABLE public."Nomor_Hp_Pelanggan" OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 17597)
-- Name: Nomor_Hp_Penulis; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Nomor_Hp_Penulis" (
    id_penulis character varying(10) NOT NULL,
    nomor_hp character varying(12) NOT NULL
);


ALTER TABLE public."Nomor_Hp_Penulis" OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 17600)
-- Name: Pelanggan; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Pelanggan" (
    id_pelanggan character varying(10) NOT NULL,
    nama_depan character varying(25) NOT NULL,
    nama_belakang character varying(25) NOT NULL
);


ALTER TABLE public."Pelanggan" OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 17603)
-- Name: Pemasok; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Pemasok" (
    id_pemasok character varying(10) NOT NULL,
    nama character varying(25) NOT NULL,
    alamat_nama_jalan character varying(50) NOT NULL,
    kode_pos character varying(10) NOT NULL
);


ALTER TABLE public."Pemasok" OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 17606)
-- Name: Pembelian; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Pembelian" (
    id_pembelian character varying(10) NOT NULL,
    tanggal_pembelian date NOT NULL,
    id_pemasok character varying(10) NOT NULL
);


ALTER TABLE public."Pembelian" OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 17609)
-- Name: Penerbit; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Penerbit" (
    id_penerbit character varying(10) NOT NULL,
    nama character varying(25) NOT NULL,
    email character varying(25) NOT NULL,
    alamat_nama_jalan character varying(50) NOT NULL,
    kode_pos character varying(10) NOT NULL
);


ALTER TABLE public."Penerbit" OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 17612)
-- Name: Penulis; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Penulis" (
    id_penulis character varying(10) NOT NULL,
    nama_depan character varying(25) NOT NULL,
    nama_belakang character varying(25) NOT NULL
);


ALTER TABLE public."Penulis" OWNER TO postgres;

--
-- TOC entry 234 (class 1259 OID 17615)
-- Name: Transaksi; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Transaksi" (
    id_transaksi character varying(10) NOT NULL,
    tanggal_transaksi date NOT NULL,
    metode_pembayaran character varying(25) NOT NULL,
    id_pelanggan character varying(10) NOT NULL,
    id_karyawan character varying(10) NOT NULL
);


ALTER TABLE public."Transaksi" OWNER TO postgres;

--
-- TOC entry 5008 (class 0 OID 17562)
-- Dependencies: 217
-- Data for Name: Akun; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Akun" (id, username, password) FROM stdin;
A001	user01	pass01
A002	user02	pass02
A003	user03	pass03
A004	user04	pass04
A005	user05	pass05
A006	user06	pass06
A007	user07	pass07
A008	user08	pass08
A009	user09	pass09
A010	user10	pass10
A011	user11	pass11
A012	user12	pass12
A013	user13	pass13
A014	user14	pass14
A015	user15	pass15
A016	user16	pass16
A017	user17	pass17
A018	user18	pass18
A019	user19	pass19
A020	user20	pass20
A021	user21	pass21
A022	user22	pass22
A023	user23	pass23
A024	user24	pass24
A025	user25	pass25
A026	user26	pass26
A027	user27	pass27
A028	user28	pass28
A029	user29	pass29
A030	user30	pass30
A031	user31	pass31
A032	user32	pass32
A033	user33	pass33
A034	user34	pass34
A035	user35	pass35
A036	user36	pass36
A037	user37	pass37
A038	user38	pass38
A039	user39	pass39
A040	user40	pass40
A041	user41	pass41
A042	user42	pass42
A043	user43	pass43
A044	user44	pass44
A045	user45	pass45
A046	user46	pass46
A047	user47	pass47
A048	user48	pass48
A049	user49	pass49
A050	user50	pass50
A051	user51	pass51
A052	user52	pass52
A053	user53	pass53
A054	user54	pass54
A055	user55	pass55
A056	user56	pass56
A057	user57	pass57
A058	user58	pass58
A059	user59	pass59
A060	user60	pass60
A061	user61	pass61
A062	user62	pass62
A063	user63	pass63
A064	user64	pass64
A065	user65	pass65
A066	user66	pass66
A067	user67	pass67
A068	user68	pass68
A069	user69	pass69
A070	user70	pass70
A071	user71	pass71
A072	user72	pass72
A073	user73	pass73
A074	user74	pass74
A075	user75	pass75
A076	user76	pass76
A077	user77	pass77
A078	user78	pass78
A079	user79	pass79
A080	user80	pass80
A081	user81	pass81
A082	user82	pass82
A083	user83	pass83
A084	user84	pass84
A085	user85	pass85
A086	user86	pass86
A087	user87	pass87
A088	user88	pass88
A089	user89	pass89
A090	user90	pass90
A091	user91	pass91
A092	user92	pass92
A093	user93	pass93
A094	user94	pass94
A095	user95	pass95
A096	user96	pass96
A097	user97	pass97
A098	user98	pass98
A099	user99	pass99
A100	user10	pass10
\.


--
-- TOC entry 5009 (class 0 OID 17565)
-- Dependencies: 218
-- Data for Name: Buku; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Buku" (isbn, judul, stok, harga, tahun_terbit, id_penerbit) FROM stdin;
9786020000001	Belajar SQL untuk Pemula	120	75000	2019	P001
9786020000002	Pemrograman Python Dasar	95	110000	2021	P002
9786020000003	Dasar Jaringan Komputer	130	85000	2018	P003
9786020000004	Analisis Data dengan R	80	99000	2022	P004
9786020000005	Pemrograman Java Lanjut	60	145000	2020	P005
9786020000006	Desain Database Relasional	75	87000	2023	P006
9786020000007	Machine Learning Modern	40	220000	2024	P007
9786020000008	Algoritma dan Pemrograman	180	68000	2015	P008
9786020000009	Analisis Sistem Informasi	155	93000	2017	P009
9786020000010	Pemrograman C++ untuk SMK	190	72000	2016	P010
9786020000011	Pemrograman Web dengan PHP	110	95000	2019	P011
9786020000012	HTML dan CSS Modern	130	87000	2020	P012
9786020000013	JavaScript untuk Pemula	70	125000	2021	P013
9786020000014	React JS Praktis	50	175000	2023	P014
9786020000015	Flutter untuk Mobile Apps	65	210000	2022	P015
9786020000016	Panduan Laravel 10	100	115000	2024	P016
9786020000017	Belajar Node.js Dasar	120	99000	2021	P017
9786020000018	Membangun REST API	95	138000	2023	P018
9786020000019	Dasar-Dasar UI/UX	70	85000	2022	P019
9786020000020	Figma untuk Desainer	55	102000	2021	P020
9786020000021	Manajemen Proyek TI	90	88000	2018	P021
9786020000022	Analisis Big Data	40	200000	2023	P022
9786020000023	Keamanan Siber Modern	75	230000	2024	P023
9786020000024	Cloud Computing Dasar	85	150000	2021	P024
9786020000025	Panduan DevOps Praktis	50	240000	2023	P025
9786020000026	Docker dan Kubernetes	60	215000	2022	P026
9786020000027	Pemrograman GoLang	55	190000	2020	P027
9786020000028	Pemrograman Kotlin	70	185000	2021	P028
9786020000029	Android Studio Dasar	80	140000	2019	P029
9786020000030	iOS dengan SwiftUI	45	230000	2024	P030
9786020000031	Blockchain untuk Pemula	50	195000	2023	P031
9786020000032	Artificial Intelligence	35	250000	2024	P032
9786020000033	Data Science Fundamentals	90	210000	2022	P033
9786020000034	Pengenalan Cloud AWS	65	165000	2020	P034
9786020000035	Pengenalan Azure	55	160000	2021	P035
9786020000036	Sistem Operasi Linux	80	89000	2018	P036
9786020000037	Administrasi Server	95	97000	2020	P037
9786020000038	Etika Profesi TI	130	67000	2019	P038
9786020000039	Dasar-Dasar Statistika	125	82000	2018	P039
9786020000040	Matematika Diskrit	115	91000	2017	P040
9786020000041	Pemrograman Python Lanjut	60	145000	2021	P041
9786020000042	AI dengan TensorFlow	45	220000	2024	P042
9786020000043	Pemrograman R Praktis	50	142000	2023	P043
9786020000044	Algoritma Genetika	55	133000	2022	P044
9786020000045	Pemrograman Ruby	70	98000	2021	P045
9786020000046	Dasar Pemrograman PHP	140	76000	2020	P046
9786020000047	Struktur Data	125	97000	2018	P047
9786020000048	Pemrograman Visual Basic	135	83000	2016	P048
9786020000049	Teknologi Informasi	110	92000	2019	P049
9786020000050	Analisis Sistem Bisnis	100	94000	2020	P050
9786020000051	Desain UI untuk Aplikasi	80	99000	2023	P051
9786020000052	Pengantar ERP	65	125000	2021	P052
9786020000053	Sistem Informasi Akuntansi	95	88000	2019	P053
9786020000054	Manajemen Data Warehouse	60	195000	2022	P054
9786020000055	Big Data dengan Hadoop	50	230000	2023	P055
9786020000056	Analisis Algoritma	75	89000	2020	P056
9786020000057	Manajemen Jaringan	65	91000	2018	P057
9786020000058	Pengantar Komputer	150	65000	2016	P058
9786020000059	Teknologi Cloud	80	155000	2023	P059
9786020000060	Pemrograman Scala	45	190000	2022	P060
9786020000061	Analisis dan Perancangan SI	95	120000	2021	P061
9786020000062	Pemrograman Web Lanjut	100	132000	2020	P062
9786020000063	Cyber Security Fundamentals	40	225000	2024	P063
9786020000064	Pemrograman MATLAB	60	178000	2022	P064
9786020000065	Bahasa Assembly Dasar	85	90000	2019	P065
9786020000066	Internet of Things	55	215000	2023	P066
9786020000067	Pemrograman Arduino	75	110000	2021	P067
9786020000068	Sistem Embedded	65	140000	2020	P068
9786020000069	Robotika Dasar	50	198000	2024	P069
9786020000070	Machine Vision	35	230000	2023	P070
9786020000071	Desain Sistem Digital	90	120000	2021	P071
9786020000072	Pemrograman Rust	45	188000	2023	P072
9786020000073	Pemrograman Dart	60	135000	2022	P073
9786020000074	Pemrograman TypeScript	70	165000	2021	P074
9786020000075	Framework Vue.js	50	158000	2023	P075
9786020000076	Pemrograman Next.js	65	178000	2024	P076
9786020000077	Pemrograman Django	55	172000	2022	P077
9786020000078	Pemrograman Flask	50	166000	2021	P078
9786020000079	Pemrograman Spring Boot	60	185000	2023	P079
9786020000080	Microservices Architecture	45	198000	2024	P080
9786020000081	Pemrograman C# Dasar	70	95000	2021	P081
9786020000082	Pemrograman ASP.NET	65	120000	2023	P082
9786020000083	Pemrograman Ruby on Rails	55	130000	2022	P083
9786020000084	Pemrograman SQL Server	95	110000	2019	P084
9786020000085	Pemrograman MongoDB	60	115000	2021	P085
9786020000086	Pemrograman PostgreSQL	80	125000	2022	P086
9786020000087	Pemrograman MySQL	100	95000	2020	P087
9786020000088	Pemrograman Oracle	50	180000	2023	P088
9786020000089	Pemrograman SQLite	85	89000	2020	P089
9786020000090	Pemrograman Redis	70	122000	2023	P090
9786020000091	Pemrograman GraphQL	60	156000	2024	P091
9786020000092	Pemrograman Supabase	55	140000	2023	P092
9786020000093	Pemrograman Firebase	70	165000	2022	P093
9786020000094	Pemrograman Prisma	65	138000	2023	P094
9786020000095	Pemrograman Deno	45	162000	2024	P095
9786020000096	Pemrograman Bun	40	155000	2024	P096
9786020000097	Pemrograman Astro	35	178000	2024	P097
9786020000098	Pemrograman SolidJS	50	180000	2024	P098
9786020000099	Pemrograman Qwik	55	172000	2024	P099
9786020000100	Pemrograman SvelteKit	60	169000	2024	P100
\.


--
-- TOC entry 5010 (class 0 OID 17568)
-- Dependencies: 219
-- Data for Name: Ditulis; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Ditulis" (isbn, id_penulis) FROM stdin;
9786020000001	P001
9786020000002	P002
9786020000003	P003
9786020000004	P004
9786020000005	P005
9786020000006	P006
9786020000007	P007
9786020000008	P008
9786020000009	P009
9786020000010	P010
9786020000011	P011
9786020000012	P012
9786020000013	P013
9786020000014	P014
9786020000015	P015
9786020000016	P016
9786020000017	P017
9786020000018	P018
9786020000019	P019
9786020000020	P020
9786020000021	P021
9786020000022	P022
9786020000023	P023
9786020000024	P024
9786020000025	P025
9786020000026	P026
9786020000027	P027
9786020000028	P028
9786020000029	P029
9786020000030	P030
9786020000031	P031
9786020000032	P032
9786020000033	P033
9786020000034	P034
9786020000035	P035
9786020000036	P036
9786020000037	P037
9786020000038	P038
9786020000039	P039
9786020000040	P040
9786020000041	P041
9786020000042	P042
9786020000043	P043
9786020000044	P044
9786020000045	P045
9786020000046	P046
9786020000047	P047
9786020000048	P048
9786020000049	P049
9786020000050	P050
9786020000051	P051
9786020000052	P052
9786020000053	P053
9786020000054	P054
9786020000055	P055
9786020000056	P056
9786020000057	P057
9786020000058	P058
9786020000059	P059
9786020000060	P060
9786020000061	P061
9786020000062	P062
9786020000063	P063
9786020000064	P064
9786020000065	P065
9786020000066	P066
9786020000067	P067
9786020000068	P068
9786020000069	P069
9786020000070	P070
9786020000071	P071
9786020000072	P072
9786020000073	P073
9786020000074	P074
9786020000075	P075
9786020000076	P076
9786020000077	P077
9786020000078	P078
9786020000079	P079
9786020000080	P080
9786020000081	P081
9786020000082	P082
9786020000083	P083
9786020000084	P084
9786020000085	P085
9786020000086	P086
9786020000087	P087
9786020000088	P088
9786020000089	P089
9786020000090	P090
9786020000091	P091
9786020000092	P092
9786020000093	P093
9786020000094	P094
9786020000095	P095
9786020000096	P096
9786020000097	P097
9786020000098	P098
9786020000099	P099
9786020000100	P100
\.


--
-- TOC entry 5011 (class 0 OID 17571)
-- Dependencies: 220
-- Data for Name: Karyawan; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Karyawan" (id_karyawan, nama_depan, nama_belakang, jenis_kelamin, email, jabatan, alamat_nama_jalan, kode_pos) FROM stdin;
K001	Andi	Saputra	L	andi@perus.com	Manajer	Jl. Merdeka 10	11810
K002	Budi	Santoso	L	budi@perus.com	Supervisor	Jl. Sudirman 45	11811
K003	Citra	Anggraini	P	citra@perus.com	Staff HRD	Jl. Diponegoro 22	11812
K004	Dewi	Lestari	P	dewi@perus.com	Admin	Jl. Gajah Mada 7	11813
K005	Eko	Prasetyo	L	eko@perus.com	Teknisi	Jl. Ahmad Yani 18	11814
K006	Fitri	Haryanti	P	fitri@perus.com	Keuangan	Jl. Kamboja 9	11815
K007	Gilang	Ramadhan	L	gilang@perus.com	Marketing	Jl. Kenanga 4	11816
K008	Hani	Kusuma	P	hani@perus.com	Admin	Jl. Subroto 30	11817
K009	Indra	Wijaya	L	indra@perus.com	Logistik	Jl. Cendana 12	11818
K010	Joko	Susanto	L	joko@perus.com	IT Staff	Jl. Dipatiukur 21	11819
K011	Karin	Puspita	P	karin@perus.com	CS	Jl. Raya 25	11820
K012	Lina	Mulyani	P	lina@perus.com	Akuntan	Jl. Pattimura 15	11821
K013	Miko	Setiawan	L	miko@perus.com	IT	Jl. Ditiro 18	11822
K014	Nina	Hartati	P	nina@perus.com	Admin	Jl. Sisinga 9	11823
K015	Oka	Wibowo	L	oka@perus.com	Sales	Jl. Rajawali 11	11824
K016	Putri	Rahma	P	putri@perus.com	HRD	Jl. Pemuda 8	11825
K017	Rafi	Hernan	L	rafi@perus.com	Teknisi	Jl. Dahlan 3	11826
K018	Sinta	Permata	P	sinta@perus.com	Finance	Jl. Kartini 6	11827
K019	Tono	Sukamto	L	tono@perus.com	Driver	Jl. Umar 19	11828
K020	Uli	Handa	P	uli@perus.com	Umum	Jl. Bonjol 5	11829
K021	Vina	Utami	P	vina@perus.com	Sekretaris	Jl. Kalim 2	11830
K022	Wawan	Gunawan	L	wawan@perus.com	Spv	Jl. Melati 10	11831
K023	Xena	Putri	P	xena@perus.com	Admin	Jl. Panjaitan 12	11832
K024	Yudi	Firmans	L	yudi@perus.com	Teknisi	Jl. Yani 77	11833
K025	Zara	Kurnia	P	zara@perus.com	Kasir	Jl. Bima 8	11834
K026	Agus	Saputra	L	agus@perus.com	Manajer	Jl. Diponegoro 55	11835
K027	Bayu	Santosa	L	bayu@perus.com	Teknisi	Jl. Mawar 6	11836
K028	Clara	Siregar	P	clara@perus.com	Admin	Jl. Solo 33	11837
K029	Dian	Rahman	L	dian@perus.com	Sales	Jl. Subroto 12	11838
K030	Erik	Wijaya	L	erik@perus.com	Logistik	Jl. Sukarno 14	11839
K031	Fajar	Hidayat	L	fajar@perus.com	IT	Jl. Veteran 8	11840
K032	Gita	Maulani	P	gita@perus.com	Finance	Jl. Mada 27	11841
K033	Hendra	Permadi	L	hendra@perus.com	Marketing	Jl. Majap 3	11842
K034	Intan	Pratiwi	P	intan@perus.com	HRD	Jl. Sriwi 15	11843
K035	Jihan	Fauziah	P	jihan@perus.com	Gudang	Jl. Anggrek 2	11844
K036	Kamal	Anwar	L	kamal@perus.com	Teknisi	Jl. Pelita 5	11845
K037	Lutfi	Kusnadi	L	lutfi@perus.com	Driver	Jl. Permai 4	11846
K038	Mega	Pertiwi	P	mega@perus.com	Kasir	Jl. Melawai 11	11847
K039	Naufal	Satria	L	naufal@perus.com	IT	Jl. Pandan 18	11848
K040	Olivia	Amalia	P	olivia@perus.com	CS	Jl. Cempaka 9	11849
K041	Pram	Yudis	L	pram@perus.com	Spv	Jl. Pandega 12	11850
K042	Qori	Hapsari	P	qori@perus.com	Admin	Jl. Pandan 3	11851
K043	Rina	Kartika	P	rina@perus.com	HRD	Jl. Dipo 9	11852
K044	Seno	Hardiman	L	seno@perus.com	Teknisi	Jl. Braga 2	11853
K045	Tari	Wuland	P	tari@perus.com	Finance	Jl. Wijaya 4	11854
K046	Umar	Basri	L	umar@perus.com	Logistik	Jl. Nawi 8	11855
K047	Vivi	Nuraini	P	vivi@perus.com	CS	Jl. Nangka 13	11856
K048	Wira	Sasmita	L	wira@perus.com	Marketing	Jl. Thamrin 45	11857
K049	Xavier	Rachman	L	xavier@perus.com	IT	Jl. Bonjol 7	11858
K050	Yulia	Sari	P	yulia@perus.com	Kasir	Jl. Veteran 15	11859
K051	Zain	Hakim	L	zain@perus.com	Manajer	Jl. Yani 17	11860
K052	Alya	Marwan	P	alya@perus.com	Finance	Jl. Hatta 18	11861
K053	Bambang	Suharto	L	bambang@perus.com	Spv	Jl. Pemuda 44	11862
K054	Cindy	Ardiani	P	cindy@perus.com	HRD	Jl. Merpati 2	11863
K055	Dedi	Hartono	L	dedi@perus.com	Teknisi	Jl. Sudirman 10	11864
K056	Elisa	Dewanti	P	elisa@perus.com	Admin	Jl. Pandan 12	11865
K057	Farhan	Putra	L	farhan@perus.com	Driver	Jl. Angsana 20	11866
K058	Gusti	Mahen	L	gusti@perus.com	Teknisi	Jl. Saleh 3	11867
K059	Hana	Kumala	P	hana@perus.com	Kasir	Jl. Kusuma 8	11868
K060	Irfan	Kurnia	L	irfan@perus.com	Spv	Jl. Palapa 5	11869
K061	Jefri	Santana	L	jefri@perus.com	Marketing	Jl. Rajawali 7	11870
K062	Kiki	Aprilia	P	kiki@perus.com	Gudang	Jl. Subroto 19	11871
K063	Lukman	Hakim	L	lukman@perus.com	Teknisi	Jl. Mawar 3	11872
K064	Mira	Handa	P	mira@perus.com	Finance	Jl. Pandeg 9	11873
K065	Nando	Saputro	L	nando@perus.com	Driver	Jl. Dahlan 11	11874
K066	Oni	Prabowo	L	oni@perus.com	Spv	Jl. Mada 14	11875
K067	Prita	Suhen	P	prita@perus.com	HRD	Jl. Sutomo 6	11876
K068	Qomar	Setya	L	qomar@perus.com	Teknisi	Jl. Bonjol 9	11877
K069	Reno	Wijan	L	reno@perus.com	Sales	Jl. Dipo 18	11878
K070	Sari	Fitria	P	sari@perus.com	Finance	Jl. Riyadi 3	11879
K071	Tomi	Gunadi	L	tomi@perus.com	Spv	Jl. Sersan 8	11880
K072	Ute	Harjan	P	ute@perus.com	Admin	Jl. Pandan 22	11881
K073	Vera	Lestari	P	vera@perus.com	HRD	Jl. Perintis 7	11882
K074	Winda	Putri	P	winda@perus.com	Kasir	Jl. Cendraw 9	11883
K075	Xeno	Rahard	L	xeno@perus.com	Teknisi	Jl. Melati 5	11884
K076	Yanto	Kuswo	L	yanto@perus.com	Driver	Jl. Sudirman 11	11885
K077	Zulfa	Maulan	L	zulfa@perus.com	Teknisi	Jl. Anggrek 10	11886
K078	Adit	Panges	L	adit@perus.com	Marketing	Jl. Veteran 6	11887
K079	Bella	Indra	P	bella@perus.com	Finance	Jl. Pandan 7	11888
K080	Cahyo	Wibis	L	cahyo@perus.com	Teknisi	Jl. Raya 2	11889
K081	Desi	Utari	P	desi@perus.com	HRD	Jl. Mawar 9	11890
K082	Erlang	Harta	L	erlang@perus.com	Spv	Jl. Diponeg 6	11891
K083	Fina	Suryan	P	fina@perus.com	CS	Jl. Kenanga 4	11892
K084	Galih	Santa	L	galih@perus.com	Teknisi	Jl. Dahlia 8	11893
K085	Hilda	Rama	P	hilda@perus.com	Finance	Jl. Pattim 15	11894
K086	Ivan	Hernow	L	ivan@perus.com	Spv	Jl. Subroto 33	11895
K087	Julia	Nings	P	julia@perus.com	HRD	Jl. Melawai 2	11896
K088	Krisna	Basko	L	krisna@perus.com	IT	Jl. Yani 10	11897
K089	Lala	Sasmi	P	lala@perus.com	Admin	Jl. Permai 7	11898
K090	Mira	Anjan	P	mira2@perus.com	Kasir	Jl. Mada 19	11899
K091	Niko	Ardian	L	niko@perus.com	Teknisi	Jl. Pandan 6	11900
K092	Oka	Wijay	P	oka2@perus.com	Finance	Jl. Mawar 11	11901
K093	Putra	Gunad	L	putra@perus.com	Spv	Jl. Anggrek 13	11902
K094	Rani	Prame	P	rani@perus.com	HRD	Jl. Dipo 9	11903
K095	Seno	Wijay	L	seno2@perus.com	Teknisi	Jl. Veteran 21	11904
K096	Tari	Rama	P	tari2@perus.com	Finance	Jl. Pandan 15	11905
K097	Udin	Fauzi	L	udin@perus.com	Driver	Jl. Cikini 5	11906
K098	Vina	Kusum	P	vina2@perus.com	Gudang	Jl. Cempaka 4	11907
K099	Wira	Saput	L	wira2@perus.com	Spv	Jl. Subroto 9	11908
K100	Yani	Lesta	P	yani@perus.com	Finance	Jl. Merdeka 7	11909
\.


--
-- TOC entry 5012 (class 0 OID 17574)
-- Dependencies: 221
-- Data for Name: Kategori; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Kategori" (id_kategori, nama) FROM stdin;
KAT001	Kategori 1
KAT002	Kategori 2
KAT003	Kategori 3
KAT004	Kategori 4
KAT005	Kategori 5
KAT006	Kategori 6
KAT007	Kategori 7
KAT008	Kategori 8
KAT009	Kategori 9
KAT010	Kategori 10
KAT011	Kategori 11
KAT012	Kategori 12
KAT013	Kategori 13
KAT014	Kategori 14
KAT015	Kategori 15
KAT016	Kategori 16
KAT017	Kategori 17
KAT018	Kategori 18
KAT019	Kategori 19
KAT020	Kategori 20
KAT021	Kategori 21
KAT022	Kategori 22
KAT023	Kategori 23
KAT024	Kategori 24
KAT025	Kategori 25
KAT026	Kategori 26
KAT027	Kategori 27
KAT028	Kategori 28
KAT029	Kategori 29
KAT030	Kategori 30
KAT031	Kategori 31
KAT032	Kategori 32
KAT033	Kategori 33
KAT034	Kategori 34
KAT035	Kategori 35
KAT036	Kategori 36
KAT037	Kategori 37
KAT038	Kategori 38
KAT039	Kategori 39
KAT040	Kategori 40
KAT041	Kategori 41
KAT042	Kategori 42
KAT043	Kategori 43
KAT044	Kategori 44
KAT045	Kategori 45
KAT046	Kategori 46
KAT047	Kategori 47
KAT048	Kategori 48
KAT049	Kategori 49
KAT050	Kategori 50
KAT051	Kategori 51
KAT052	Kategori 52
KAT053	Kategori 53
KAT054	Kategori 54
KAT055	Kategori 55
KAT056	Kategori 56
KAT057	Kategori 57
KAT058	Kategori 58
KAT059	Kategori 59
KAT060	Kategori 60
KAT061	Kategori 61
KAT062	Kategori 62
KAT063	Kategori 63
KAT064	Kategori 64
KAT065	Kategori 65
KAT066	Kategori 66
KAT067	Kategori 67
KAT068	Kategori 68
KAT069	Kategori 69
KAT070	Kategori 70
KAT071	Kategori 71
KAT072	Kategori 72
KAT073	Kategori 73
KAT074	Kategori 74
KAT075	Kategori 75
KAT076	Kategori 76
KAT077	Kategori 77
KAT078	Kategori 78
KAT079	Kategori 79
KAT080	Kategori 80
KAT081	Kategori 81
KAT082	Kategori 82
KAT083	Kategori 83
KAT084	Kategori 84
KAT085	Kategori 85
KAT086	Kategori 86
KAT087	Kategori 87
KAT088	Kategori 88
KAT089	Kategori 89
KAT090	Kategori 90
KAT091	Kategori 91
KAT092	Kategori 92
KAT093	Kategori 93
KAT094	Kategori 94
KAT095	Kategori 95
KAT096	Kategori 96
KAT097	Kategori 97
KAT098	Kategori 98
KAT099	Kategori 99
KAT100	Kategori 100
\.


--
-- TOC entry 5013 (class 0 OID 17577)
-- Dependencies: 222
-- Data for Name: Kode_Pos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Kode_Pos" (kode_pos, nama_provinsi, nama_kota, nama_kecamatan, nama_kelurahan) FROM stdin;
11810	DKI Jakarta	Jakarta Barat	Palmerah	Palmerah
11811	DKI Jakarta	Jakarta Barat	Palmerah	Slipi
11812	DKI Jakarta	Jakarta Barat	Kebon Jeruk	Sukabumi Selatan
11813	DKI Jakarta	Jakarta Barat	Kebon Jeruk	Duri Kepa
11814	DKI Jakarta	Jakarta Selatan	Kebayoran Baru	Melawai
11815	DKI Jakarta	Jakarta Selatan	Kebayoran Baru	Gandaria Utara
11816	DKI Jakarta	Jakarta Timur	Ciracas	Susukan
11817	DKI Jakarta	Jakarta Timur	Pasar Rebo	Cijantung
11818	DKI Jakarta	Jakarta Timur	Kramat Jati	Cililitan
11819	DKI Jakarta	Jakarta Timur	Matraman	Palmeriam
11820	Jawa Barat	Bandung	Lengkong	Burangrang
11821	Jawa Barat	Bandung	Coblong	Dago
11822	Jawa Barat	Bandung	Cicendo	Pasir Kaliki
11823	Jawa Barat	Bandung	Sukajadi	Pasteur
11824	Jawa Barat	Bandung	Antapani	Antapani Tengah
11825	Jawa Barat	Cimahi	Cimahi Selatan	Leuwigajah
11826	Jawa Barat	Cimahi	Cimahi Utara	Cipageran
11827	Jawa Barat	Bekasi	Bekasi Timur	Aren Jaya
11828	Jawa Barat	Bekasi	Bekasi Selatan	Kayuringin Jaya
11829	Jawa Barat	Depok	Beji	Beji Timur
11830	DI Yogyakarta	Yogyakarta	Gondokusuman	Terban
11831	DI Yogyakarta	Yogyakarta	Umbulharjo	Pandeyan
11832	DI Yogyakarta	Yogyakarta	Mantrijeron	Suryodiningratan
11833	DI Yogyakarta	Yogyakarta	Jetis	Cokrodiningratan
11834	DI Yogyakarta	Sleman	Depok	Maguwoharjo
11835	DI Yogyakarta	Sleman	Ngaglik	Sariharjo
11836	DI Yogyakarta	Bantul	Banguntapan	Tamanan
11837	DI Yogyakarta	Bantul	Kasihan	Tamantirto
11838	DI Yogyakarta	Bantul	Sewon	Bangunharjo
11839	DI Yogyakarta	Kulon Progo	Wates	Bendungan
11840	Jawa Tengah	Semarang	Candisari	Jatingaleh
11841	Jawa Tengah	Semarang	Banyumanik	Ngesrep
11842	Jawa Tengah	Semarang	Tembalang	Meteseh
11843	Jawa Tengah	Solo	Laweyan	Sriwedari
11844	Jawa Tengah	Solo	Jebres	Pucangsawit
11845	Jawa Tengah	Magelang	Magelang Tengah	Gelangan
11846	Jawa Tengah	Tegal	Tegal Timur	Panggung
11847	Jawa Tengah	Pekalongan	Pekalongan Utara	Krapyak Lor
11848	Jawa Tengah	Purwokerto	Purwokerto Selatan	Karangklesem
11849	Jawa Tengah	Cilacap	Cilacap Selatan	Tegalreja
11850	Jawa Timur	Surabaya	Tegalsari	Dr. Sutomo
11851	Jawa Timur	Surabaya	Wonokromo	Jagir
11852	Jawa Timur	Surabaya	Genteng	Ketabang
11853	Jawa Timur	Sidoarjo	Candi	Sumokali
11854	Jawa Timur	Malang	Lowokwaru	Jatimulyo
11855	Jawa Timur	Malang	Klojen	Kauman
11856	Jawa Timur	Batu	Batu	Temas
11857	Jawa Timur	Kediri	Kediri Kota	Dandangan
11858	Jawa Timur	Blitar	Sananwetan	Rembang
11859	Jawa Timur	Madiun	Manguharjo	Madiun Lor
11860	Banten	Tangerang	Ciledug	Paninggilan
11861	Banten	Tangerang	Cipondoh	Poris Gaga
11862	Banten	Tangerang Selatan	Serpong	Lengkong Gudang
11863	Banten	Tangerang Selatan	Pamulang	Pondok Cabe
11864	Banten	Cilegon	Cibeber	Kalitimbang
11865	Banten	Serang	Serang	Kepandean
11866	Banten	Pandeglang	Pandeglang	Kadomas
11867	Banten	Lebak	Rangkasbitung	Cijoro Lebak
11868	Banten	Tangerang	Karawaci	Nusa Jaya
11869	Banten	Tangerang Selatan	Ciputat	Sawah Lama
11870	Sumatera Utara	Medan	Medan Baru	Babura
11871	Sumatera Utara	Medan	Medan Timur	Pulo Brayan
11872	Sumatera Utara	Medan	Medan Kota	Pasar Merah
11873	Sumatera Utara	Binjai	Binjai Kota	Rambung Barat
11874	Sumatera Utara	Tebing Tinggi	Padang Hulu	Lalang
11875	Sumatera Utara	Pematangsiantar	Siantar Barat	Proklamasi
11876	Sumatera Utara	Sibolga	Sibolga Kota	Aek Habil
11877	Sumatera Utara	Langkat	Stabat	Dendang
11878	Sumatera Utara	Deliserdang	Lubuk Pakam	Petapahan
11879	Sumatera Utara	Medan	Medan Johor	Kwala Bekala
11880	Bali	Denpasar	Denpasar Barat	Pemecutan
11881	Bali	Denpasar	Denpasar Selatan	Sesetan
11882	Bali	Denpasar	Denpasar Timur	Sumerta
11883	Bali	Badung	Kuta	Legian
11884	Bali	Badung	Kuta Utara	Canggu
11885	Bali	Gianyar	Ubud	Peliatan
11886	Bali	Tabanan	Tabanan	Delod Peken
11887	Bali	Buleleng	Singaraja	Kaliasem
11888	Bali	Bangli	Bangli	Kawan
11889	Bali	Klungkung	Semarapura	Jalanan
11890	Sulawesi Selatan	Makassar	Panakkukang	Karampuang
11891	Sulawesi Selatan	Makassar	Biringkanaya	Sudiang
11892	Sulawesi Selatan	Makassar	Tamalanrea	Parangloe
11893	Sulawesi Selatan	Parepare	Ujung	Labukkang
11894	Sulawesi Selatan	Bone	Tanete Riattang	Watampone
11895	Sulawesi Selatan	Gowa	Somba Opu	Pandang-Pandang
11896	Sulawesi Selatan	Palopo	Wara	Benteng
11897	Sulawesi Selatan	Maros	Turikale	Alliritengae
11898	Sulawesi Selatan	Pangkep	Minasa Tene	Bonto Kio
11899	Sulawesi Selatan	Makassar	Tamalate	Maccini Sombala
11900	Kalimantan Timur	Balikpapan	Balikpapan Selatan	Sepinggan
11901	Kalimantan Timur	Samarinda	Samarinda Ulu	Air Putih
11902	Kalimantan Timur	Bontang	Bontang Utara	Api-Api
11903	Kalimantan Timur	Kutai Kartanegara	Tenggarong	Bukit Biru
11904	Kalimantan Selatan	Banjarmasin	Banjarmasin Tengah	Telawang
11905	Kalimantan Tengah	Palangka Raya	Jekan Raya	Menteng
11906	Kalimantan Barat	Pontianak	Pontianak Selatan	Benua Melayu Laut
11907	Papua	Jayapura	Abepura	Yoka
11908	Papua Barat	Manokwari	Manokwari Barat	Wosi
11909	Nusa Tenggara Barat	Mataram	Cakranegara	Sayang-Sayang
\.


--
-- TOC entry 5014 (class 0 OID 17582)
-- Dependencies: 223
-- Data for Name: Memiliki (Buku_Kategori); Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Memiliki (Buku_Kategori)" (isbn, id_kategori) FROM stdin;
9786020000001	KAT001
9786020000002	KAT002
9786020000003	KAT003
9786020000004	KAT004
9786020000005	KAT005
9786020000006	KAT006
9786020000007	KAT007
9786020000008	KAT008
9786020000009	KAT009
9786020000010	KAT010
9786020000011	KAT011
9786020000012	KAT012
9786020000013	KAT013
9786020000014	KAT014
9786020000015	KAT015
9786020000016	KAT016
9786020000017	KAT017
9786020000018	KAT018
9786020000019	KAT019
9786020000020	KAT020
9786020000021	KAT021
9786020000022	KAT022
9786020000023	KAT023
9786020000024	KAT024
9786020000025	KAT025
9786020000026	KAT026
9786020000027	KAT027
9786020000028	KAT028
9786020000029	KAT029
9786020000030	KAT030
9786020000031	KAT031
9786020000032	KAT032
9786020000033	KAT033
9786020000034	KAT034
9786020000035	KAT035
9786020000036	KAT036
9786020000037	KAT037
9786020000038	KAT038
9786020000039	KAT039
9786020000040	KAT040
9786020000041	KAT041
9786020000042	KAT042
9786020000043	KAT043
9786020000044	KAT044
9786020000045	KAT045
9786020000046	KAT046
9786020000047	KAT047
9786020000048	KAT048
9786020000049	KAT049
9786020000050	KAT050
9786020000051	KAT051
9786020000052	KAT052
9786020000053	KAT053
9786020000054	KAT054
9786020000055	KAT055
9786020000056	KAT056
9786020000057	KAT057
9786020000058	KAT058
9786020000059	KAT059
9786020000060	KAT060
9786020000061	KAT061
9786020000062	KAT062
9786020000063	KAT063
9786020000064	KAT064
9786020000065	KAT065
9786020000066	KAT066
9786020000067	KAT067
9786020000068	KAT068
9786020000069	KAT069
9786020000070	KAT070
9786020000071	KAT071
9786020000072	KAT072
9786020000073	KAT073
9786020000074	KAT074
9786020000075	KAT075
9786020000076	KAT076
9786020000077	KAT077
9786020000078	KAT078
9786020000079	KAT079
9786020000080	KAT080
9786020000081	KAT081
9786020000082	KAT082
9786020000083	KAT083
9786020000084	KAT084
9786020000085	KAT085
9786020000086	KAT086
9786020000087	KAT087
9786020000088	KAT088
9786020000089	KAT089
9786020000090	KAT090
9786020000091	KAT091
9786020000092	KAT092
9786020000093	KAT093
9786020000094	KAT094
9786020000095	KAT095
9786020000096	KAT096
9786020000097	KAT097
9786020000098	KAT098
9786020000099	KAT099
9786020000100	KAT100
\.


--
-- TOC entry 5015 (class 0 OID 17585)
-- Dependencies: 224
-- Data for Name: Memiliki (Pembelian_Buku); Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Memiliki (Pembelian_Buku)" (id_pembelian, isbn, harga_beli, jumlah_beli) FROM stdin;
PMB001	9786020000001	85000	10
PMB002	9786020000002	92000	8
PMB003	9786020000003	87000	12
PMB004	9786020000004	89000	7
PMB005	9786020000005	95000	15
PMB006	9786020000006	88000	9
PMB007	9786020000007	99000	14
PMB008	9786020000008	93000	6
PMB009	9786020000009	102000	11
PMB010	9786020000010	86000	10
PMB011	9786020000011	97000	8
PMB012	9786020000012	91000	12
PMB013	9786020000013	108000	13
PMB014	9786020000014	88000	7
PMB015	9786020000015	94000	16
PMB016	9786020000016	89000	9
PMB017	9786020000017	99000	10
PMB019	9786020000019	87000	12
PMB020	9786020000020	88000	8
PMB021	9786020000021	97000	10
PMB022	9786020000022	95000	11
PMB023	9786020000023	88000	9
PMB024	9786020000024	96000	7
PMB025	9786020000025	93000	14
PMB026	9786020000026	91000	15
PMB027	9786020000027	104000	6
PMB028	9786020000028	89000	13
PMB029	9786020000029	87000	8
PMB030	9786020000030	95000	12
PMB031	9786020000031	97000	9
PMB032	9786020000032	86000	10
PMB033	9786020000033	102000	11
PMB034	9786020000034	92000	8
PMB035	9786020000035	108000	15
PMB036	9786020000036	90000	10
PMB037	9786020000037	94000	13
PMB038	9786020000038	99000	9
PMB039	9786020000039	87000	7
PMB040	9786020000040	92000	12
PMB041	9786020000041	95000	6
PMB042	9786020000042	88000	11
PMB043	9786020000043	102000	10
PMB044	9786020000044	87000	8
PMB045	9786020000045	93000	9
PMB046	9786020000046	91000	15
PMB047	9786020000047	107000	13
PMB048	9786020000048	94000	10
PMB049	9786020000049	88000	14
PMB050	9786020000050	97000	11
PMB051	9786020000051	99000	8
PMB052	9786020000052	87000	10
PMB053	9786020000053	93000	9
PMB054	9786020000054	92000	13
PMB055	9786020000055	90000	7
PMB056	9786020000056	105000	10
PMB057	9786020000057	88000	12
PMB058	9786020000058	108000	14
PMB059	9786020000059	95000	6
PMB060	9786020000060	86000	11
PMB061	9786020000061	94000	10
PMB062	9786020000062	97000	13
PMB063	9786020000063	91000	7
PMB064	9786020000064	88000	9
PMB065	9786020000065	104000	15
PMB066	9786020000066	93000	10
PMB067	9786020000067	86000	12
PMB068	9786020000068	89000	14
PMB069	9786020000069	107000	8
PMB070	9786020000070	92000	11
PMB071	9786020000071	99000	10
PMB072	9786020000072	87000	13
PMB073	9786020000073	95000	9
PMB074	9786020000074	91000	12
PMB075	9786020000075	108000	10
PMB076	9786020000076	87000	8
PMB077	9786020000077	93000	15
PMB078	9786020000078	92000	7
PMB079	9786020000079	95000	11
PMB080	9786020000080	88000	14
PMB081	9786020000081	97000	9
PMB082	9786020000082	103000	10
PMB083	9786020000083	87000	13
PMB084	9786020000084	91000	8
PMB085	9786020000085	94000	11
PMB086	9786020000086	89000	15
PMB087	9786020000087	99000	12
PMB088	9786020000088	93000	10
PMB089	9786020000089	88000	9
PMB090	9786020000090	104000	13
PMB091	9786020000091	95000	8
PMB092	9786020000092	91000	12
PMB093	9786020000093	108000	11
PMB094	9786020000094	89000	7
PMB095	9786020000095	86000	10
PMB096	9786020000096	88000	14
PMB097	9786020000097	93000	9
PMB098	9786020000098	97000	8
PMB099	9786020000099	99000	15
PMB100	9786020000100	90000	10
PMB018	9786020000017	103000	5
\.


--
-- TOC entry 5016 (class 0 OID 17588)
-- Dependencies: 225
-- Data for Name: Memiliki (Transaksi_Buku); Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Memiliki (Transaksi_Buku)" (id_transaksi, isbn, jumlah) FROM stdin;
TRX001	9786020000001	10
TRX002	9786020000002	5
TRX003	9786020000003	12
TRX004	9786020000004	8
TRX005	9786020000005	15
TRX006	9786020000006	4
TRX007	9786020000007	7
TRX008	9786020000008	13
TRX009	9786020000009	9
TRX010	9786020000010	3
TRX011	9786020000011	18
TRX012	9786020000012	11
TRX013	9786020000013	6
TRX014	9786020000014	14
TRX015	9786020000015	2
TRX016	9786020000016	17
TRX017	9786020000017	8
TRX018	9786020000018	16
TRX019	9786020000019	7
TRX020	9786020000020	5
TRX021	9786020000021	9
TRX022	9786020000022	10
TRX023	9786020000023	4
TRX024	9786020000024	13
TRX025	9786020000025	6
TRX026	9786020000026	11
TRX027	9786020000027	3
TRX028	9786020000028	12
TRX029	9786020000029	19
TRX030	9786020000030	8
TRX031	9786020000031	15
TRX032	9786020000032	10
TRX033	9786020000033	1
TRX034	9786020000034	17
TRX035	9786020000035	5
TRX036	9786020000036	7
TRX037	9786020000037	12
TRX038	9786020000038	6
TRX039	9786020000039	9
TRX040	9786020000040	14
TRX041	9786020000041	2
TRX042	9786020000042	16
TRX043	9786020000043	18
TRX044	9786020000044	5
TRX045	9786020000045	11
TRX046	9786020000046	7
TRX047	9786020000047	13
TRX048	9786020000048	15
TRX049	9786020000049	4
TRX050	9786020000050	10
TRX051	9786020000051	6
TRX052	9786020000052	12
TRX053	9786020000053	8
TRX054	9786020000054	9
TRX055	9786020000055	17
TRX056	9786020000056	3
TRX057	9786020000057	11
TRX058	9786020000058	16
TRX059	9786020000059	5
TRX060	9786020000060	14
TRX061	9786020000061	7
TRX062	9786020000062	8
TRX063	9786020000063	19
TRX064	9786020000064	9
TRX065	9786020000065	6
TRX066	9786020000066	15
TRX067	9786020000067	13
TRX068	9786020000068	4
TRX069	9786020000069	10
TRX070	9786020000070	2
TRX071	9786020000071	5
TRX072	9786020000072	8
TRX073	9786020000073	11
TRX074	9786020000074	17
TRX075	9786020000075	12
TRX076	9786020000076	3
TRX077	9786020000077	18
TRX078	9786020000078	9
TRX079	9786020000079	6
TRX080	9786020000080	15
TRX081	9786020000081	7
TRX082	9786020000082	14
TRX083	9786020000083	10
TRX084	9786020000084	19
TRX085	9786020000085	5
TRX086	9786020000086	13
TRX087	9786020000087	8
TRX088	9786020000088	4
TRX089	9786020000089	9
TRX090	9786020000090	16
TRX091	9786020000091	12
TRX092	9786020000092	15
TRX093	9786020000093	3
TRX094	9786020000094	11
TRX095	9786020000095	6
TRX096	9786020000096	14
TRX097	9786020000097	7
TRX098	9786020000098	10
TRX099	9786020000099	18
TRX100	9786020000100	9
\.


--
-- TOC entry 5017 (class 0 OID 17591)
-- Dependencies: 226
-- Data for Name: Nomor_Hp_Karyawan; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Nomor_Hp_Karyawan" (id_karyawan, nomor_hp) FROM stdin;
K001	081515670457
K002	081234567802
K003	082145678903
K004	083812345604
K005	085212345605
K006	081322334406
K007	081377889907
K008	082122556708
K009	083801234509
K010	085755443310
K011	081511223311
K012	081234998812
K013	082144556713
K014	083812340014
K015	085212349015
K016	081322337716
K017	081377881117
K018	082122553318
K019	083801238919
K020	085755447720
K021	081511227721
K022	081234993322
K023	082144559923
K024	083812344424
K025	085212344525
K026	081322330826
K027	081377884127
K028	082122558828
K029	083801239929
K030	085755441030
K031	081511229931
K032	081234996132
K033	082144552633
K034	083812347734
K035	085212347835
K036	081322333936
K037	081377887137
K038	082122555338
K039	083801232839
K040	085755444040
K041	081511226141
K042	081234999342
K043	082144558443
K044	083812343544
K045	085212343645
K046	081322336846
K047	081377880047
K048	082122552248
K049	083801236949
K050	085755447050
K051	081511221151
K052	081234994252
K053	082144553353
K054	083812348454
K055	085212348555
K056	081322331656
K057	081377885757
K058	082122556858
K059	083801239959
K060	085755441160
K061	081511224261
K062	081234997362
K063	082144556463
K064	083812341564
K065	085212341665
K066	081322334866
K067	081377888967
K068	082122559068
K069	083801232169
K070	085755444270
K071	081511227371
K072	081234990472
K073	082144559573
K074	083812344674
K075	085212344775
K076	081322337876
K077	081377881977
K078	082122552078
K079	083801235179
K080	085755447280
K081	081511220381
K082	081234993482
K083	082144552583
K084	083812347684
K085	085212347785
K086	081322330886
K087	081377884987
K088	082122555088
K089	083801238189
K090	085755440290
K091	081511223391
K092	081234996492
K093	082144555593
K094	083812340694
K095	085212340795
K096	081322333896
K097	081377887997
K098	082122558098
K099	083801239199
K100	085755443300
\.


--
-- TOC entry 5018 (class 0 OID 17594)
-- Dependencies: 227
-- Data for Name: Nomor_Hp_Pelanggan; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Nomor_Hp_Pelanggan" (id_pelanggan, nomor_hp) FROM stdin;
PLG001	081518970457
PLG002	081234567802
PLG003	082145678903
PLG004	083812345604
PLG005	085212345605
PLG006	081322334406
PLG007	081377889907
PLG008	082122556708
PLG009	083801234509
PLG010	085755443310
PLG011	081511223311
PLG012	081234998812
PLG013	082144556713
PLG014	083812340014
PLG015	085212349015
PLG016	081322337716
PLG017	081377881117
PLG018	082122553318
PLG019	083801238919
PLG020	085755447720
PLG021	081511227721
PLG022	081234993322
PLG023	082144559923
PLG024	083812344424
PLG025	085212344525
PLG026	081322330826
PLG027	081377884127
PLG028	082122558828
PLG029	083801239929
PLG030	085755441030
PLG031	081511229931
PLG032	081234996132
PLG033	082144552633
PLG034	083812347734
PLG035	085212347835
PLG036	081322333936
PLG037	081377887137
PLG038	082122555338
PLG039	083801232839
PLG040	085755444040
PLG041	081511226141
PLG042	081234999342
PLG043	082144558443
PLG044	083812343544
PLG045	085212343645
PLG046	081322336846
PLG047	081377880047
PLG048	082122552248
PLG049	083801236949
PLG050	085755447050
PLG051	081511221151
PLG052	081234994252
PLG053	082144553353
PLG054	083812348454
PLG055	085212348555
PLG056	081322331656
PLG057	081377885757
PLG058	082122556858
PLG059	083801239959
PLG060	085755441160
PLG061	081511224261
PLG062	081234997362
PLG063	082144556463
PLG064	083812341564
PLG065	085212341665
PLG066	081322334866
PLG067	081377888967
PLG068	082122559068
PLG069	083801232169
PLG070	085755444270
PLG071	081511227371
PLG072	081234990472
PLG073	082144559573
PLG074	083812344674
PLG075	085212344775
PLG076	081322337876
PLG077	081377881977
PLG078	082122552078
PLG079	083801235179
PLG080	085755447280
PLG081	081511220381
PLG082	081234993482
PLG083	082144552583
PLG084	083812347684
PLG085	085212347785
PLG086	081322330886
PLG087	081377884987
PLG088	082122555088
PLG089	083801238189
PLG090	085755440290
PLG091	081511223391
PLG092	081234996492
PLG093	082144555593
PLG094	083812340694
PLG095	085212340795
PLG096	081322333896
PLG097	081377887997
PLG098	082122558098
PLG099	083801239199
PLG100	085755443300
\.


--
-- TOC entry 5019 (class 0 OID 17597)
-- Dependencies: 228
-- Data for Name: Nomor_Hp_Penulis; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Nomor_Hp_Penulis" (id_penulis, nomor_hp) FROM stdin;
P001	085588970457
P002	081234567802
P003	082145678903
P004	083812345604
P005	085212345605
P006	081322334406
P007	081377889907
P008	082122556708
P009	083801234509
P010	085755443310
P011	081511223311
P012	081234998812
P013	082144556713
P014	083812340014
P015	085212349015
P016	081322337716
P017	081377881117
P018	082122553318
P019	083801238919
P020	085755447720
P021	081511227721
P022	081234993322
P023	082144559923
P024	083812344424
P025	085212344525
P026	081322330826
P027	081377884127
P028	082122558828
P029	083801239929
P030	085755441030
P031	081511229931
P032	081234996132
P033	082144552633
P034	083812347734
P035	085212347835
P036	081322333936
P037	081377887137
P038	082122555338
P039	083801232839
P040	085755444040
P041	081511226141
P042	081234999342
P043	082144558443
P044	083812343544
P045	085212343645
P046	081322336846
P047	081377880047
P048	082122552248
P049	083801236949
P050	085755447050
P051	081511221151
P052	081234994252
P053	082144553353
P054	083812348454
P055	085212348555
P056	081322331656
P057	081377885757
P058	082122556858
P059	083801239959
P060	085755441160
P061	081511224261
P062	081234997362
P063	082144556463
P064	083812341564
P065	085212341665
P066	081322334866
P067	081377888967
P068	082122559068
P069	083801232169
P070	085755444270
P071	081511227371
P072	081234990472
P073	082144559573
P074	083812344674
P075	085212344775
P076	081322337876
P077	081377881977
P078	082122552078
P079	083801235179
P080	085755447280
P081	081511220381
P082	081234993482
P083	082144552583
P084	083812347684
P085	085212347785
P086	081322330886
P087	081377884987
P088	082122555088
P089	083801238189
P090	085755440290
P091	081511223391
P092	081234996492
P093	082144555593
P094	083812340694
P095	085212340795
P096	081322333896
P097	081377887997
P098	082122558098
P099	083801239199
P100	085755443300
\.


--
-- TOC entry 5020 (class 0 OID 17600)
-- Dependencies: 229
-- Data for Name: Pelanggan; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Pelanggan" (id_pelanggan, nama_depan, nama_belakang) FROM stdin;
PLG001	NamaDepan001	NamaBelakang001
PLG002	NamaDepan002	NamaBelakang002
PLG003	NamaDepan003	NamaBelakang003
PLG004	NamaDepan004	NamaBelakang004
PLG005	NamaDepan005	NamaBelakang005
PLG006	NamaDepan006	NamaBelakang006
PLG007	NamaDepan007	NamaBelakang007
PLG008	NamaDepan008	NamaBelakang008
PLG009	NamaDepan009	NamaBelakang009
PLG010	NamaDepan010	NamaBelakang010
PLG011	NamaDepan011	NamaBelakang011
PLG012	NamaDepan012	NamaBelakang012
PLG013	NamaDepan013	NamaBelakang013
PLG014	NamaDepan014	NamaBelakang014
PLG015	NamaDepan015	NamaBelakang015
PLG016	NamaDepan016	NamaBelakang016
PLG017	NamaDepan017	NamaBelakang017
PLG018	NamaDepan018	NamaBelakang018
PLG019	NamaDepan019	NamaBelakang019
PLG020	NamaDepan020	NamaBelakang020
PLG021	NamaDepan021	NamaBelakang021
PLG022	NamaDepan022	NamaBelakang022
PLG023	NamaDepan023	NamaBelakang023
PLG024	NamaDepan024	NamaBelakang024
PLG025	NamaDepan025	NamaBelakang025
PLG026	NamaDepan026	NamaBelakang026
PLG027	NamaDepan027	NamaBelakang027
PLG028	NamaDepan028	NamaBelakang028
PLG029	NamaDepan029	NamaBelakang029
PLG030	NamaDepan030	NamaBelakang030
PLG031	NamaDepan031	NamaBelakang031
PLG032	NamaDepan032	NamaBelakang032
PLG033	NamaDepan033	NamaBelakang033
PLG034	NamaDepan034	NamaBelakang034
PLG035	NamaDepan035	NamaBelakang035
PLG036	NamaDepan036	NamaBelakang036
PLG037	NamaDepan037	NamaBelakang037
PLG038	NamaDepan038	NamaBelakang038
PLG039	NamaDepan039	NamaBelakang039
PLG040	NamaDepan040	NamaBelakang040
PLG041	NamaDepan041	NamaBelakang041
PLG042	NamaDepan042	NamaBelakang042
PLG043	NamaDepan043	NamaBelakang043
PLG044	NamaDepan044	NamaBelakang044
PLG045	NamaDepan045	NamaBelakang045
PLG046	NamaDepan046	NamaBelakang046
PLG047	NamaDepan047	NamaBelakang047
PLG048	NamaDepan048	NamaBelakang048
PLG049	NamaDepan049	NamaBelakang049
PLG050	NamaDepan050	NamaBelakang050
PLG051	NamaDepan051	NamaBelakang051
PLG052	NamaDepan052	NamaBelakang052
PLG053	NamaDepan053	NamaBelakang053
PLG054	NamaDepan054	NamaBelakang054
PLG055	NamaDepan055	NamaBelakang055
PLG056	NamaDepan056	NamaBelakang056
PLG057	NamaDepan057	NamaBelakang057
PLG058	NamaDepan058	NamaBelakang058
PLG059	NamaDepan059	NamaBelakang059
PLG060	NamaDepan060	NamaBelakang060
PLG061	NamaDepan061	NamaBelakang061
PLG062	NamaDepan062	NamaBelakang062
PLG064	NamaDepan064	NamaBelakang064
PLG065	NamaDepan065	NamaBelakang065
PLG066	NamaDepan066	NamaBelakang066
PLG067	NamaDepan067	NamaBelakang067
PLG068	NamaDepan068	NamaBelakang068
PLG069	NamaDepan069	NamaBelakang069
PLG070	NamaDepan070	NamaBelakang070
PLG071	NamaDepan071	NamaBelakang071
PLG072	NamaDepan072	NamaBelakang072
PLG073	NamaDepan073	NamaBelakang073
PLG074	NamaDepan074	NamaBelakang074
PLG075	NamaDepan075	NamaBelakang075
PLG076	NamaDepan076	NamaBelakang076
PLG077	NamaDepan077	NamaBelakang077
PLG078	NamaDepan078	NamaBelakang078
PLG079	NamaDepan079	NamaBelakang079
PLG080	NamaDepan080	NamaBelakang080
PLG081	NamaDepan081	NamaBelakang081
PLG082	NamaDepan082	NamaBelakang082
PLG083	NamaDepan083	NamaBelakang083
PLG084	NamaDepan084	NamaBelakang084
PLG085	NamaDepan085	NamaBelakang085
PLG086	NamaDepan086	NamaBelakang086
PLG087	NamaDepan087	NamaBelakang087
PLG088	NamaDepan088	NamaBelakang088
PLG089	NamaDepan089	NamaBelakang089
PLG090	NamaDepan090	NamaBelakang090
PLG091	NamaDepan091	NamaBelakang091
PLG092	NamaDepan092	NamaBelakang092
PLG093	NamaDepan093	NamaBelakang093
PLG094	NamaDepan094	NamaBelakang094
PLG095	NamaDepan095	NamaBelakang095
PLG096	NamaDepan096	NamaBelakang096
PLG097	NamaDepan097	NamaBelakang097
PLG098	NamaDepan098	NamaBelakang098
PLG099	NamaDepan099	NamaBelakang099
PLG100	NamaDepan100	NamaBelakang100
PLG063	Not	Kuyub
\.


--
-- TOC entry 5021 (class 0 OID 17603)
-- Dependencies: 230
-- Data for Name: Pemasok; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Pemasok" (id_pemasok, nama, alamat_nama_jalan, kode_pos) FROM stdin;
S001	PT Sumber Rezeki	Jl. Merdeka No.10, Jakarta	11810
S002	CV Maju Bersama	Jl. Sudirman No.45, Bandung	11811
S003	UD Makmur Abadi	Jl. Diponegoro No.22, Surabaya	11812
S004	PT Sentosa Jaya	Jl. Gajah Mada No.7, Semarang	11813
S005	CV Cahaya Baru	Jl. Ahmad Yani No.18, Medan	11814
S006	PT Bintang Timur	Jl. Kamboja No.9, Yogyakarta	11815
S007	CV Harapan Baru	Jl. Kenanga No.4, Malang	11816
S008	PT Indah Makmur	Jl. Gatot Subroto No.30, Jakarta	11817
S009	CV Sinar Terang	Jl. Cendana No.12, Palembang	11818
S010	PT Lestari Mandiri	Jl. Dipatiukur No.21, Bandung	11819
S011	PT Nusantara Sejahtera	Jl. Raya Bogor Km 25, Depok	11820
S012	CV Mega Utama	Jl. Pattimura No.15, Denpasar	11821
S013	PT Alam Lestari	Jl. Cik Ditiro No.18, Yogyakarta	11822
S014	UD Tunas Baru	Jl. Sisingamangaraja No.9, Medan	11823
S015	CV Karya Mandiri	Jl. Rajawali No.11, Surabaya	11824
S016	PT Sinar Harapan	Jl. Pemuda No.8, Semarang	11825
S017	CV Murni Jaya	Jl. Ahmad Dahlan No.3, Solo	11826
S018	PT Bahagia Sentosa	Jl. Kartini No.6, Pontianak	11827
S019	CV Cipta Karya	Jl. Teuku Umar No.19, Denpasar	11828
S020	PT Amanah Makmur	Jl. Imam Bonjol No.5, Padang	11829
S021	CV Surya Kencana	Jl. Kalimantan No.2, Malang	11830
S022	PT Wijaya Kusuma	Jl. Melati No.10, Bandung	11831
S023	UD Mitra Abadi	Jl. Panjaitan No.12, Cirebon	11832
S024	PT Artha Jaya	Jl. Ahmad Yani No.77, Pekanbaru	11833
S025	CV Dwi Putra	Jl. Bima No.8, Bogor	11834
S026	PT Mitra Sukses	Jl. Diponegoro No.55, Jakarta	11835
S027	CV Tiga Saudara	Jl. Mawar No.6, Medan	11836
S028	PT Abadi Jaya	Jl. Raya Solo No.33, Klaten	11837
S029	CV Multi Karya	Jl. Gatot Subroto No.12, Bandung	11838
S030	PT Sumber Alam	Jl. Raya Sukarno No.14, Samarinda	11839
S031	CV Anugerah Makmur	Jl. Veteran No.8, Denpasar	11840
S032	PT Prima Jaya	Jl. Gajah Mada No.27, Surabaya	11841
S033	UD Karya Sejati	Jl. Majapahit No.3, Mataram	11842
S034	PT Bumi Asri	Jl. Sriwijaya No.15, Palembang	11843
S035	CV Inti Sukses	Jl. Anggrek No.2, Tangerang	11844
S036	PT Aman Sentosa	Jl. Pelita No.5, Pekanbaru	11845
S037	CV Cahaya Indah	Jl. Permai No.4, Bandung	11846
S038	PT Dunia Makmur	Jl. Melawai No.11, Jakarta	11847
S039	CV Mega Sukses	Jl. Pandan No.18, Bekasi	11848
S040	PT Berkah Sejahtera	Jl. Cempaka No.9, Semarang	11849
S041	UD Mulya Jaya	Jl. Pandega No.12, Bandung	11850
S042	PT Abadi Utama	Jl. Pandanaran No.3, Semarang	11851
S043	CV Makmur Sentosa	Jl. Diponegoro No.9, Surabaya	11852
S044	PT Mitra Lestari	Jl. Braga No.2, Bandung	11853
S045	CV Surya Abadi	Jl. Wijaya Kusuma No.4, Malang	11854
S046	PT Sejahtera Bersama	Jl. Haji Nawi No.8, Jakarta	11855
S047	CV Bumi Sentosa	Jl. Nangka No.13, Denpasar	11856
S048	PT Karya Sukses	Jl. Thamrin No.45, Medan	11857
S049	CV Tunas Lestari	Jl. Imam Bonjol No.7, Yogyakarta	11858
S050	PT Dunia Jaya	Jl. Veteran No.15, Surabaya	11859
S051	PT Inti Mandiri	Jl. Ahmad Yani No.17, Palu	11860
S052	CV Arjuna Jaya	Jl. Soekarno Hatta No.18, Bandung	11861
S053	PT Graha Sentosa	Jl. Pemuda No.44, Semarang	11862
S054	CV Maju Jaya	Jl. Merpati No.2, Malang	11863
S055	PT Sumber Lestari	Jl. Jend. Sudirman No.10, Bogor	11864
S056	CV Abadi Sejahtera	Jl. Raya Pandan No.12, Bekasi	11865
S057	PT Sinar Baru	Jl. Angsana No.20, Denpasar	11866
S058	CV Mulya Makmur	Jl. Raden Saleh No.3, Jakarta	11867
S059	PT Global Mandiri	Jl. Kusuma No.8, Cirebon	11868
S060	CV Cipta Lestari	Jl. Palapa No.5, Surabaya	11869
S061	UD Prima Makmur	Jl. Rajawali No.7, Medan	11870
S062	PT Anugerah Sentosa	Jl. Gatot Subroto No.19, Jakarta	11871
S063	CV Berkah Abadi	Jl. Mawar No.3, Bandung	11872
S064	PT Surya Indah	Jl. Pandeglang No.9, Serang	11873
S065	CV Kencana Jaya	Jl. Ahmad Dahlan No.11, Solo	11874
S066	PT Cemerlang Abadi	Jl. Gajah Mada No.14, Pontianak	11875
S067	CV Sentra Karya	Jl. Sutomo No.6, Pekanbaru	11876
S068	PT Aman Makmur	Jl. Imam Bonjol No.9, Padang	11877
S069	CV Bahagia Utama	Jl. Diponegoro No.18, Malang	11878
S070	PT Karya Mandiri	Jl. Slamet Riyadi No.3, Solo	11879
S071	CV Mulya Sentosa	Jl. Sersan No.8, Bandung	11880
S072	PT Lestari Utama	Jl. Pandan No.22, Jakarta	11881
S073	CV Maju Jaya	Jl. Perintis No.7, Semarang	11882
S074	PT Kencana Mulia	Jl. Cendrawasih No.9, Palembang	11883
S075	CV Indah Sejahtera	Jl. Melati No.5, Yogyakarta	11884
S076	PT Makmur Lestari	Jl. Jenderal Sudirman No.11, Pekalongan	11885
S077	CV Sukses Bersama	Jl. Anggrek No.10, Bekasi	11886
S078	PT Mega Mandiri	Jl. Veteran No.6, Surabaya	11887
S079	CV Mitra Usaha	Jl. Pandanaran No.7, Semarang	11888
S080	PT Sejahtera Utama	Jl. Raya No.2, Tangerang	11889
S081	CV Abadi Makmur	Jl. Mawar No.9, Bandung	11890
S082	PT Tunas Sejahtera	Jl. Pandega No.4, Malang	11891
S083	CV Aman Lestari	Jl. Wiyata No.8, Denpasar	11892
S084	PT Karya Maju	Jl. Merpati No.12, Jakarta	11893
S085	CV Cahaya Mulia	Jl. Mawar No.13, Bandung	11894
S086	PT Global Sukses	Jl. Pandeglang No.5, Serang	11895
S087	CV Maju Abadi	Jl. Raden Inten No.6, Bandar Lampung	11896
S088	PT Aman Jaya	Jl. Pandawa No.7, Surabaya	11897
S089	CV Berkah Utama	Jl. Kenanga No.10, Medan	11898
S090	PT Sentosa Lestari	Jl. Melawai No.14, Jakarta	11899
S091	CV Sukses Makmur	Jl. Gatot Subroto No.11, Bandung	11900
S092	PT Abadi Kencana	Jl. Cendana No.3, Palu	11901
S093	CV Indah Mandiri	Jl. Pandeglang No.9, Serang	11902
S094	PT Bumi Jaya	Jl. Pahlawan No.10, Solo	11903
S095	CV Mitra Abadi	Jl. Pandan No.8, Bandung	11904
S096	PT Dunia Lestari	Jl. Angsana No.9, Denpasar	11905
S097	CV Mega Utama	Jl. Gatot Subroto No.6, Jakarta	11906
S098	PT Sumber Jaya	Jl. Melati No.8, Semarang	11907
S099	CV Harapan Baru	Jl. Pandega No.15, Yogyakarta	11908
S100	PT Makmur Sentosa	Jl. Raya No.9, Surabaya	11909
\.


--
-- TOC entry 5022 (class 0 OID 17606)
-- Dependencies: 231
-- Data for Name: Pembelian; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Pembelian" (id_pembelian, tanggal_pembelian, id_pemasok) FROM stdin;
PMB001	2025-01-01	S001
PMB002	2025-01-02	S002
PMB003	2025-01-03	S003
PMB004	2025-01-04	S004
PMB005	2025-01-05	S005
PMB006	2025-01-06	S006
PMB007	2025-01-07	S007
PMB008	2025-01-08	S008
PMB009	2025-01-09	S009
PMB010	2025-01-10	S010
PMB011	2025-01-11	S011
PMB012	2025-01-12	S012
PMB013	2025-01-13	S013
PMB014	2025-01-14	S014
PMB015	2025-01-15	S015
PMB016	2025-01-16	S016
PMB017	2025-01-17	S017
PMB018	2025-01-18	S018
PMB019	2025-01-19	S019
PMB020	2025-01-20	S020
PMB021	2025-01-21	S021
PMB022	2025-01-22	S022
PMB023	2025-01-23	S023
PMB024	2025-01-24	S024
PMB025	2025-01-25	S025
PMB026	2025-01-26	S026
PMB027	2025-01-27	S027
PMB028	2025-01-28	S028
PMB029	2025-01-29	S029
PMB030	2025-01-30	S030
PMB031	2025-01-31	S031
PMB032	2025-02-01	S032
PMB033	2025-02-02	S033
PMB034	2025-02-03	S034
PMB035	2025-02-04	S035
PMB036	2025-02-05	S036
PMB037	2025-02-06	S037
PMB038	2025-02-07	S038
PMB039	2025-02-08	S039
PMB040	2025-02-09	S040
PMB041	2025-02-10	S041
PMB042	2025-02-11	S042
PMB043	2025-02-12	S043
PMB044	2025-02-13	S044
PMB045	2025-02-14	S045
PMB046	2025-02-15	S046
PMB047	2025-02-16	S047
PMB048	2025-02-17	S048
PMB049	2025-02-18	S049
PMB050	2025-02-19	S050
PMB051	2025-02-20	S051
PMB052	2025-02-21	S052
PMB053	2025-02-22	S053
PMB054	2025-02-23	S054
PMB055	2025-02-24	S055
PMB056	2025-02-25	S056
PMB057	2025-02-26	S057
PMB058	2025-02-27	S058
PMB059	2025-02-28	S059
PMB060	2025-03-01	S060
PMB061	2025-03-02	S061
PMB062	2025-03-03	S062
PMB063	2025-03-04	S063
PMB064	2025-03-05	S064
PMB065	2025-03-06	S065
PMB066	2025-03-07	S066
PMB067	2025-03-08	S067
PMB068	2025-03-09	S068
PMB069	2025-03-10	S069
PMB070	2025-03-11	S070
PMB071	2025-03-12	S071
PMB072	2025-03-13	S072
PMB073	2025-03-14	S073
PMB074	2025-03-15	S074
PMB075	2025-03-16	S075
PMB076	2025-03-17	S076
PMB077	2025-03-18	S077
PMB078	2025-03-19	S078
PMB079	2025-03-20	S079
PMB080	2025-03-21	S080
PMB081	2025-03-22	S081
PMB082	2025-03-23	S082
PMB083	2025-03-24	S083
PMB084	2025-03-25	S084
PMB085	2025-03-26	S085
PMB086	2025-03-27	S086
PMB087	2025-03-28	S087
PMB088	2025-03-29	S088
PMB089	2025-03-30	S089
PMB090	2025-03-31	S090
PMB091	2025-04-01	S091
PMB092	2025-04-02	S092
PMB093	2025-04-03	S093
PMB094	2025-04-04	S094
PMB095	2025-04-05	S095
PMB096	2025-04-06	S096
PMB097	2025-04-07	S097
PMB098	2025-04-08	S098
PMB099	2025-04-09	S099
PMB100	2025-04-10	S100
\.


--
-- TOC entry 5023 (class 0 OID 17609)
-- Dependencies: 232
-- Data for Name: Penerbit; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Penerbit" (id_penerbit, nama, email, alamat_nama_jalan, kode_pos) FROM stdin;
P001	Gramedia	info@gramedia.id	Jl. Palmerah Barat No.29, Jakarta Barat	11810
P002	Erlangga	info@erlangga.id	Jl. Slipi Raya No.45, Jakarta Barat	11811
P003	Informatika	cs@informatika.id	Jl. Sukabumi Selatan No.88, Jakarta Barat	11812
P004	AndiPublik	info@andipub.id	Jl. Duri Kepa No.38, Jakarta Barat	11813
P005	CakraMedia	info@cakra.id	Jl. Melawai No.11, Jakarta Selatan	11814
P006	PustakaUtama	info@pustaka.id	Jl. Gandaria Utara No.25, Jakarta Selatan	11815
P007	LintangPress	info@lintang.id	Jl. Susukan No.14, Jakarta Timur	11816
P008	Arunika	info@arunika.id	Jl. Cijantung Raya No.6, Jakarta Timur	11817
P009	GemaPustaka	info@gemapus.id	Jl. Cililitan No.77, Jakarta Timur	11818
P010	NusaCendekia	info@nusacen.id	Jl. Palmeriam No.19, Jakarta Timur	11819
P011	TeknoPrint	info@teknopr.id	Jl. Burangrang No.10, Bandung	11820
P012	BandungLit	info@bandlit.id	Jl. Dago Asri No.15, Bandung	11821
P013	LangitMedia	info@langit.id	Jl. Pasir Kaliki No.42, Bandung	11822
P014	CitraPress	info@citrap.id	Jl. Pasteur No.100, Bandung	11823
P015	AksaraMuda	info@aksara.id	Jl. Antapani Tengah No.13, Bandung	11824
P016	VisiNusa	info@visinusa.id	Jl. Leuwigajah No.29, Cimahi	11825
P017	MegaIlmu	info@megailmu.id	Jl. Cipageran No.45, Cimahi	11826
P018	CendekiaUt	info@cendeku.id	Jl. Aren Jaya No.88, Bekasi	11827
P019	PenaKreatif	info@penakr.id	Jl. Kayuringin Jaya No.20, Bekasi	11828
P020	PilarPress	info@pilar.id	Jl. Beji Timur No.39, Depok	11829
P021	JogjaMedia	info@jogjam.id	Jl. Terban No.5, Yogyakarta	11830
P022	AndalanBk	info@andalan.id	Jl. Pandeyan No.14, Yogyakarta	11831
P023	SinarIlmu	info@sinar.id	Jl. Suryodiningratan No.50, Yogyakarta	11832
P024	WahyuPress	info@wahyu.id	Jl. Cokrodiningratan No.9, Yogyakarta	11833
P025	DepokBook	info@depokbk.id	Jl. Maguwoharjo No.11, Sleman	11834
P026	SariMedia	info@sarimd.id	Jl. Sariharjo No.27, Sleman	11835
P027	BangunBk	info@bangun.id	Jl. Tamanan No.90, Bantul	11836
P028	KasihanBk	info@kasihan.id	Jl. Tamantirto No.18, Bantul	11837
P029	SewonPub	info@sewon.id	Jl. Bangunharjo No.33, Bantul	11838
P030	WatesPrs	info@wates.id	Jl. Bendungan No.40, Kulon Progo	11839
P031	SemarangBk	info@semarbk.id	Jl. Jatingaleh No.15, Semarang	11840
P032	Candisari	info@candis.id	Jl. Ngesrep Raya No.28, Semarang	11841
P033	SoloAksara	info@soloaks.id	Jl. Meteseh No.42, Semarang	11842
P034	Sriwedari	info@sriwe.id	Jl. Sriwedari No.17, Solo	11843
P035	JebresMd	info@jebres.id	Jl. Pucangsawit No.22, Solo	11844
P036	MagelangBk	info@magelb.id	Jl. Gelangan No.34, Magelang	11845
P037	TegalMj	info@tegal.id	Jl. Panggung No.21, Tegal	11846
P038	KrapyakBk	info@krapyk.id	Jl. Krapyak Lor No.25, Pekalongan	11847
P039	PurwoMed	info@purwo.id	Jl. Karangklesem No.16, Purwokerto	11848
P040	CilacapBk	info@cilacp.id	Jl. Tegalreja No.33, Cilacap	11849
P041	SurabayaBk	info@surabk.id	Jl. Dr. Sutomo No.50, Surabaya	11850
P042	JagirMd	info@jagir.id	Jl. Jagir Raya No.8, Surabaya	11851
P043	Ketabang	info@ketab.id	Jl. Ketabang No.18, Surabaya	11852
P044	CandiPub	info@candip.id	Jl. Sumokali No.29, Sidoarjo	11853
P045	LowokPrs	info@lowok.id	Jl. Jatimulyo No.55, Malang	11854
P046	KaumanMd	info@kauman.id	Jl. Kauman No.13, Malang	11855
P047	BatuBk	info@batu.id	Jl. Temas No.60, Batu	11856
P048	KediriBk	info@kediri.id	Jl. Dandangan No.9, Kediri	11857
P049	BlitarBk	info@blitar.id	Jl. Rembang No.33, Blitar	11858
P050	MadiunBk	info@madiun.id	Jl. Madiun Lor No.27, Madiun	11859
P051	CiledugBk	info@ciledu.id	Jl. Paninggilan No.19, Tangerang	11860
P052	PorisBk	info@poris.id	Jl. Poris Gaga No.13, Tangerang	11861
P053	SerpongBk	info@serpong.id	Jl. Lengkong Gudang No.47, Tangsel	11862
P054	Pamulang	info@pamul.id	Jl. Pondok Cabe No.21, Tangsel	11863
P055	CibeberBk	info@cibeb.id	Jl. Kalitimbang No.90, Cilegon	11864
P056	SerangBk	info@serang.id	Jl. Kepandean No.5, Serang	11865
P057	PandegBk	info@pandeg.id	Jl. Kadomas No.38, Pandeglang	11866
P058	LebakBk	info@lebak.id	Jl. Cijoro Lebak No.22, Lebak	11867
P059	Karawaci	info@karawa.id	Jl. Nusa Jaya No.10, Tangerang	11868
P060	CiputatBk	info@ciput.id	Jl. Sawah Lama No.7, Tangsel	11869
P061	MedanBk	info@medan.id	Jl. Babura No.25, Medan	11870
P062	PuloBk	info@pulo.id	Jl. Pulo Brayan No.18, Medan	11871
P063	PasarBk	info@pasar.id	Jl. Pasar Merah No.40, Medan	11872
P064	RambungBk	info@rambu.id	Jl. Rambung Barat No.17, Binjai	11873
P065	LalangBk	info@lalang.id	Jl. Lalang No.11, Tebing Tinggi	11874
P066	SiantarBk	info@siantar.id	Jl. Proklamasi No.8, Pematangsiantar	11875
P067	SibolgaBk	info@sibolg.id	Jl. Aek Habil No.33, Sibolga	11876
P068	LangkatBk	info@langkt.id	Jl. Dendang No.20, Langkat	11877
P069	DeliserBk	info@delise.id	Jl. Petapahan No.39, Deli Serdang	11878
P070	JohorBk	info@johor.id	Jl. Kwala Bekala No.5, Medan	11879
P071	Denpasar	info@denpas.id	Jl. Pemecutan No.27, Denpasar	11880
P072	SesetanBk	info@seset.id	Jl. Sesetan No.90, Denpasar	11881
P073	SumertaBk	info@sumert.id	Jl. Sumerta No.44, Denpasar	11882
P074	LegianBk	info@legian.id	Jl. Legian No.15, Badung	11883
P075	CangguBk	info@canggu.id	Jl. Canggu Raya No.23, Badung	11884
P076	UbudBk	info@ubud.id	Jl. Peliatan No.12, Gianyar	11885
P077	TabananBk	info@taban.id	Jl. Delod Peken No.18, Tabanan	11886
P078	SingarBk	info@singar.id	Jl. Kaliasem No.30, Buleleng	11887
P079	BangliBk	info@bangli.id	Jl. Kawan No.7, Bangli	11888
P080	KlungBk	info@klungk.id	Jl. Jalanan No.40, Klungkung	11889
P081	Makassar	info@makas.id	Jl. Karampuang No.10, Makassar	11890
P082	BiringBk	info@biring.id	Jl. Sudiang No.29, Makassar	11891
P083	TamalanBk	info@tamala.id	Jl. Parangloe No.50, Makassar	11892
P084	Parepare	info@parep.id	Jl. Labukkang No.8, Parepare	11893
P085	BoneBk	info@bone.id	Jl. Watampone No.12, Bone	11894
P086	GowaBk	info@gowa.id	Jl. Pandang No.9, Gowa	11895
P087	PalopoBk	info@palop.id	Jl. Benteng No.5, Palopo	11896
P088	MarosBk	info@maros.id	Jl. Alliritengae No.20, Maros	11897
P089	PangkepBk	info@pangk.id	Jl. Bonto Kio No.15, Pangkep	11898
P090	TamalBk	info@tamal.id	Jl. Maccini No.33, Makassar	11899
P091	BalikBk	info@balik.id	Jl. Sepinggan No.21, Balikpapan	11900
P092	SamarBk	info@samar.id	Jl. Air Putih No.6, Samarinda	11901
P093	BontangBk	info@bontang.id	Jl. Api-Api No.9, Bontang	11902
P094	KutaiBk	info@kutai.id	Jl. Bukit Biru No.18, Tenggarong	11903
P095	BanjarBk	info@banjar.id	Jl. Telawang No.22, Banjarmasin	11904
P096	PalangBk	info@palang.id	Jl. Menteng No.15, Palangka Raya	11905
P097	PontBk	info@pont.id	Jl. Benua Melayu No.19, Pontianak	11906
P098	JayapBk	info@jayap.id	Jl. Yoka No.30, Jayapura	11907
P099	ManokBk	info@manok.id	Jl. Wosi No.10, Manokwari	11908
P100	MataramBk	info@matar.id	Jl. Sayang-Sayang No.8, Mataram	11909
\.


--
-- TOC entry 5024 (class 0 OID 17612)
-- Dependencies: 233
-- Data for Name: Penulis; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Penulis" (id_penulis, nama_depan, nama_belakang) FROM stdin;
P001	Andi	Saputra
P002	Budi	Santoso
P003	Citra	Anggraini
P004	Dewi	Lestari
P005	Eko	Prasetyo
P006	Fitri	Haryanti
P007	Gilang	Ramadhan
P008	Hani	Kusuma
P010	Joko	Susanto
P011	Karin	Puspita
P012	Lina	Mulyani
P013	Miko	Setiawan
P014	Nina	Hartati
P015	Oka	Wibowo
P016	Putri	Rahmawati
P017	Rafi	Hernawan
P018	Sinta	Permata
P019	Tono	Sukamto
P020	Uli	Handayani
P021	Vina	Utami
P022	Wawan	Gunawan
P023	Xena	Putri
P024	Yudi	Firmansyah
P025	Zara	Kurnia
P026	Agus	Saputra
P027	Bayu	Santosa
P028	Clara	Siregar
P029	Dian	Rahman
P030	Erik	Wijaya
P031	Fajar	Hidayat
P032	Gita	Maulani
P033	Hendra	Permadi
P034	Intan	Pratiwi
P035	Jihan	Fauziah
P036	Kamal	Anwar
P037	Lutfi	Kusnadi
P038	Mega	Pertiwi
P039	Naufal	Satria
P040	Olivia	Amalia
P041	Pram	Yudistira
P042	Qori	Hapsari
P043	Rina	Kartika
P044	Seno	Hardiman
P045	Tari	Wulandari
P046	Umar	Basri
P047	Vivi	Nuraini
P048	Wira	Sasmita
P049	Xavier	Rachman
P050	Yulia	Sari
P051	Zain	Hakim
P052	Alya	Marwan
P053	Bambang	Suharto
P054	Cindy	Ardiani
P055	Dedi	Hartono
P056	Elisa	Dewanti
P057	Farhan	Putra
P058	Gusti	Mahendra
P059	Hana	Kumalasari
P060	Irfan	Kurniawan
P061	Jefri	Santana
P062	Kiki	Aprilia
P063	Lukman	Hakim
P064	Mira	Handayani
P065	Nando	Saputro
P066	Oni	Prabowo
P067	Prita	Suhendri
P068	Qomar	Setyawan
P069	Reno	Wijanarko
P070	Sari	Fitria
P071	Tomi	Gunadi
P072	Ute	Harjanti
P073	Vera	Lestari
P074	Winda	Putri
P075	Xeno	Rahardjo
P076	Yanto	Kuswoyo
P077	Zulfa	Maulana
P078	Adit	Pangestu
P079	Bella	Indrawati
P080	Cahyo	Wibisono
P081	Desi	Utari
P082	Erlang	Hartawan
P083	Fina	Kusuma
P084	Gerry	Setiadi
P085	Hilda	Wardani
P086	Imam	Fadilah
P087	Joni	Suharto
P088	Kania	Ningsih
P089	Lani	Wijayanti
P090	Maya	Nuraini
P091	Nico	Sasmita
P092	Omar	Saputro
P093	Putra	Ardiansyah
P094	Reno	Mahendra
P095	Siska	Haryono
P096	Tegar	Ramdani
P097	Umi	Fauziah
P098	Vino	Wibowo
P099	Wulan	Ratnasari
P100	Zaki	Syahputra
P009	Andrea	Hirata
\.


--
-- TOC entry 5025 (class 0 OID 17615)
-- Dependencies: 234
-- Data for Name: Transaksi; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Transaksi" (id_transaksi, tanggal_transaksi, metode_pembayaran, id_pelanggan, id_karyawan) FROM stdin;
TRX001	2025-10-15	Transfer Bank	PLG001	K001
TRX002	2025-10-16	Tunai	PLG002	K002
TRX003	2025-10-17	E-Wallet	PLG003	K003
TRX004	2025-10-18	Transfer Bank	PLG004	K004
TRX005	2025-10-19	Tunai	PLG005	K005
TRX006	2025-10-20	E-Wallet	PLG006	K006
TRX007	2025-10-21	Transfer Bank	PLG007	K007
TRX008	2025-10-22	Tunai	PLG008	K008
TRX009	2025-10-23	E-Wallet	PLG009	K009
TRX010	2025-10-24	Transfer Bank	PLG010	K010
TRX011	2025-10-25	Tunai	PLG011	K011
TRX012	2025-10-26	E-Wallet	PLG012	K012
TRX013	2025-10-27	Transfer Bank	PLG013	K013
TRX014	2025-10-28	Tunai	PLG014	K014
TRX015	2025-10-29	E-Wallet	PLG015	K015
TRX016	2025-10-30	Transfer Bank	PLG016	K016
TRX017	2025-10-31	Tunai	PLG017	K017
TRX018	2025-11-01	E-Wallet	PLG018	K018
TRX019	2025-11-02	Transfer Bank	PLG019	K019
TRX020	2025-11-03	Tunai	PLG020	K020
TRX021	2025-11-04	E-Wallet	PLG021	K021
TRX022	2025-11-05	Transfer Bank	PLG022	K022
TRX023	2025-11-06	Tunai	PLG023	K023
TRX024	2025-11-07	E-Wallet	PLG024	K024
TRX025	2025-11-08	Transfer Bank	PLG025	K025
TRX026	2025-11-09	Tunai	PLG026	K026
TRX027	2025-11-10	E-Wallet	PLG027	K027
TRX028	2025-11-11	Transfer Bank	PLG028	K028
TRX029	2025-11-12	Tunai	PLG029	K029
TRX030	2025-11-13	E-Wallet	PLG030	K030
TRX031	2025-11-14	Transfer Bank	PLG031	K031
TRX032	2025-11-15	Tunai	PLG032	K032
TRX033	2025-11-16	E-Wallet	PLG033	K033
TRX034	2025-11-17	Transfer Bank	PLG034	K034
TRX035	2025-11-18	Tunai	PLG035	K035
TRX036	2025-11-19	E-Wallet	PLG036	K036
TRX037	2025-11-20	Transfer Bank	PLG037	K037
TRX038	2025-11-21	Tunai	PLG038	K038
TRX039	2025-11-22	E-Wallet	PLG039	K039
TRX040	2025-11-23	Transfer Bank	PLG040	K040
TRX041	2025-11-24	Tunai	PLG041	K041
TRX042	2025-11-25	E-Wallet	PLG042	K042
TRX043	2025-11-26	Transfer Bank	PLG043	K043
TRX044	2025-11-27	Tunai	PLG044	K044
TRX045	2025-11-28	E-Wallet	PLG045	K045
TRX046	2025-11-29	Transfer Bank	PLG046	K046
TRX047	2025-11-30	Tunai	PLG047	K047
TRX048	2025-12-01	E-Wallet	PLG048	K048
TRX049	2025-12-02	Transfer Bank	PLG049	K049
TRX050	2025-12-03	Tunai	PLG050	K050
TRX051	2025-12-04	E-Wallet	PLG051	K051
TRX052	2025-12-05	Transfer Bank	PLG052	K052
TRX053	2025-12-06	Tunai	PLG053	K053
TRX054	2025-12-07	E-Wallet	PLG054	K054
TRX055	2025-12-08	Transfer Bank	PLG055	K055
TRX056	2025-12-09	Tunai	PLG056	K056
TRX057	2025-12-10	E-Wallet	PLG057	K057
TRX058	2025-12-11	Transfer Bank	PLG058	K058
TRX059	2025-12-12	Tunai	PLG059	K059
TRX060	2025-12-13	E-Wallet	PLG060	K060
TRX061	2025-12-14	Transfer Bank	PLG061	K061
TRX062	2025-12-15	Tunai	PLG062	K062
TRX063	2025-12-16	E-Wallet	PLG063	K063
TRX064	2025-12-17	Transfer Bank	PLG064	K064
TRX065	2025-12-18	Tunai	PLG065	K065
TRX066	2025-12-19	E-Wallet	PLG066	K066
TRX067	2025-12-20	Transfer Bank	PLG067	K067
TRX068	2025-12-21	Tunai	PLG068	K068
TRX069	2025-12-22	E-Wallet	PLG069	K069
TRX070	2025-12-23	Transfer Bank	PLG070	K070
TRX071	2025-12-24	Tunai	PLG071	K071
TRX072	2025-12-25	E-Wallet	PLG072	K072
TRX073	2025-12-26	Transfer Bank	PLG073	K073
TRX074	2025-12-27	Tunai	PLG074	K074
TRX075	2025-12-28	E-Wallet	PLG075	K075
TRX076	2025-12-29	Transfer Bank	PLG076	K076
TRX077	2025-12-30	Tunai	PLG077	K077
TRX078	2025-12-31	E-Wallet	PLG078	K078
TRX079	2026-01-01	Transfer Bank	PLG079	K079
TRX080	2026-01-02	Tunai	PLG080	K080
TRX081	2026-01-03	E-Wallet	PLG081	K081
TRX082	2026-01-04	Transfer Bank	PLG082	K082
TRX083	2026-01-05	Tunai	PLG083	K083
TRX084	2026-01-06	E-Wallet	PLG084	K084
TRX085	2026-01-07	Transfer Bank	PLG085	K085
TRX086	2026-01-08	Tunai	PLG086	K086
TRX087	2026-01-09	E-Wallet	PLG087	K087
TRX088	2026-01-10	Transfer Bank	PLG088	K088
TRX089	2026-01-11	Tunai	PLG089	K089
TRX090	2026-01-12	E-Wallet	PLG090	K090
TRX091	2026-01-13	Transfer Bank	PLG091	K091
TRX092	2026-01-14	Tunai	PLG092	K092
TRX093	2026-01-15	E-Wallet	PLG093	K093
TRX094	2026-01-16	Transfer Bank	PLG094	K094
TRX095	2026-01-17	Tunai	PLG095	K095
TRX096	2026-01-18	E-Wallet	PLG096	K096
TRX097	2026-01-19	Transfer Bank	PLG097	K097
TRX098	2026-01-20	Tunai	PLG098	K098
TRX099	2026-01-21	E-Wallet	PLG099	K099
TRX100	2026-01-22	Transfer Bank	PLG100	K100
\.


--
-- TOC entry 4810 (class 2606 OID 17619)
-- Name: Akun Akun_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Akun"
    ADD CONSTRAINT "Akun_pkey" PRIMARY KEY (id);


--
-- TOC entry 4812 (class 2606 OID 17621)
-- Name: Buku Buku_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Buku"
    ADD CONSTRAINT "Buku_pkey" PRIMARY KEY (isbn);


--
-- TOC entry 4814 (class 2606 OID 17623)
-- Name: Ditulis Ditulis_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Ditulis"
    ADD CONSTRAINT "Ditulis_pkey" PRIMARY KEY (isbn, id_penulis);


--
-- TOC entry 4816 (class 2606 OID 17625)
-- Name: Karyawan Karyawan_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Karyawan"
    ADD CONSTRAINT "Karyawan_pkey" PRIMARY KEY (id_karyawan);


--
-- TOC entry 4818 (class 2606 OID 17627)
-- Name: Kategori Kategori_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Kategori"
    ADD CONSTRAINT "Kategori_pkey" PRIMARY KEY (id_kategori);


--
-- TOC entry 4822 (class 2606 OID 17629)
-- Name: Memiliki (Buku_Kategori) Memiliki (Buku_Kategori)_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Memiliki (Buku_Kategori)"
    ADD CONSTRAINT "Memiliki (Buku_Kategori)_pkey" PRIMARY KEY (isbn, id_kategori);


--
-- TOC entry 4824 (class 2606 OID 17631)
-- Name: Memiliki (Pembelian_Buku) Memiliki (Pembelian_Buku)_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Memiliki (Pembelian_Buku)"
    ADD CONSTRAINT "Memiliki (Pembelian_Buku)_pkey" PRIMARY KEY (id_pembelian, isbn);


--
-- TOC entry 4826 (class 2606 OID 17633)
-- Name: Memiliki (Transaksi_Buku) Memiliki (Transaksi_Buku)_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Memiliki (Transaksi_Buku)"
    ADD CONSTRAINT "Memiliki (Transaksi_Buku)_pkey" PRIMARY KEY (id_transaksi, isbn);


--
-- TOC entry 4828 (class 2606 OID 17635)
-- Name: Nomor_Hp_Karyawan Nomor_Hp_Karyawan_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Nomor_Hp_Karyawan"
    ADD CONSTRAINT "Nomor_Hp_Karyawan_pkey" PRIMARY KEY (id_karyawan, nomor_hp);


--
-- TOC entry 4830 (class 2606 OID 17637)
-- Name: Nomor_Hp_Pelanggan Nomor_Hp_Pelanggan_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Nomor_Hp_Pelanggan"
    ADD CONSTRAINT "Nomor_Hp_Pelanggan_pkey" PRIMARY KEY (id_pelanggan, nomor_hp);


--
-- TOC entry 4832 (class 2606 OID 17639)
-- Name: Nomor_Hp_Penulis Nomor_Hp_Penulis_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Nomor_Hp_Penulis"
    ADD CONSTRAINT "Nomor_Hp_Penulis_pkey" PRIMARY KEY (id_penulis, nomor_hp);


--
-- TOC entry 4834 (class 2606 OID 17641)
-- Name: Pelanggan Pelanggan_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Pelanggan"
    ADD CONSTRAINT "Pelanggan_pkey" PRIMARY KEY (id_pelanggan);


--
-- TOC entry 4836 (class 2606 OID 17643)
-- Name: Pemasok Pemasok_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Pemasok"
    ADD CONSTRAINT "Pemasok_pkey" PRIMARY KEY (id_pemasok);


--
-- TOC entry 4838 (class 2606 OID 17645)
-- Name: Pembelian Pembelian_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Pembelian"
    ADD CONSTRAINT "Pembelian_pkey" PRIMARY KEY (id_pembelian);


--
-- TOC entry 4840 (class 2606 OID 17647)
-- Name: Penerbit Penerbit_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Penerbit"
    ADD CONSTRAINT "Penerbit_pkey" PRIMARY KEY (id_penerbit);


--
-- TOC entry 4842 (class 2606 OID 17649)
-- Name: Penulis Penulis_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Penulis"
    ADD CONSTRAINT "Penulis_pkey" PRIMARY KEY (id_penulis);


--
-- TOC entry 4844 (class 2606 OID 17651)
-- Name: Transaksi Transaksi_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Transaksi"
    ADD CONSTRAINT "Transaksi_pkey" PRIMARY KEY (id_transaksi);


--
-- TOC entry 4820 (class 2606 OID 17653)
-- Name: Kode_Pos kode_pos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Kode_Pos"
    ADD CONSTRAINT kode_pos_pkey PRIMARY KEY (kode_pos);


--
-- TOC entry 4846 (class 2606 OID 17654)
-- Name: Ditulis buku_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Ditulis"
    ADD CONSTRAINT buku_fk FOREIGN KEY (isbn) REFERENCES public."Buku"(isbn) NOT VALID;


--
-- TOC entry 4849 (class 2606 OID 17659)
-- Name: Memiliki (Buku_Kategori) buku_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Memiliki (Buku_Kategori)"
    ADD CONSTRAINT buku_fk FOREIGN KEY (isbn) REFERENCES public."Buku"(isbn) NOT VALID;


--
-- TOC entry 4851 (class 2606 OID 17664)
-- Name: Memiliki (Pembelian_Buku) buku_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Memiliki (Pembelian_Buku)"
    ADD CONSTRAINT buku_fk FOREIGN KEY (isbn) REFERENCES public."Buku"(isbn) NOT VALID;


--
-- TOC entry 4853 (class 2606 OID 17669)
-- Name: Memiliki (Transaksi_Buku) buku_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Memiliki (Transaksi_Buku)"
    ADD CONSTRAINT buku_fk FOREIGN KEY (isbn) REFERENCES public."Buku"(isbn) NOT VALID;


--
-- TOC entry 4845 (class 2606 OID 17674)
-- Name: Buku id_penerbit; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Buku"
    ADD CONSTRAINT id_penerbit FOREIGN KEY (id_penerbit) REFERENCES public."Penerbit"(id_penerbit) NOT VALID;


--
-- TOC entry 4855 (class 2606 OID 17679)
-- Name: Nomor_Hp_Karyawan karyawan_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Nomor_Hp_Karyawan"
    ADD CONSTRAINT karyawan_fk FOREIGN KEY (id_karyawan) REFERENCES public."Karyawan"(id_karyawan) NOT VALID;


--
-- TOC entry 4861 (class 2606 OID 17684)
-- Name: Transaksi karyawan_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Transaksi"
    ADD CONSTRAINT karyawan_fk FOREIGN KEY (id_karyawan) REFERENCES public."Karyawan"(id_karyawan) NOT VALID;


--
-- TOC entry 4850 (class 2606 OID 17689)
-- Name: Memiliki (Buku_Kategori) kategori_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Memiliki (Buku_Kategori)"
    ADD CONSTRAINT kategori_fk FOREIGN KEY (id_kategori) REFERENCES public."Kategori"(id_kategori) NOT VALID;


--
-- TOC entry 4848 (class 2606 OID 17694)
-- Name: Karyawan kodepos_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Karyawan"
    ADD CONSTRAINT kodepos_fk FOREIGN KEY (kode_pos) REFERENCES public."Kode_Pos"(kode_pos) NOT VALID;


--
-- TOC entry 4858 (class 2606 OID 17699)
-- Name: Pemasok kodepos_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Pemasok"
    ADD CONSTRAINT kodepos_fk FOREIGN KEY (kode_pos) REFERENCES public."Kode_Pos"(kode_pos) NOT VALID;


--
-- TOC entry 4860 (class 2606 OID 17704)
-- Name: Penerbit kodepos_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Penerbit"
    ADD CONSTRAINT kodepos_fk FOREIGN KEY (kode_pos) REFERENCES public."Kode_Pos"(kode_pos) NOT VALID;


--
-- TOC entry 4856 (class 2606 OID 17709)
-- Name: Nomor_Hp_Pelanggan pelanggan_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Nomor_Hp_Pelanggan"
    ADD CONSTRAINT pelanggan_fk FOREIGN KEY (id_pelanggan) REFERENCES public."Pelanggan"(id_pelanggan) NOT VALID;


--
-- TOC entry 4862 (class 2606 OID 17714)
-- Name: Transaksi pelanggan_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Transaksi"
    ADD CONSTRAINT pelanggan_fk FOREIGN KEY (id_pelanggan) REFERENCES public."Pelanggan"(id_pelanggan) NOT VALID;


--
-- TOC entry 4859 (class 2606 OID 17719)
-- Name: Pembelian pemasok_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Pembelian"
    ADD CONSTRAINT pemasok_fk FOREIGN KEY (id_pemasok) REFERENCES public."Pemasok"(id_pemasok) NOT VALID;


--
-- TOC entry 4852 (class 2606 OID 17724)
-- Name: Memiliki (Pembelian_Buku) pembelian_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Memiliki (Pembelian_Buku)"
    ADD CONSTRAINT pembelian_fk FOREIGN KEY (id_pembelian) REFERENCES public."Pembelian"(id_pembelian) NOT VALID;


--
-- TOC entry 4847 (class 2606 OID 17729)
-- Name: Ditulis penulis_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Ditulis"
    ADD CONSTRAINT penulis_fk FOREIGN KEY (id_penulis) REFERENCES public."Penulis"(id_penulis) NOT VALID;


--
-- TOC entry 4857 (class 2606 OID 17734)
-- Name: Nomor_Hp_Penulis penulis_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Nomor_Hp_Penulis"
    ADD CONSTRAINT penulis_fk FOREIGN KEY (id_penulis) REFERENCES public."Penulis"(id_penulis) NOT VALID;


--
-- TOC entry 4854 (class 2606 OID 17739)
-- Name: Memiliki (Transaksi_Buku) transaksi_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Memiliki (Transaksi_Buku)"
    ADD CONSTRAINT transaksi_fk FOREIGN KEY (id_transaksi) REFERENCES public."Transaksi"(id_transaksi) NOT VALID;


-- Completed on 2025-10-21 11:07:18

--
-- PostgreSQL database dump complete
--

\unrestrict boi4DgAKhUCmNZxOazja74Tu9H78wz43ofcRCkG3W0dDx1L20IjLWzCawuQCvwh

