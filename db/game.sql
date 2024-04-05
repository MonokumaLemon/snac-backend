--
-- PostgreSQL database dump
--

-- Dumped from database version 16.2
-- Dumped by pg_dump version 16.2

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
-- Name: player; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.player (
    "playerID" integer NOT NULL,
    vorname character varying(10) NOT NULL,
    nachname character varying(10) NOT NULL,
    score integer NOT NULL
);


ALTER TABLE public.player OWNER TO postgres;

--
-- Name: User_userid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."User_userid_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."User_userid_seq" OWNER TO postgres;

--
-- Name: User_userid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."User_userid_seq" OWNED BY public.player."playerID";


--
-- Name: player playerID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.player ALTER COLUMN "playerID" SET DEFAULT nextval('public."User_userid_seq"'::regclass);


--
-- Data for Name: player; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.player ("playerID", vorname, nachname, score) FROM stdin;
1	Max	Musterman	500
2	Joker	X	420
3	Marilyn	Ritter	200
4	Zida	Portillo	1000
5	Oisin	Rachael	782
6	Swa	Kourtney	235
7	Paloma	Primrose	631
8	Dolan	Lubna	265
9	Asif	Sharple	362
10	Milly	Lilith	742
11	Humz	Cordelia	47
12	Jaxx	Saqib	437
13	Broadhurst	Knights	216
14	Ammaa	Elaine	346
15	Ruby	Viktor	262
16	Perr	Laiba	798
\.


--
-- Name: User_userid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."User_userid_seq"', 16, true);


--
-- Name: player user_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.player
    ADD CONSTRAINT user_pk PRIMARY KEY ("playerID");


--
-- PostgreSQL database dump complete
--

