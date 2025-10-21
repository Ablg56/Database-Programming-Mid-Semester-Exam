--
-- PostgreSQL database dump
--

\restrict I61b3ud6Sw4WuXEf7EHnDPSUxA8VTjB3Ub40L5tO2ni7E4skPzPW44n3hzQxN2t

-- Dumped from database version 17.6
-- Dumped by pg_dump version 17.6

-- Started on 2025-10-21 11:06:02

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
-- TOC entry 217 (class 1259 OID 18121)
-- Name: Akun; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Akun" (
    id character varying(10) NOT NULL,
    username character varying(25) NOT NULL,
    password character varying(25) NOT NULL
);


ALTER TABLE public."Akun" OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 18124)
-- Name: Buku; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Buku" (
    isbn character varying(13) NOT NULL,
    judul character varying(50) NOT NULL,
    stok numeric(5,0) NOT NULL,
    harga numeric(9,0) NOT NULL,
    tahun_terbit numeric(4,0) NOT NULL,
    id_penerbit character varying(10) NOT NULL
);


ALTER TABLE public."Buku" OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 18127)
-- Name: Ditulis; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Ditulis" (
    isbn character varying(13) NOT NULL,
    id_penulis character varying(10) NOT NULL
);


ALTER TABLE public."Ditulis" OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 18130)
-- Name: Karyawan; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Karyawan" (
    id_karyawan character varying(10) NOT NULL,
    nama_depan character varying(25) NOT NULL,
    nama_belakang character varying(25) NOT NULL,
    jenis_kelamin character varying(1) NOT NULL,
    email character varying(100) NOT NULL,
    jabatan character varying(25) NOT NULL,
    alamat_nama_jalan character varying(100) NOT NULL,
    kode_pos character varying(10) NOT NULL
);


ALTER TABLE public."Karyawan" OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 18133)
-- Name: Kategori; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Kategori" (
    id_kategori character varying(10) NOT NULL,
    nama character varying(25) NOT NULL
);


ALTER TABLE public."Kategori" OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 18136)
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
-- TOC entry 223 (class 1259 OID 18141)
-- Name: Memiliki (Buku_Kategori); Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Memiliki (Buku_Kategori)" (
    isbn character varying(13) NOT NULL,
    id_kategori character varying(10) NOT NULL
);


ALTER TABLE public."Memiliki (Buku_Kategori)" OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 18144)
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
-- TOC entry 225 (class 1259 OID 18147)
-- Name: Memiliki (Transaksi_Buku); Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Memiliki (Transaksi_Buku)" (
    id_transaksi character varying(10) NOT NULL,
    isbn character varying(13) NOT NULL,
    jumlah numeric(3,0) NOT NULL
);


ALTER TABLE public."Memiliki (Transaksi_Buku)" OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 18150)
-- Name: Nomor_Hp_Karyawan; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Nomor_Hp_Karyawan" (
    id_karyawan character varying(10) NOT NULL,
    nomor_hp character varying(12) NOT NULL
);


ALTER TABLE public."Nomor_Hp_Karyawan" OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 18153)
-- Name: Nomor_Hp_Pelanggan; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Nomor_Hp_Pelanggan" (
    id_pelanggan character varying(10) NOT NULL,
    nomor_hp character varying(12) NOT NULL
);


ALTER TABLE public."Nomor_Hp_Pelanggan" OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 18156)
-- Name: Nomor_Hp_Penulis; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Nomor_Hp_Penulis" (
    id_penulis character varying(10) NOT NULL,
    nomor_hp character varying(12) NOT NULL
);


ALTER TABLE public."Nomor_Hp_Penulis" OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 18159)
-- Name: Pelanggan; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Pelanggan" (
    id_pelanggan character varying(10) NOT NULL,
    nama_depan character varying(25) NOT NULL,
    nama_belakang character varying(25) NOT NULL
);


