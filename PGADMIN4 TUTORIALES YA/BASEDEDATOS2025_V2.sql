--
-- PostgreSQL database dump
--

\restrict 1uzLgYgGza0HT3MqRDXgHwi3W1wsMBIRBmIWu2QrhRVgdv3kOGTX0fFf4vrLfcU

-- Dumped from database version 18.0
-- Dumped by pg_dump version 18.0

-- Started on 2025-10-07 20:02:47

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
-- TOC entry 223 (class 1259 OID 16413)
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
-- TOC entry 221 (class 1259 OID 16398)
-- Name: libros; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.libros (
    titulo character varying(20),
    autor character varying(30),
    editorial character varying(15)
);


ALTER TABLE public.libros OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16401)
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
-- TOC entry 219 (class 1259 OID 16392)
-- Name: usuarios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuarios (
    nombre character varying(30),
    clave character varying(12)
);


ALTER TABLE public.usuarios OWNER TO postgres;

--
-- TOC entry 5019 (class 0 OID 16395)
-- Dependencies: 220
-- Data for Name: agenda; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.agenda (apellido, nombre, domicilio, telefono) FROM stdin;
moreno	alberto	colon 123	4234567
torres	juan	avellaneda 125	4458787
\.


--
-- TOC entry 5022 (class 0 OID 16413)
-- Dependencies: 223
-- Data for Name: empleados; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.empleados (nombre, documento, sexo, domicilio, sueldobasico) FROM stdin;
juan perez	22333444	M	sarmiento123	500
ana acosta	24555666	F	colon 123	650
bartolomeo barrios	27888999	M	urquiza 497	800
\.


--
-- TOC entry 5020 (class 0 OID 16398)
-- Dependencies: 221
-- Data for Name: libros; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.libros (titulo, autor, editorial) FROM stdin;
El aleph	borge	planeta
Martin fierro	jose hermandez	emece
aprenda PHP	Mario molina	emece
\.


--
-- TOC entry 5021 (class 0 OID 16401)
-- Dependencies: 222
-- Data for Name: peliculas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.peliculas (nombre, actor, duracion, cantidad_de_copias) FROM stdin;
mision  imposible	tom cruise	128	3
mision  imposible 2	tom cruise	130	2
mujer bonita 	julian robert	118	3
elsa y fred 	china zorrilla	120	2
\.


--
-- TOC entry 5018 (class 0 OID 16392)
-- Dependencies: 219
-- Data for Name: usuarios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuarios (nombre, clave) FROM stdin;
mariano	payaso
juan	river
luis	boca
\.


-- Completed on 2025-10-07 20:02:47

--
-- PostgreSQL database dump complete
--

\unrestrict 1uzLgYgGza0HT3MqRDXgHwi3W1wsMBIRBmIWu2QrhRVgdv3kOGTX0fFf4vrLfcU

