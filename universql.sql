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
-- Name: demo; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.demo (
    demo_id integer NOT NULL,
    status boolean,
    about text,
    name character varying(60),
    color character varying(60) NOT NULL
);


ALTER TABLE public.demo OWNER TO freecodecamp;

--
-- Name: demo_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.demo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.demo_id_seq OWNER TO freecodecamp;

--
-- Name: demo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.demo_id_seq OWNED BY public.demo.demo_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(60),
    x integer,
    y numeric(4,2),
    about text,
    status boolean,
    color character varying(60) NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

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
    name character varying(60),
    x integer,
    y numeric(4,2),
    about text,
    status boolean,
    planet_id integer,
    color character varying(60) NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

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
    name character varying(60),
    x integer,
    y numeric(4,2),
    about text,
    status boolean,
    star_id integer,
    color character varying(60) NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

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
    name character varying(60),
    x integer,
    y numeric(4,2),
    about text,
    status boolean,
    color character varying(60) NOT NULL,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

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
-- Name: demo demo_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.demo ALTER COLUMN demo_id SET DEFAULT nextval('public.demo_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: demo; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.demo VALUES (1, NULL, NULL, 'how-demo', '1');
INSERT INTO public.demo VALUES (2, NULL, NULL, 'how-demo', '2');
INSERT INTO public.demo VALUES (3, NULL, NULL, 'how-demo', '3');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (2, 'how', NULL, NULL, NULL, NULL, '1');
INSERT INTO public.galaxy VALUES (3, 'how-star', NULL, NULL, NULL, NULL, '5');
INSERT INTO public.galaxy VALUES (4, 'how-star', NULL, NULL, NULL, NULL, '4');
INSERT INTO public.galaxy VALUES (5, 'how-star', NULL, NULL, NULL, NULL, '3');
INSERT INTO public.galaxy VALUES (6, 'how-star', NULL, NULL, NULL, NULL, '2');
INSERT INTO public.galaxy VALUES (8, 'how-star', NULL, NULL, NULL, NULL, '8');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'how-moon', NULL, NULL, NULL, NULL, 2, '1');
INSERT INTO public.moon VALUES (2, 'how-star', NULL, NULL, NULL, NULL, 2, '2');
INSERT INTO public.moon VALUES (3, 'how-star', NULL, NULL, NULL, NULL, 2, '3');
INSERT INTO public.moon VALUES (4, 'how-star', NULL, NULL, NULL, NULL, 2, '4');
INSERT INTO public.moon VALUES (5, 'how-star', NULL, NULL, NULL, NULL, 2, '5');
INSERT INTO public.moon VALUES (6, 'how-star', NULL, NULL, NULL, NULL, 2, '6');
INSERT INTO public.moon VALUES (7, 'how-star', NULL, NULL, NULL, NULL, 2, '7');
INSERT INTO public.moon VALUES (8, 'how-star', NULL, NULL, NULL, NULL, 2, '8');
INSERT INTO public.moon VALUES (9, 'how-star', NULL, NULL, NULL, NULL, 2, '9');
INSERT INTO public.moon VALUES (10, 'how-star', NULL, NULL, NULL, NULL, 2, '10');
INSERT INTO public.moon VALUES (11, 'how-star', NULL, NULL, NULL, NULL, 2, '11');
INSERT INTO public.moon VALUES (12, 'how-star', NULL, NULL, NULL, NULL, 2, '12');
INSERT INTO public.moon VALUES (13, 'how-star', NULL, NULL, NULL, NULL, 2, '13');
INSERT INTO public.moon VALUES (14, 'how-star', NULL, NULL, NULL, NULL, 2, '14');
INSERT INTO public.moon VALUES (15, 'how-star', NULL, NULL, NULL, NULL, 2, '15');
INSERT INTO public.moon VALUES (16, 'how-star', NULL, NULL, NULL, NULL, 2, '16');
INSERT INTO public.moon VALUES (17, 'how-star', NULL, NULL, NULL, NULL, 2, '17');
INSERT INTO public.moon VALUES (18, 'how-star', NULL, NULL, NULL, NULL, 2, '18');
INSERT INTO public.moon VALUES (19, 'how-star', NULL, NULL, NULL, NULL, 2, '19');
INSERT INTO public.moon VALUES (20, 'how-star', NULL, NULL, NULL, NULL, 2, '20');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 'how-planet', NULL, NULL, NULL, NULL, 2, '1');
INSERT INTO public.planet VALUES (3, 'how-star', NULL, NULL, NULL, NULL, 2, '3');
INSERT INTO public.planet VALUES (4, 'how-star', NULL, NULL, NULL, NULL, 2, '4');
INSERT INTO public.planet VALUES (5, 'how-star', NULL, NULL, NULL, NULL, 2, '5');
INSERT INTO public.planet VALUES (6, 'how-star', NULL, NULL, NULL, NULL, 2, '6');
INSERT INTO public.planet VALUES (7, 'how-star', NULL, NULL, NULL, NULL, 2, '7');
INSERT INTO public.planet VALUES (8, 'how-star', NULL, NULL, NULL, NULL, 2, '8');
INSERT INTO public.planet VALUES (9, 'how-star', NULL, NULL, NULL, NULL, 2, '9');
INSERT INTO public.planet VALUES (10, 'how-star', NULL, NULL, NULL, NULL, 2, '10');
INSERT INTO public.planet VALUES (11, 'how-star', NULL, NULL, NULL, NULL, 2, '11');
INSERT INTO public.planet VALUES (12, 'how-star', NULL, NULL, NULL, NULL, 2, '12');
INSERT INTO public.planet VALUES (13, 'how-star', NULL, NULL, NULL, NULL, 2, '13');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'how-star', NULL, NULL, NULL, NULL, '1', 2);
INSERT INTO public.star VALUES (3, 'how-star', NULL, NULL, NULL, NULL, '2', 2);
INSERT INTO public.star VALUES (4, 'how-star', NULL, NULL, NULL, NULL, '3', 2);
INSERT INTO public.star VALUES (5, 'how-star', NULL, NULL, NULL, NULL, '4', 2);
INSERT INTO public.star VALUES (6, 'how-star', NULL, NULL, NULL, NULL, '5', 2);
INSERT INTO public.star VALUES (7, 'how-star', NULL, NULL, NULL, NULL, '6', 2);


--
-- Name: demo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.demo_id_seq', 3, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 8, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 20, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 13, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 7, true);


--
-- Name: demo demo_color_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.demo
    ADD CONSTRAINT demo_color_key UNIQUE (color);


--
-- Name: demo demo_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.demo
    ADD CONSTRAINT demo_pkey PRIMARY KEY (demo_id);


--
-- Name: galaxy galaxy_color_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_color_key UNIQUE (color);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_color_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_color_key UNIQUE (color);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_color_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_color_key UNIQUE (color);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_color_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_color_key UNIQUE (color);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--


