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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: guess_game; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.guess_game (
    guess_game_id integer NOT NULL,
    guess_count integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.guess_game OWNER TO freecodecamp;

--
-- Name: guess_game_guess_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.guess_game_guess_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.guess_game_guess_game_id_seq OWNER TO freecodecamp;

--
-- Name: guess_game_guess_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.guess_game_guess_game_id_seq OWNED BY public.guess_game.guess_game_id;


--
-- Name: t_user; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.t_user (
    user_id integer NOT NULL,
    user_name character varying(50) NOT NULL
);


ALTER TABLE public.t_user OWNER TO freecodecamp;

--
-- Name: t_user_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.t_user_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.t_user_user_id_seq OWNER TO freecodecamp;

--
-- Name: t_user_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.t_user_user_id_seq OWNED BY public.t_user.user_id;


--
-- Name: guess_game guess_game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.guess_game ALTER COLUMN guess_game_id SET DEFAULT nextval('public.guess_game_guess_game_id_seq'::regclass);


--
-- Name: t_user user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.t_user ALTER COLUMN user_id SET DEFAULT nextval('public.t_user_user_id_seq'::regclass);


--
-- Data for Name: guess_game; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.guess_game VALUES (1, 11, 1);
INSERT INTO public.guess_game VALUES (2, 11, 1);
INSERT INTO public.guess_game VALUES (3, 855, 2);
INSERT INTO public.guess_game VALUES (4, 660, 2);
INSERT INTO public.guess_game VALUES (5, 997, 3);
INSERT INTO public.guess_game VALUES (6, 313, 3);
INSERT INTO public.guess_game VALUES (7, 147, 2);
INSERT INTO public.guess_game VALUES (8, 408, 2);
INSERT INTO public.guess_game VALUES (9, 153, 2);
INSERT INTO public.guess_game VALUES (10, 954, 4);
INSERT INTO public.guess_game VALUES (11, 921, 4);
INSERT INTO public.guess_game VALUES (12, 406, 5);
INSERT INTO public.guess_game VALUES (13, 886, 5);
INSERT INTO public.guess_game VALUES (14, 722, 4);
INSERT INTO public.guess_game VALUES (15, 932, 4);
INSERT INTO public.guess_game VALUES (16, 44, 4);
INSERT INTO public.guess_game VALUES (17, 140, 6);
INSERT INTO public.guess_game VALUES (18, 257, 6);
INSERT INTO public.guess_game VALUES (19, 548, 7);
INSERT INTO public.guess_game VALUES (20, 998, 7);
INSERT INTO public.guess_game VALUES (21, 702, 6);
INSERT INTO public.guess_game VALUES (22, 681, 6);
INSERT INTO public.guess_game VALUES (23, 107, 6);
INSERT INTO public.guess_game VALUES (24, 8, 1);
INSERT INTO public.guess_game VALUES (25, 12, 1);
INSERT INTO public.guess_game VALUES (26, 650, 14);
INSERT INTO public.guess_game VALUES (27, 751, 14);
INSERT INTO public.guess_game VALUES (28, 833, 15);
INSERT INTO public.guess_game VALUES (29, 140, 15);
INSERT INTO public.guess_game VALUES (30, 518, 14);
INSERT INTO public.guess_game VALUES (31, 143, 14);
INSERT INTO public.guess_game VALUES (32, 811, 14);
INSERT INTO public.guess_game VALUES (33, 591, 16);
INSERT INTO public.guess_game VALUES (34, 747, 16);
INSERT INTO public.guess_game VALUES (35, 312, 17);
INSERT INTO public.guess_game VALUES (36, 651, 17);
INSERT INTO public.guess_game VALUES (37, 388, 16);
INSERT INTO public.guess_game VALUES (38, 486, 16);
INSERT INTO public.guess_game VALUES (39, 724, 16);
INSERT INTO public.guess_game VALUES (40, 17, 1);
INSERT INTO public.guess_game VALUES (41, 484, 18);
INSERT INTO public.guess_game VALUES (42, 269, 18);
INSERT INTO public.guess_game VALUES (43, 826, 19);
INSERT INTO public.guess_game VALUES (44, 469, 19);
INSERT INTO public.guess_game VALUES (45, 872, 18);
INSERT INTO public.guess_game VALUES (46, 31, 18);
INSERT INTO public.guess_game VALUES (47, 132, 18);
INSERT INTO public.guess_game VALUES (48, 12, 1);
INSERT INTO public.guess_game VALUES (49, 397, 21);
INSERT INTO public.guess_game VALUES (50, 119, 21);
INSERT INTO public.guess_game VALUES (51, 316, 22);
INSERT INTO public.guess_game VALUES (52, 693, 22);
INSERT INTO public.guess_game VALUES (53, 86, 21);
INSERT INTO public.guess_game VALUES (54, 238, 21);
INSERT INTO public.guess_game VALUES (55, 938, 21);
INSERT INTO public.guess_game VALUES (56, 937, 23);
INSERT INTO public.guess_game VALUES (57, 43, 23);
INSERT INTO public.guess_game VALUES (58, 128, 24);
INSERT INTO public.guess_game VALUES (59, 798, 24);
INSERT INTO public.guess_game VALUES (60, 73, 23);
INSERT INTO public.guess_game VALUES (61, 943, 23);
INSERT INTO public.guess_game VALUES (62, 342, 23);
INSERT INTO public.guess_game VALUES (63, 371, 25);
INSERT INTO public.guess_game VALUES (64, 977, 25);
INSERT INTO public.guess_game VALUES (65, 600, 26);
INSERT INTO public.guess_game VALUES (66, 291, 26);
INSERT INTO public.guess_game VALUES (67, 994, 25);
INSERT INTO public.guess_game VALUES (68, 191, 25);
INSERT INTO public.guess_game VALUES (69, 198, 25);
INSERT INTO public.guess_game VALUES (70, 367, 27);
INSERT INTO public.guess_game VALUES (71, 221, 27);
INSERT INTO public.guess_game VALUES (72, 70, 28);
INSERT INTO public.guess_game VALUES (73, 831, 28);
INSERT INTO public.guess_game VALUES (74, 1002, 27);
INSERT INTO public.guess_game VALUES (75, 373, 27);
INSERT INTO public.guess_game VALUES (76, 283, 27);


--
-- Data for Name: t_user; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.t_user VALUES (1, 'tom');
INSERT INTO public.t_user VALUES (2, 'user_1671499394364');
INSERT INTO public.t_user VALUES (3, 'user_1671499394363');
INSERT INTO public.t_user VALUES (4, 'user_1671499526910');
INSERT INTO public.t_user VALUES (5, 'user_1671499526909');
INSERT INTO public.t_user VALUES (6, 'user_1671499559477');
INSERT INTO public.t_user VALUES (7, 'user_1671499559476');
INSERT INTO public.t_user VALUES (8, 'user_1671499905872');
INSERT INTO public.t_user VALUES (9, 'user_1671499905871');
INSERT INTO public.t_user VALUES (10, 'user_1671499941968');
INSERT INTO public.t_user VALUES (11, 'user_1671499941967');
INSERT INTO public.t_user VALUES (12, 't');
INSERT INTO public.t_user VALUES (13, '');
INSERT INTO public.t_user VALUES (14, 'user_1671501748898');
INSERT INTO public.t_user VALUES (15, 'user_1671501748897');
INSERT INTO public.t_user VALUES (16, 'user_1671501823943');
INSERT INTO public.t_user VALUES (17, 'user_1671501823942');
INSERT INTO public.t_user VALUES (18, 'user_1671502109135');
INSERT INTO public.t_user VALUES (19, 'user_1671502109134');
INSERT INTO public.t_user VALUES (20, 'toom');
INSERT INTO public.t_user VALUES (21, 'user_1671502426578');
INSERT INTO public.t_user VALUES (22, 'user_1671502426577');
INSERT INTO public.t_user VALUES (23, 'user_1671502464987');
INSERT INTO public.t_user VALUES (24, 'user_1671502464986');
INSERT INTO public.t_user VALUES (25, 'user_1671502508699');
INSERT INTO public.t_user VALUES (26, 'user_1671502508698');
INSERT INTO public.t_user VALUES (27, 'user_1671502525937');
INSERT INTO public.t_user VALUES (28, 'user_1671502525936');


--
-- Name: guess_game_guess_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.guess_game_guess_game_id_seq', 76, true);


--
-- Name: t_user_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.t_user_user_id_seq', 28, true);


--
-- Name: guess_game guess_game_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.guess_game
    ADD CONSTRAINT guess_game_pkey PRIMARY KEY (guess_game_id);


--
-- Name: t_user t_user_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.t_user
    ADD CONSTRAINT t_user_pkey PRIMARY KEY (user_id);


--
-- Name: t_user t_user_user_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.t_user
    ADD CONSTRAINT t_user_user_name_key UNIQUE (user_name);


--
-- Name: guess_game guess_game_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.guess_game
    ADD CONSTRAINT guess_game_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.t_user(user_id);


--
-- PostgreSQL database dump complete
--