ALTER TABLE public."Pelanggan" OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 18162)
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
-- TOC entry 231 (class 1259 OID 18165)
-- Name: Pembelian; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Pembelian" (
    id_pembelian character varying(10) NOT NULL,
    tanggal_pembelian date NOT NULL,
    id_pemasok character varying(10) NOT NULL
);


ALTER TABLE public."Pembelian" OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 18168)
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
-- TOC entry 233 (class 1259 OID 18171)
-- Name: Penulis; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Penulis" (
    id_penulis character varying(10) NOT NULL,
    nama_depan character varying(25) NOT NULL,
    nama_belakang character varying(25) NOT NULL
);


ALTER TABLE public."Penulis" OWNER TO postgres;

--
-- TOC entry 234 (class 1259 OID 18174)
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
-- TOC entry 5008 (class 0 OID 18121)
-- Dependencies: 217
-- Data for Name: Akun; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Akun" (id, username, password) FROM stdin;
1	najwa01	pw_najwa123
2	habib02	pw_habib123
3	abil03	pw_abil123
4	agril04	pw_agril123
5	user05	pw_user05
6	user06	pw_user06
7	user07	pw_user07
8	user08	pw_user08
9	user09	pw_user09
10	user10	pw_user10
\.


--
-- TOC entry 5009 (class 0 OID 18124)
-- Dependencies: 218
-- Data for Name: Buku; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Buku" (isbn, judul, stok, harga, tahun_terbit, id_penerbit) FROM stdin;
9786020000011	Misteri di Balik Senja	25	85000	2019	1
9786020000012	Langit Tanpa Bintang	12	95000	2020	2
9786020000013	Senandung Hujan di Kota Lama	8	78000	2018	3
9786020000014	Pelangi Setelah Badai	40	102000	2021	1
9786020000015	Rahasia Taman Rahasia	15	89000	2017	2
9786020000016	Rindu yang Tersisa	5	99000	2022	3
9786020000017	Bayangan di Balik Jendela	30	87000	2023	1
9786020000018	Lautan Kenangan	20	93000	2021	2
9786020000019	Menapak Waktu	18	97000	2020	3
9786020000020	Kisah Tanpa Akhir	10	91000	2019	1
\.


--
-- TOC entry 5010 (class 0 OID 18127)
-- Dependencies: 219
-- Data for Name: Ditulis; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Ditulis" (isbn, id_penulis) FROM stdin;
9786020000011	1
9786020000012	2
9786020000013	3
9786020000014	1
9786020000015	4
9786020000016	2
9786020000017	5
9786020000018	3
9786020000019	4
9786020000020	5
\.


--
-- TOC entry 5011 (class 0 OID 18130)
-- Dependencies: 220
-- Data for Name: Karyawan; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Karyawan" (id_karyawan, nama_depan, nama_belakang, jenis_kelamin, email, jabatan, alamat_nama_jalan, kode_pos) FROM stdin;
1	Ahmad	Fauzi	L	ahmad.fauzi@example.com	Kasir	Jl. Kebon Melati No. 12	10110
2	Siti	Nurhaliza	P	siti.nurhaliza@example.com	Admin	Jl. Keputih Raya No. 8	60241
3	Budi	Hartono	L	budi.hartono@example.com	Gudang	Jl. Pasir Biru No. 5	40123
4	Rina	Amalia	P	rina.amalia@example.com	Kasir	Jl. Karanganyar No. 10	50122
5	Dewi	Sari	P	dewi.sari@example.com	Manajer	Jl. Kertak Baru No. 15	70123
6	Agus	Santoso	L	agus.santoso@example.com	Admin	Jl. Sumerta No. 9	80232
7	Lina	Kurniawati	P	lina.kurnia@example.com	Gudang	Jl. Bukit Lama No. 11	30321
8	Rudi	Hidayat	L	rudi.hidayat@example.com	Kasir	Jl. Dr. Sutomo No. 3	60123
9	Nina	Putri	P	nina.putri@example.com	Admin	Jl. Dago No. 17	40124
10	Fajar	Ramadhan	L	fajar.ramadhan@example.com	Manajer	Jl. Cideng No. 20	10111
\.


