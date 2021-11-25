--
-- PostgreSQL database dump
--

-- Dumped from database version 13.4 (Ubuntu 13.4-4.pgdg20.04+1)
-- Dumped by pg_dump version 14.0

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
-- Name: felhasznalo; Type: TABLE; Schema: public; Owner: xxfbwwgpetfubp
--

CREATE TABLE public.felhasznalo (
    id integer NOT NULL,
    nev character varying(100) NOT NULL,
    szuldatum date NOT NULL,
    lakcim character varying(100) NOT NULL,
    email character varying(100) NOT NULL,
    admin boolean DEFAULT false
);


ALTER TABLE public.felhasznalo OWNER TO xxfbwwgpetfubp;

--
-- Name: felhasznalo_id_seq; Type: SEQUENCE; Schema: public; Owner: xxfbwwgpetfubp
--

CREATE SEQUENCE public.felhasznalo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.felhasznalo_id_seq OWNER TO xxfbwwgpetfubp;

--
-- Name: felhasznalo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: xxfbwwgpetfubp
--

ALTER SEQUENCE public.felhasznalo_id_seq OWNED BY public.felhasznalo.id;


--
-- Name: kosar; Type: TABLE; Schema: public; Owner: xxfbwwgpetfubp
--

CREATE TABLE public.kosar (
    rendeles_id integer,
    kosartartalom character varying(1000)
);


ALTER TABLE public.kosar OWNER TO xxfbwwgpetfubp;

--
-- Name: rendeles; Type: TABLE; Schema: public; Owner: xxfbwwgpetfubp
--

CREATE TABLE public.rendeles (
    id integer NOT NULL,
    osszeg integer
);


ALTER TABLE public.rendeles OWNER TO xxfbwwgpetfubp;

--
-- Name: rendeles_id_seq; Type: SEQUENCE; Schema: public; Owner: xxfbwwgpetfubp
--

CREATE SEQUENCE public.rendeles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rendeles_id_seq OWNER TO xxfbwwgpetfubp;

--
-- Name: rendeles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: xxfbwwgpetfubp
--

ALTER SEQUENCE public.rendeles_id_seq OWNED BY public.rendeles.id;


--
-- Name: tag_kapcs; Type: TABLE; Schema: public; Owner: xxfbwwgpetfubp
--

CREATE TABLE public.tag_kapcs (
    id integer NOT NULL,
    nev character varying(100) NOT NULL,
    uniq integer NOT NULL
);


ALTER TABLE public.tag_kapcs OWNER TO xxfbwwgpetfubp;

--
-- Name: tag_kapcs_uniq_seq; Type: SEQUENCE; Schema: public; Owner: xxfbwwgpetfubp
--

CREATE SEQUENCE public.tag_kapcs_uniq_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tag_kapcs_uniq_seq OWNER TO xxfbwwgpetfubp;

--
-- Name: tag_kapcs_uniq_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: xxfbwwgpetfubp
--

ALTER SEQUENCE public.tag_kapcs_uniq_seq OWNED BY public.tag_kapcs.uniq;


--
-- Name: tagek; Type: TABLE; Schema: public; Owner: xxfbwwgpetfubp
--

CREATE TABLE public.tagek (
    id integer NOT NULL,
    nev character varying(100) NOT NULL
);


ALTER TABLE public.tagek OWNER TO xxfbwwgpetfubp;

--
-- Name: tagek_id_seq; Type: SEQUENCE; Schema: public; Owner: xxfbwwgpetfubp
--

CREATE SEQUENCE public.tagek_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tagek_id_seq OWNER TO xxfbwwgpetfubp;

--
-- Name: tagek_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: xxfbwwgpetfubp
--

ALTER SEQUENCE public.tagek_id_seq OWNED BY public.tagek.id;


--
-- Name: termek; Type: TABLE; Schema: public; Owner: xxfbwwgpetfubp
--

CREATE TABLE public.termek (
    nev character varying(250) NOT NULL,
    ar integer NOT NULL,
    leiras character varying(250) NOT NULL,
    kep character varying(250) NOT NULL
);


ALTER TABLE public.termek OWNER TO xxfbwwgpetfubp;

--
-- Name: felhasznalo id; Type: DEFAULT; Schema: public; Owner: xxfbwwgpetfubp
--

ALTER TABLE ONLY public.felhasznalo ALTER COLUMN id SET DEFAULT nextval('public.felhasznalo_id_seq'::regclass);


--
-- Name: rendeles id; Type: DEFAULT; Schema: public; Owner: xxfbwwgpetfubp
--

ALTER TABLE ONLY public.rendeles ALTER COLUMN id SET DEFAULT nextval('public.rendeles_id_seq'::regclass);


--
-- Name: tag_kapcs uniq; Type: DEFAULT; Schema: public; Owner: xxfbwwgpetfubp
--

ALTER TABLE ONLY public.tag_kapcs ALTER COLUMN uniq SET DEFAULT nextval('public.tag_kapcs_uniq_seq'::regclass);


--
-- Name: tagek id; Type: DEFAULT; Schema: public; Owner: xxfbwwgpetfubp
--

