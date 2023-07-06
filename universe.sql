--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    distance integer,
    radius integer,
    wieght numeric(4,1),
    c5 integer,
    c6 integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_c6_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_c6_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_c6_seq OWNER TO freecodecamp;

--
-- Name: galaxy_c6_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_c6_seq OWNED BY public.galaxy.c6;


--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20),
    description text,
    planet_id integer,
    c5 integer,
    c6 integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_c6_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_c6_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_c6_seq OWNER TO freecodecamp;

--
-- Name: moon_c6_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_c6_seq OWNED BY public.moon.c6;


--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20),
    has_life boolean,
    star_id integer,
    c5 integer,
    c6 integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_c6_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_c6_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_c6_seq OWNER TO freecodecamp;

--
-- Name: planet_c6_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_c6_seq OWNED BY public.planet.c6;


--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20),
    is_shining boolean,
    galaxy_id integer,
    c5 integer,
    c6 integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_c6_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_c6_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_c6_seq OWNER TO freecodecamp;

--
-- Name: star_c6_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_c6_seq OWNED BY public.star.c6;


--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: youpi; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.youpi (
    youpi_id integer NOT NULL,
    name character varying(20),
    bold character varying(20),
    italic character varying(20),
    ko character varying(20),
    bb3 integer NOT NULL
);


ALTER TABLE public.youpi OWNER TO freecodecamp;

--
-- Name: youpi_bb3_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.youpi_bb3_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.youpi_bb3_seq OWNER TO freecodecamp;

--
-- Name: youpi_bb3_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.youpi_bb3_seq OWNED BY public.youpi.bb3;


--
-- Name: youpi_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.youpi_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.youpi_id_seq OWNER TO freecodecamp;