--
-- TOC entry 5012 (class 0 OID 18133)
-- Dependencies: 221
-- Data for Name: Kategori; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Kategori" (id_kategori, nama) FROM stdin;
1	Fiksi
2	Nonfiksi
3	Teknologi
4	Bisnis
5	Pendidikan
6	Kesehatan
7	Seni
8	Sejarah
9	Psikologi
10	Kuliner
\.


--
-- TOC entry 5013 (class 0 OID 18136)
-- Dependencies: 222
-- Data for Name: Kode_Pos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Kode_Pos" (kode_pos, nama_provinsi, nama_kota, nama_kecamatan, nama_kelurahan) FROM stdin;
10110	DKI Jakarta	Jakarta Pusat	Tanah Abang	Kebon Melati
60241	Jawa Timur	Surabaya	Sukolilo	Keputih
40123	Jawa Barat	Bandung	Cibiru	Pasir Biru
50122	Jawa Tengah	Semarang	Gajahmungkur	Karanganyar
70123	Kalimantan Selatan	Banjarmasin	Banjarmasin Tengah	Kertak Baru
80232	Bali	Denpasar	Denpasar Timur	Sumerta
30321	Sumatera Selatan	Palembang	Ilir Barat I	Bukit Lama
60123	Jawa Timur	Surabaya	Tegalsari	Dr. Sutomo
40124	Jawa Barat	Bandung	Coblong	Dago
10111	DKI Jakarta	Jakarta Pusat	Gambir	Cideng
\.


--
-- TOC entry 5014 (class 0 OID 18141)
-- Dependencies: 223
-- Data for Name: Memiliki (Buku_Kategori); Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Memiliki (Buku_Kategori)" (isbn, id_kategori) FROM stdin;
9786020000011	1
9786020000012	2
9786020000013	3
9786020000014	1
9786020000015	4
9786020000016	2
9786020000017	5
9786020000018	3
9786020000019	4
9786020000020	5
\.


--
-- TOC entry 5015 (class 0 OID 18144)
-- Dependencies: 224
-- Data for Name: Memiliki (Pembelian_Buku); Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Memiliki (Pembelian_Buku)" (id_pembelian, isbn, harga_beli, jumlah_beli) FROM stdin;
1	9786020000011	70000	20
2	9786020000012	78000	15
4	9786020000014	82000	25
5	9786020000015	76000	18
6	9786020000016	85000	12
7	9786020000017	73000	30
8	9786020000018	79000	22
9	9786020000019	81000	16
10	9786020000020	88000	14
3	9786020000012	69000	10
\.


--
-- TOC entry 5016 (class 0 OID 18147)
-- Dependencies: 225
-- Data for Name: Memiliki (Transaksi_Buku); Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Memiliki (Transaksi_Buku)" (id_transaksi, isbn, jumlah) FROM stdin;
1	9786020000011	2
2	9786020000012	1
3	9786020000013	3
4	9786020000014	2
5	9786020000015	1
6	9786020000016	4
7	9786020000017	2
8	9786020000018	1
9	9786020000019	3
10	9786020000020	2
\.


--
-- TOC entry 5017 (class 0 OID 18150)
-- Dependencies: 226
-- Data for Name: Nomor_Hp_Karyawan; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Nomor_Hp_Karyawan" (id_karyawan, nomor_hp) FROM stdin;
1	081234567801
2	081234567802
3	081234567803
4	081234567804
5	081234567805
6	081234567806
7	081234567807
8	081234567808
9	081234567809
10	081234567810
\.


--
-- TOC entry 5018 (class 0 OID 18153)
-- Dependencies: 227
-- Data for Name: Nomor_Hp_Pelanggan; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Nomor_Hp_Pelanggan" (id_pelanggan, nomor_hp) FROM stdin;
1	082145678901
2	082145678902
3	082145678903
4	082145678904
5	082145678905
6	082145678906
7	082145678907
8	082145678908
9	082145678909
10	082145678910
\.