ALTER TABLE ONLY public.tagek ALTER COLUMN id SET DEFAULT nextval('public.tagek_id_seq'::regclass);


--
-- Data for Name: felhasznalo; Type: TABLE DATA; Schema: public; Owner: xxfbwwgpetfubp
--

COPY public.felhasznalo (id, nev, szuldatum, lakcim, email, admin) FROM stdin;
1	Kiss B‚la	2000-01-01	Szeged, Kerepes utca 13.	kissb@citromail.hu	f
2	Lakatos Emoke	1999-10-12	Szeged, Hídalatt 12.	lakatemo@gmail.hu	f
3	Lakatos Béla	1999-10-12	Szeged, Hídalatt 12.	lakatemo@gmail.hu	f
4	Honti Szabolcs	2001-02-15	Soltvadkert, M ty s kir ly Łt 88.	honti.szabolcs123@gmail.com	t
5	default	2000-01-01	_	_	f
6	admin	2000-01-01	_	_	t
7	Pet‹ Patrik	2001-09-11	U.S., 1600 Pennsylvania Avenue NW, Washington, D.C. 20500	patrik.peto43@gmail.com	t
8	T˘th J nos	2000-10-06	Szeged kukovetz Nana utca 13 2/5	janos.toth.2000@gmail.com	t
9	Hirsch µbel	2001-07-07	Szeged, utca lak˘	hirschabel@gmail.com	t
\.


--
-- Data for Name: kosar; Type: TABLE DATA; Schema: public; Owner: xxfbwwgpetfubp
--

COPY public.kosar (rendeles_id, kosartartalom) FROM stdin;
\.


--
-- Data for Name: rendeles; Type: TABLE DATA; Schema: public; Owner: xxfbwwgpetfubp
--

COPY public.rendeles (id, osszeg) FROM stdin;
\.


--
-- Data for Name: tag_kapcs; Type: TABLE DATA; Schema: public; Owner: xxfbwwgpetfubp
--

COPY public.tag_kapcs (id, nev, uniq) FROM stdin;
1	Tej	1
1	Sajt	2
1	Vaj	3
1	Csokolade	4
1	Jegkrem	5
2	Csirkemell	6
2	Csont Nelkuli Sertes Tarja	7
2	Csont Nelkuli Sertes Karaj	8
2	Marha Belszin	9
2	Cordon Bleu	10
2	Parizsi	11
3	Csirkemell	12
3	Brokkoli	13
3	Jegkrem	14
3	Gyorsfagyasztott Burgonya	15
4	Brokkoli	16
4	Krumpli	17
4	Lila Hagyma	18
2	Kolbasz	19
4	Voros Hagyma	20
4	Fejes Salata	21
4	Cekla	22
4	Repa	23
5	Narancs	24
5	Banan	25
6	Csokolade	26
6	Nyaloka	27
7	Etkeszlet	28
7	Evoeszkozkeszlet	29
8	Mososzer	30
\.


--
-- Data for Name: tagek; Type: TABLE DATA; Schema: public; Owner: xxfbwwgpetfubp
--

COPY public.tagek (id, nev) FROM stdin;
1	Tejtermek
2	Hus
3	Fagyasztott
4	Zoldseg
5	Gyumolcs
6	Edesseg
7	Eszkoz
8	Tisztitas
\.


--
-- Data for Name: termek; Type: TABLE DATA; Schema: public; Owner: xxfbwwgpetfubp
--

COPY public.termek (nev, ar, leiras, kep) FROM stdin;
Csirkemell	1400	Friss falusi csirkemell	csirkemell.jpg
Vaj	400	Friss magyar vaj	vaj.png
Fakanal	524	Tobb meretu es formaju fakanal	fakanal.jpg
Tej	250	Egy doboz friss termeloi tej	tej.jpg
Brokkoli	569	Frissen szedett brokkoli	brokkoli.jpg
Krumpli	159	Frissen szedett magyar burgonya	krumpli.jpg
Lila Hagyma	239	Magyar termeloi lila hagyma	lilahagyma.jpg
Csokolade	299	Finom csokolade tobb valtozatban	csoki.jpg
Kenyer	500	Friss 1 kg-os feher kenyer	kenyer.jpg
Kolbasz	750	Gyulai paraszt kolbasz	kolbasz.jpg
Liszt	319	1kg feher buzaliszt	liszt.jpg
Mososzer	899	A legmakacsabb szennyezodeseket is eltavolitja	mososzer.jpg
Citromle	449	50%-os citromle	citromle.jpg
Tea	349	Tobb izben elerheto filteres tea	tea.jpg
Udito	399	Tobb izben elerheto udito	udito.jpg
Csont Nelkuli Sertes Tarja	1299	Sertes tarja kizarolag magyar sertesekbol	tarja.jpg
Csont Nelkuli Sertes Karaj	1399	Sertes karaj kizarolag magyar sertesekbol	karaj.jpg
Marha Belszin	1899	Marha belszin premium minosogben	belszin.jpg
Nyaloka	79	Nyaloka tobb izben	nyaloka.jpg
Jegkrem	269	Jegkrem tobb izben	jegkrem.jpg
Cordon Bleu	1299	1kg (8 db) Sajtal-Sonkaval toltott pulyka medalion	cordonbleu.jpg
Gyorsfagyasztott Burgonya	499	1kg sutni valo gyorsfagyasztott krumpli	sultkrumpli.jpg
Voros Hagyma	199	Termeloi voros hagyma	hagyma.jpg
Fejes Salata	359	Frissen szedett fejes salata	salata.jpg
Cekla	465	Termeloi cekla (Spanyol import)	cekla.jpg
Repa	355	Hazai termeloi repa	repa.jpg
Olaj	459	Etkezesi olaj	olaj.jpg
Asvanyviz	229	Asvany viz extra magas asvanyi anyag tartalommal	viz.jpg
Kave	699	Szemes vagy orolt kave tobb fele intenzitasban	kave.jpg
Tojas	419	Tobb meretu tanyasi tojas	tojas.jpg
Narancs	379	Mexikoi narancs	narancs.jpg
Parizsi	525	Tobb fajta (borju, sertes, pulyka) parizsi	parizsi.jpg
Sajt	1324	Tobb fele sajt (Gouda, Camambert, Trapista, stb.)	sajt.jpg
Evoeszkozkeszlet	2349	12 db ezust evoeszkozkeszlet	evoeszkoz.jpg
Buzadara	339	Buzadara	buzadara.jpg
Cukor	315	Magyar kristaly cukor	cukor.jpg
Etkeszlet	5669	16 db-os etkeszlet	etkeszlet.jpg
Banan	429	Mexikoi banan	banan.jpg
\.