--
-- Name: youpi_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.youpi_id_seq OWNED BY public.youpi.youpi_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: galaxy c6; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN c6 SET DEFAULT nextval('public.galaxy_c6_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: moon c6; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN c6 SET DEFAULT nextval('public.moon_c6_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: planet c6; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN c6 SET DEFAULT nextval('public.planet_c6_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Name: star c6; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN c6 SET DEFAULT nextval('public.star_c6_seq'::regclass);


--
-- Name: youpi youpi_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.youpi ALTER COLUMN youpi_id SET DEFAULT nextval('public.youpi_id_seq'::regclass);


--
-- Name: youpi bb3; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.youpi ALTER COLUMN bb3 SET DEFAULT nextval('public.youpi_bb3_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Sirius', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.galaxy VALUES (2, 'alpha centaury', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.galaxy VALUES (3, 'omega', NULL, NULL, NULL, NULL, 3);
INSERT INTO public.galaxy VALUES (4, 'name4', NULL, NULL, NULL, NULL, 4);
INSERT INTO public.galaxy VALUES (5, 'name5', NULL, NULL, NULL, NULL, 5);
INSERT INTO public.galaxy VALUES (6, 'name6', NULL, NULL, NULL, NULL, 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', NULL, 1, NULL, 1);
INSERT INTO public.moon VALUES (2, 'moon2', NULL, 2, NULL, 2);
INSERT INTO public.moon VALUES (3, 'moon3', NULL, 3, NULL, 3);
INSERT INTO public.moon VALUES (4, 'p4', NULL, 1, NULL, 4);
INSERT INTO public.moon VALUES (5, 'p5', NULL, 1, NULL, 5);
INSERT INTO public.moon VALUES (6, 'p6', NULL, 1, NULL, 6);
INSERT INTO public.moon VALUES (7, 'P7', NULL, 2, NULL, 7);
INSERT INTO public.moon VALUES (8, 'p_', NULL, 2, NULL, 8);
INSERT INTO public.moon VALUES (9, 'p9', NULL, 3, NULL, 9);
INSERT INTO public.moon VALUES (10, 'p10', NULL, 2, NULL, 10);
INSERT INTO public.moon VALUES (11, 'p11', NULL, 1, NULL, 11);
INSERT INTO public.moon VALUES (12, 'p12', NULL, 3, NULL, 12);
INSERT INTO public.moon VALUES (13, 'p4', NULL, 1, NULL, 13);
INSERT INTO public.moon VALUES (14, 'p5', NULL, 1, NULL, 14);
INSERT INTO public.moon VALUES (15, 'p6', NULL, 1, NULL, 15);
INSERT INTO public.moon VALUES (16, 'P7', NULL, 2, NULL, 16);
INSERT INTO public.moon VALUES (17, 'p_', NULL, 2, NULL, 17);
INSERT INTO public.moon VALUES (18, 'p9', NULL, 3, NULL, 18);
INSERT INTO public.moon VALUES (19, 'p10', NULL, 2, NULL, 19);
INSERT INTO public.moon VALUES (20, 'p11', NULL, 1, NULL, 20);
INSERT INTO public.moon VALUES (21, 'p12', NULL, 3, NULL, 21);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planet1', NULL, 1, NULL, 1);
INSERT INTO public.planet VALUES (2, 'planet2', NULL, 2, NULL, 2);
INSERT INTO public.planet VALUES (3, 'planet3', NULL, 3, NULL, 3);
INSERT INTO public.planet VALUES (4, 'p4', NULL, 1, NULL, 4);
INSERT INTO public.planet VALUES (5, 'p5', NULL, 1, NULL, 5);
INSERT INTO public.planet VALUES (6, 'p6', NULL, 1, NULL, 6);
INSERT INTO public.planet VALUES (7, 'P7', NULL, 2, NULL, 7);
INSERT INTO public.planet VALUES (8, 'p_', NULL, 2, NULL, 8);
INSERT INTO public.planet VALUES (9, 'p9', NULL, 3, NULL, 9);
INSERT INTO public.planet VALUES (10, 'p10', NULL, 2, NULL, 10);
INSERT INTO public.planet VALUES (11, 'p11', NULL, 1, NULL, 11);
INSERT INTO public.planet VALUES (12, 'p12', NULL, 3, NULL, 12);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Star1', NULL, 1, NULL, 1);
INSERT INTO public.star VALUES (2, 'Star2', NULL, 2, NULL, 2);
INSERT INTO public.star VALUES (3, 'Star3', NULL, 3, NULL, 3);
INSERT INTO public.star VALUES (4, 'name4', NULL, NULL, NULL, 4);
INSERT INTO public.star VALUES (5, 'name5', NULL, NULL, NULL, 5);
INSERT INTO public.star VALUES (6, 'name6', NULL, NULL, NULL, 6);


--
-- Data for Name: youpi; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.youpi VALUES (1, 'name1', NULL, NULL, NULL, 1);
INSERT INTO public.youpi VALUES (2, 'name2', NULL, NULL, NULL, 2);
INSERT INTO public.youpi VALUES (3, 'name3', NULL, NULL, NULL, 3);


--
-- Name: galaxy_c6_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_c6_seq', 6, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_c6_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_c6_seq', 21, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 21, true);


--
-- Name: planet_c6_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_c6_seq', 12, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 12, true);


--
-- Name: star_c6_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_c6_seq', 6, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


--
-- Name: youpi_bb3_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.youpi_bb3_seq', 3, true);


--
-- Name: youpi_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.youpi_id_seq', 3, true);


--
-- Name: galaxy galaxy_c5_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_c5_key UNIQUE (c5);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_c5_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_c5_key UNIQUE (c5);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_c5_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_c5_key UNIQUE (c5);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_c5_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_c5_key UNIQUE (c5);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: youpi youpi_ko_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.youpi
    ADD CONSTRAINT youpi_ko_key UNIQUE (ko);


--
-- Name: youpi youpi_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.youpi
    ADD CONSTRAINT youpi_pkey PRIMARY KEY (youpi_id);


--
-- Name: moon moon_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