--
-- TOC entry 5019 (class 0 OID 18156)
-- Dependencies: 228
-- Data for Name: Nomor_Hp_Penulis; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Nomor_Hp_Penulis" (id_penulis, nomor_hp) FROM stdin;
1	083245678901
2	083245678902
3	083245678903
4	083245678904
5	083245678905
1	083245678906
2	083245678907
3	083245678908
4	083245678909
5	083245678910
\.


--
-- TOC entry 5020 (class 0 OID 18159)
-- Dependencies: 229
-- Data for Name: Pelanggan; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Pelanggan" (id_pelanggan, nama_depan, nama_belakang) FROM stdin;
1	Aldi	Pratama
2	Bella	Sari
3	Citra	Lestari
4	Dimas	Saputra
5	Eka	Nugroho
6	Fani	Wulandari
7	Gilang	Ramadhan
8	Hana	Putri
9	Indra	Santoso
10	Jeni	Amalia
\.


--
-- TOC entry 5021 (class 0 OID 18162)
-- Dependencies: 230
-- Data for Name: Pemasok; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Pemasok" (id_pemasok, nama, alamat_nama_jalan, kode_pos) FROM stdin;
1	CV Nusantara	Jl. Melati No. 12	10110
2	PT Surya Media	Jl. Mawar No. 5	60241
3	UD Mandiri	Jl. Kenanga No. 8	40123
4	PT Cahaya Abadi	Jl. Merpati No. 10	50122
5	CV Borneo Jaya	Jl. Anggrek No. 7	70123
6	PT Bali Indah	Jl. Cemara No. 2	80232
7	UD Palembang Makmur	Jl. Sakura No. 9	30321
8	PT Tiga Serangkai	Jl. Cendana No. 4	60123
9	CV Bandung Baru	Jl. Flamboyan No. 11	40124
10	PT Jakarta Sejahtera	Jl. Cemara No. 3	10111
\.


--
-- TOC entry 5022 (class 0 OID 18165)
-- Dependencies: 231
-- Data for Name: Pembelian; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Pembelian" (id_pembelian, tanggal_pembelian, id_pemasok) FROM stdin;
1	2024-01-12	1
2	2024-02-05	2
3	2024-03-10	3
4	2024-04-22	4
5	2024-05-15	5
6	2024-06-30	6
7	2024-07-18	7
8	2024-08-09	8
9	2024-09-25	9
10	2024-10-12	10
\.


--
-- TOC entry 5023 (class 0 OID 18168)
-- Dependencies: 232
-- Data for Name: Penerbit; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Penerbit" (id_penerbit, nama, email, alamat_nama_jalan, kode_pos) FROM stdin;
1	Gramedia Pustaka Utama	kontak@gramedia.co.id	Jl. Palmerah Barat No. 29	10110
2	Erlangga	info@erlangga.co.id	Jl. H. Baping Raya No. 100	60241
3	Mizan Publika	halo@mizan.com	Jl. Cinambo No. 135	40123
4	Bentang Pustaka	cs@bentangpustaka.com	Jl. Pandega No. 45	50122
5	Republika	support@republika.co.id	Jl. Warung Buncit No. 10	70123
6	GagasMedia	info@gagasmedia.net	Jl. Matraman No. 12	80232
7	Deepublish	hello@deepublish.co.id	Jl. Candi Gebang No. 25	30321
8	Andi Publisher	admin@andipublisher.com	Jl. Beo No. 16	60123
9	TransMedia	cs@transmedia.co.id	Jl. TB Simatupang No. 1	40124
10	Pustaka Ilmu	kontak@pustakailmu.co.id	Jl. Ahmad Yani No. 55	10111
\.


