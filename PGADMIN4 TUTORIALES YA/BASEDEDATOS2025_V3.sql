--
-- PostgreSQL database dump
--

\restrict sf3vX1NbjhFGJaxSpc6eDYUBowZbYqPfJFAidaM09vFm4BqVzdbHiCZfXYDQjAU

-- Dumped from database version 18.0
-- Dumped by pg_dump version 18.0

-- Started on 2025-10-14 19:28:27

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
-- TOC entry 220 (class 1259 OID 16395)
-- Name: agenda; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.agenda (
    apellido character varying(30),
    nombre character varying(20),
    domicilio character varying(30),
    telefono character varying(11)
);


ALTER TABLE public.agenda OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16416)
-- Name: articulo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.articulo (
    codigo integer,
    nombre character varying(20),
    descripcion character varying(30),
    precio double precision,
    cantidad integer
);


ALTER TABLE public.articulo OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16413)
-- Name: empleados; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.empleados (
    nombre character varying(20),
    documento integer,
    sexo character varying(1),
    domicilio character varying(20),
    sueldobasico character varying(10)
);


ALTER TABLE public.empleados OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 16422)
-- Name: libros; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.libros (
    titulo character varying(30),
    autor character varying(20),
    editorial character varying(15),
    precio double precision
);


ALTER TABLE public.libros OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 16425)
-- Name: medicamentos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.medicamentos (
    codigo integer NOT NULL,
    nombre character varying(20) NOT NULL,
    laboratorio character varying(20),
    precio double precision,
    cantidad integer NOT NULL
);


ALTER TABLE public.medicamentos OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16401)
-- Name: peliculas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.peliculas (
    nombre character varying(20),
    actor character varying(20),
    duracion real,
    cantidad_de_copias real
);


ALTER TABLE public.peliculas OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 16431)
-- Name: pelis; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pelis (
    codigo integer NOT NULL,
    titulo character varying(40) NOT NULL,
    actor character varying(20),
    duracion integer
);


ALTER TABLE public.pelis OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16392)
-- Name: usuarios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuarios (
    nombre character varying(30),
    clave character varying(12)
);


ALTER TABLE public.usuarios OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 16436)
-- Name: usuarioss; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuarioss (
    nombre character varying(20) NOT NULL,
    clave character varying(10)
);


ALTER TABLE public.usuarioss OWNER TO postgres;

--
-- TOC entry 5037 (class 0 OID 16395)
-- Dependencies: 220
-- Data for Name: agenda; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.agenda (apellido, nombre, domicilio, telefono) FROM stdin;
moreno	alberto	colon 123	4234567
acosta	ana	colon 123	4234567
bustamante	betina	avellaneda 135	4458787
lopez	hector	salta 545	4887788
torres	juan jose	avellaneda 125	4458787
lopez	luis	urquiza 333	4445566
lopez	mariza	urquiza 333	4445566
\.


--
-- TOC entry 5040 (class 0 OID 16416)
-- Dependencies: 223
-- Data for Name: articulo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.articulo (codigo, nombre, descripcion, precio, cantidad) FROM stdin;
1	impresora	epson stylus c45	400.8	20
2	impresora	epson stylus c85	500	30
3	monitores	samsung 14	800	30
4	teclado	ingles biswal	100	50
5	teclado	español biswal	90	50
\.


--
-- TOC entry 5039 (class 0 OID 16413)
-- Dependencies: 222
-- Data for Name: empleados; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.empleados (nombre, documento, sexo, domicilio, sueldobasico) FROM stdin;
juan perez	22333444	M	sarmiento123	500
ana acosta	24555666	F	colon 123	650
bartolomeo barrios	27888999	M	urquiza 497	800
\.


--
-- TOC entry 5041 (class 0 OID 16422)
-- Dependencies: 224
-- Data for Name: libros; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.libros (titulo, autor, editorial, precio) FROM stdin;
Martin Fierro	Jose Hernandez	Planeta	35.5
Matematica estas ahi	Adrian Paenza	Siglo XXI	15
El aleph	Borges	Emece S.A	25
Cervantes y el quijote	Borges	Emece S.A	25
Aprenda PHP	Mario Molina	Emece S.A	27
\.


--
-- TOC entry 5042 (class 0 OID 16425)
-- Dependencies: 225
-- Data for Name: medicamentos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.medicamentos (codigo, nombre, laboratorio, precio, cantidad) FROM stdin;
3	Buscapina	Roche	0	200
2	Sertal compuesto	0	8.9	150
1	Sertal gotas	0	0	100
\.


--
-- TOC entry 5038 (class 0 OID 16401)
-- Dependencies: 221
-- Data for Name: peliculas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.peliculas (nombre, actor, duracion, cantidad_de_copias) FROM stdin;
mision  imposible	tom cruise	128	3
mision  imposible 2	tom cruise	130	2
mujer bonita 	julian robert	118	3
elsa y fred 	china zorrilla	120	2
\.


--
-- TOC entry 5043 (class 0 OID 16431)
-- Dependencies: 226
-- Data for Name: pelis; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pelis (codigo, titulo, actor, duracion) FROM stdin;
1	Mision imposible	Tom Cruise	120
2	Harry Potter y la piedra filosofal	\N	180
5	Mujer bonita	R. Gere-J. Roberts	0
3	Harry Potter y la camara secreta	Daniel R.	120
0	Mision imposible 2	Desconocido	150
\.


--
-- TOC entry 5036 (class 0 OID 16392)
-- Dependencies: 219
-- Data for Name: usuarios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuarios (nombre, clave) FROM stdin;
mariano	payaso
juan	river
Marcelo	River
Susana	chapita
luis	realmadrid
Carlosfuentes	realmadrid
Federicolopez	realmadrid
\.


--
-- TOC entry 5044 (class 0 OID 16436)
-- Dependencies: 227
-- Data for Name: usuarioss; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuarioss (nombre, clave) FROM stdin;
juanperez	Boca
raulgarcia	River
\.


--
-- TOC entry 4888 (class 2606 OID 16441)
-- Name: usuarioss usuarioss_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarioss
    ADD CONSTRAINT usuarioss_pkey PRIMARY KEY (nombre);


-- Completed on 2025-10-14 19:28:27

--
-- PostgreSQL database dump complete
--

\unrestrict sf3vX1NbjhFGJaxSpc6eDYUBowZbYqPfJFAidaM09vFm4BqVzdbHiCZfXYDQjAU