--
-- Name: felhasznalo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: xxfbwwgpetfubp
--

SELECT pg_catalog.setval('public.felhasznalo_id_seq', 2, true);


--
-- Name: rendeles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: xxfbwwgpetfubp
--

SELECT pg_catalog.setval('public.rendeles_id_seq', 1, false);


--
-- Name: tag_kapcs_uniq_seq; Type: SEQUENCE SET; Schema: public; Owner: xxfbwwgpetfubp
--

SELECT pg_catalog.setval('public.tag_kapcs_uniq_seq', 30, true);


--
-- Name: tagek_id_seq; Type: SEQUENCE SET; Schema: public; Owner: xxfbwwgpetfubp
--

SELECT pg_catalog.setval('public.tagek_id_seq', 8, true);


--
-- Name: felhasznalo felhasznalo_pkey; Type: CONSTRAINT; Schema: public; Owner: xxfbwwgpetfubp
--

ALTER TABLE ONLY public.felhasznalo
    ADD CONSTRAINT felhasznalo_pkey PRIMARY KEY (id);


--
-- Name: rendeles rendeles_pkey; Type: CONSTRAINT; Schema: public; Owner: xxfbwwgpetfubp
--

ALTER TABLE ONLY public.rendeles
    ADD CONSTRAINT rendeles_pkey PRIMARY KEY (id);


--
-- Name: tag_kapcs tag_kapcs_pkey; Type: CONSTRAINT; Schema: public; Owner: xxfbwwgpetfubp
--

ALTER TABLE ONLY public.tag_kapcs
    ADD CONSTRAINT tag_kapcs_pkey PRIMARY KEY (uniq);


--
-- Name: tagek tagek_pkey; Type: CONSTRAINT; Schema: public; Owner: xxfbwwgpetfubp
--

ALTER TABLE ONLY public.tagek
    ADD CONSTRAINT tagek_pkey PRIMARY KEY (id);


--
-- Name: termek termek_pkey; Type: CONSTRAINT; Schema: public; Owner: xxfbwwgpetfubp
--

ALTER TABLE ONLY public.termek
    ADD CONSTRAINT termek_pkey PRIMARY KEY (nev);


--
-- Name: kosar kosar_rendeles_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: xxfbwwgpetfubp
--

ALTER TABLE ONLY public.kosar
    ADD CONSTRAINT kosar_rendeles_id_fkey FOREIGN KEY (rendeles_id) REFERENCES public.rendeles(id);


--
-- Name: tag_kapcs tag_kapcs_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: xxfbwwgpetfubp
--

ALTER TABLE ONLY public.tag_kapcs
    ADD CONSTRAINT tag_kapcs_id_fkey FOREIGN KEY (id) REFERENCES public.tagek(id);


--
-- Name: tag_kapcs tag_kapcs_nev_fkey; Type: FK CONSTRAINT; Schema: public; Owner: xxfbwwgpetfubp
--

ALTER TABLE ONLY public.tag_kapcs
    ADD CONSTRAINT tag_kapcs_nev_fkey FOREIGN KEY (nev) REFERENCES public.termek(nev);


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: xxfbwwgpetfubp
--

REVOKE ALL ON SCHEMA public FROM postgres;
REVOKE ALL ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO xxfbwwgpetfubp;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- Name: LANGUAGE plpgsql; Type: ACL; Schema: -; Owner: postgres
--

GRANT ALL ON LANGUAGE plpgsql TO xxfbwwgpetfubp;


--
-- PostgreSQL database dump complete
--