--
-- TOC entry 5024 (class 0 OID 18171)
-- Dependencies: 233
-- Data for Name: Penulis; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Penulis" (id_penulis, nama_depan, nama_belakang) FROM stdin;
1	Andi	Pratama
2	Siti	Rahmawati
3	Dewi	Lestari
4	Budi	Santoso
5	Rina	Kurnia
6	Agus	Setiawan
7	Lina	Mulyani
8	Rizky	Fauzan
9	Nadia	Putri
10	Hendra	Wijaya
\.


--
-- TOC entry 5025 (class 0 OID 18174)
-- Dependencies: 234
-- Data for Name: Transaksi; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Transaksi" (id_transaksi, tanggal_transaksi, metode_pembayaran, id_pelanggan, id_karyawan) FROM stdin;
1	2024-01-10	Tunai	1	2
2	2024-02-14	Kartu Kredit	2	5
3	2024-03-21	Transfer Bank	3	1
4	2024-04-05	E-Wallet	4	7
5	2024-05-11	Tunai	5	3
6	2024-06-23	Kartu Debit	6	6
7	2024-07-08	Transfer Bank	7	8
8	2024-08-17	E-Wallet	8	10
9	2024-09-29	Tunai	9	9
10	2024-10-10	Kartu Kredit	10	4
\.


--
-- TOC entry 4810 (class 2606 OID 18178)
-- Name: Akun Akun_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Akun"
    ADD CONSTRAINT "Akun_pkey" PRIMARY KEY (id);


--
-- TOC entry 4812 (class 2606 OID 18180)
-- Name: Buku Buku_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Buku"
    ADD CONSTRAINT "Buku_pkey" PRIMARY KEY (isbn);


--
-- TOC entry 4814 (class 2606 OID 18182)
-- Name: Ditulis Ditulis_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Ditulis"
    ADD CONSTRAINT "Ditulis_pkey" PRIMARY KEY (isbn, id_penulis);


--
-- TOC entry 4816 (class 2606 OID 18184)
-- Name: Karyawan Karyawan_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Karyawan"
    ADD CONSTRAINT "Karyawan_pkey" PRIMARY KEY (id_karyawan);


--
-- TOC entry 4818 (class 2606 OID 18186)
-- Name: Kategori Kategori_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Kategori"
    ADD CONSTRAINT "Kategori_pkey" PRIMARY KEY (id_kategori);


--
-- TOC entry 4822 (class 2606 OID 18188)
-- Name: Memiliki (Buku_Kategori) Memiliki (Buku_Kategori)_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Memiliki (Buku_Kategori)"
    ADD CONSTRAINT "Memiliki (Buku_Kategori)_pkey" PRIMARY KEY (isbn, id_kategori);


--
-- TOC entry 4824 (class 2606 OID 18190)
-- Name: Memiliki (Pembelian_Buku) Memiliki (Pembelian_Buku)_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Memiliki (Pembelian_Buku)"
    ADD CONSTRAINT "Memiliki (Pembelian_Buku)_pkey" PRIMARY KEY (id_pembelian, isbn);


--
-- TOC entry 4826 (class 2606 OID 18192)
-- Name: Memiliki (Transaksi_Buku) Memiliki (Transaksi_Buku)_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Memiliki (Transaksi_Buku)"
    ADD CONSTRAINT "Memiliki (Transaksi_Buku)_pkey" PRIMARY KEY (id_transaksi, isbn);


--
-- TOC entry 4828 (class 2606 OID 18194)
-- Name: Nomor_Hp_Karyawan Nomor_Hp_Karyawan_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Nomor_Hp_Karyawan"
    ADD CONSTRAINT "Nomor_Hp_Karyawan_pkey" PRIMARY KEY (id_karyawan, nomor_hp);


--
-- TOC entry 4830 (class 2606 OID 18196)
-- Name: Nomor_Hp_Pelanggan Nomor_Hp_Pelanggan_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Nomor_Hp_Pelanggan"
    ADD CONSTRAINT "Nomor_Hp_Pelanggan_pkey" PRIMARY KEY (id_pelanggan, nomor_hp);


--
-- TOC entry 4832 (class 2606 OID 18198)
-- Name: Nomor_Hp_Penulis Nomor_Hp_Penulis_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Nomor_Hp_Penulis"
    ADD CONSTRAINT "Nomor_Hp_Penulis_pkey" PRIMARY KEY (id_penulis, nomor_hp);


--
-- TOC entry 4834 (class 2606 OID 18200)
-- Name: Pelanggan Pelanggan_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Pelanggan"
    ADD CONSTRAINT "Pelanggan_pkey" PRIMARY KEY (id_pelanggan);


--
-- TOC entry 4836 (class 2606 OID 18202)
-- Name: Pemasok Pemasok_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Pemasok"
    ADD CONSTRAINT "Pemasok_pkey" PRIMARY KEY (id_pemasok);


--
-- TOC entry 4838 (class 2606 OID 18204)
-- Name: Pembelian Pembelian_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Pembelian"
    ADD CONSTRAINT "Pembelian_pkey" PRIMARY KEY (id_pembelian);


--
-- TOC entry 4840 (class 2606 OID 18206)
-- Name: Penerbit Penerbit_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Penerbit"
    ADD CONSTRAINT "Penerbit_pkey" PRIMARY KEY (id_penerbit);


--
-- TOC entry 4842 (class 2606 OID 18208)
-- Name: Penulis Penulis_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Penulis"
    ADD CONSTRAINT "Penulis_pkey" PRIMARY KEY (id_penulis);


--
-- TOC entry 4844 (class 2606 OID 18210)
-- Name: Transaksi Transaksi_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Transaksi"
    ADD CONSTRAINT "Transaksi_pkey" PRIMARY KEY (id_transaksi);


--
-- TOC entry 4820 (class 2606 OID 18212)
-- Name: Kode_Pos kode_pos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Kode_Pos"
    ADD CONSTRAINT kode_pos_pkey PRIMARY KEY (kode_pos);


--
-- TOC entry 4846 (class 2606 OID 18213)
-- Name: Ditulis buku_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Ditulis"
    ADD CONSTRAINT buku_fk FOREIGN KEY (isbn) REFERENCES public."Buku"(isbn) NOT VALID;


--
-- TOC entry 4849 (class 2606 OID 18218)
-- Name: Memiliki (Buku_Kategori) buku_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Memiliki (Buku_Kategori)"
    ADD CONSTRAINT buku_fk FOREIGN KEY (isbn) REFERENCES public."Buku"(isbn) NOT VALID;


--
-- TOC entry 4851 (class 2606 OID 18223)
-- Name: Memiliki (Pembelian_Buku) buku_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Memiliki (Pembelian_Buku)"
    ADD CONSTRAINT buku_fk FOREIGN KEY (isbn) REFERENCES public."Buku"(isbn) NOT VALID;


--
-- TOC entry 4853 (class 2606 OID 18228)
-- Name: Memiliki (Transaksi_Buku) buku_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Memiliki (Transaksi_Buku)"
    ADD CONSTRAINT buku_fk FOREIGN KEY (isbn) REFERENCES public."Buku"(isbn) NOT VALID;


--
-- TOC entry 4855 (class 2606 OID 18233)
-- Name: Nomor_Hp_Karyawan karyawan_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Nomor_Hp_Karyawan"
    ADD CONSTRAINT karyawan_fk FOREIGN KEY (id_karyawan) REFERENCES public."Karyawan"(id_karyawan) NOT VALID;


--
-- TOC entry 4861 (class 2606 OID 18238)
-- Name: Transaksi karyawan_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Transaksi"
    ADD CONSTRAINT karyawan_fk FOREIGN KEY (id_karyawan) REFERENCES public."Karyawan"(id_karyawan) NOT VALID;


--
-- TOC entry 4850 (class 2606 OID 18243)
-- Name: Memiliki (Buku_Kategori) kategori_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Memiliki (Buku_Kategori)"
    ADD CONSTRAINT kategori_fk FOREIGN KEY (id_kategori) REFERENCES public."Kategori"(id_kategori) NOT VALID;


--
-- TOC entry 4848 (class 2606 OID 18248)
-- Name: Karyawan kodepos_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Karyawan"
    ADD CONSTRAINT kodepos_fk FOREIGN KEY (kode_pos) REFERENCES public."Kode_Pos"(kode_pos) NOT VALID;


--
-- TOC entry 4858 (class 2606 OID 18253)
-- Name: Pemasok kodepos_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Pemasok"
    ADD CONSTRAINT kodepos_fk FOREIGN KEY (kode_pos) REFERENCES public."Kode_Pos"(kode_pos) NOT VALID;


--
-- TOC entry 4860 (class 2606 OID 18258)
-- Name: Penerbit kodepos_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Penerbit"
    ADD CONSTRAINT kodepos_fk FOREIGN KEY (kode_pos) REFERENCES public."Kode_Pos"(kode_pos) NOT VALID;


--
-- TOC entry 4856 (class 2606 OID 18263)
-- Name: Nomor_Hp_Pelanggan pelanggan_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Nomor_Hp_Pelanggan"
    ADD CONSTRAINT pelanggan_fk FOREIGN KEY (id_pelanggan) REFERENCES public."Pelanggan"(id_pelanggan) NOT VALID;


--
-- TOC entry 4862 (class 2606 OID 18268)
-- Name: Transaksi pelanggan_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Transaksi"
    ADD CONSTRAINT pelanggan_fk FOREIGN KEY (id_pelanggan) REFERENCES public."Pelanggan"(id_pelanggan) NOT VALID;


--
-- TOC entry 4859 (class 2606 OID 18273)
-- Name: Pembelian pemasok_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Pembelian"
    ADD CONSTRAINT pemasok_fk FOREIGN KEY (id_pemasok) REFERENCES public."Pemasok"(id_pemasok) NOT VALID;


--
-- TOC entry 4852 (class 2606 OID 18278)
-- Name: Memiliki (Pembelian_Buku) pembelian_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Memiliki (Pembelian_Buku)"
    ADD CONSTRAINT pembelian_fk FOREIGN KEY (id_pembelian) REFERENCES public."Pembelian"(id_pembelian) NOT VALID;


--
-- TOC entry 4845 (class 2606 OID 18283)
-- Name: Buku penerbit_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Buku"
    ADD CONSTRAINT penerbit_fk FOREIGN KEY (id_penerbit) REFERENCES public."Penerbit"(id_penerbit) NOT VALID;


--
-- TOC entry 4847 (class 2606 OID 18288)
-- Name: Ditulis penulis_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Ditulis"
    ADD CONSTRAINT penulis_fk FOREIGN KEY (id_penulis) REFERENCES public."Penulis"(id_penulis) NOT VALID;


--
-- TOC entry 4857 (class 2606 OID 18293)
-- Name: Nomor_Hp_Penulis penulis_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Nomor_Hp_Penulis"
    ADD CONSTRAINT penulis_fk FOREIGN KEY (id_penulis) REFERENCES public."Penulis"(id_penulis) NOT VALID;


--
-- TOC entry 4854 (class 2606 OID 18298)
-- Name: Memiliki (Transaksi_Buku) transaksi_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Memiliki (Transaksi_Buku)"
    ADD CONSTRAINT transaksi_fk FOREIGN KEY (id_transaksi) REFERENCES public."Transaksi"(id_transaksi) NOT VALID;


-- Completed on 2025-10-21 11:06:02

--
-- PostgreSQL database dump complete
--

\unrestrict I61b3ud6Sw4WuXEf7EHnDPSUxA8VTjB3Ub40L5tO2ni7E4skPzPW44n3hzQxN2t

