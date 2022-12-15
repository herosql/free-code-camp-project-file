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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    round character varying(60) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    year integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    name character varying(60) NOT NULL,
    team_id integer NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (421, 'Final', 183, 184, 4, 2, 2018);
INSERT INTO public.games VALUES (422, 'Third Place', 185, 186, 2, 0, 2018);
INSERT INTO public.games VALUES (423, 'Semi-Final', 184, 186, 2, 1, 2018);
INSERT INTO public.games VALUES (424, 'Semi-Final', 183, 185, 1, 0, 2018);
INSERT INTO public.games VALUES (425, 'Quarter-Final', 184, 187, 3, 2, 2018);
INSERT INTO public.games VALUES (426, 'Quarter-Final', 186, 188, 2, 0, 2018);
INSERT INTO public.games VALUES (427, 'Quarter-Final', 185, 189, 2, 1, 2018);
INSERT INTO public.games VALUES (428, 'Quarter-Final', 183, 190, 2, 0, 2018);
INSERT INTO public.games VALUES (429, 'Eighth-Final', 186, 191, 2, 1, 2018);
INSERT INTO public.games VALUES (430, 'Eighth-Final', 188, 192, 1, 0, 2018);
INSERT INTO public.games VALUES (431, 'Eighth-Final', 185, 193, 3, 2, 2018);
INSERT INTO public.games VALUES (432, 'Eighth-Final', 189, 194, 2, 0, 2018);
INSERT INTO public.games VALUES (433, 'Eighth-Final', 184, 195, 2, 1, 2018);
INSERT INTO public.games VALUES (434, 'Eighth-Final', 187, 196, 2, 1, 2018);
INSERT INTO public.games VALUES (435, 'Eighth-Final', 190, 197, 2, 1, 2018);
INSERT INTO public.games VALUES (436, 'Eighth-Final', 183, 198, 4, 3, 2018);
INSERT INTO public.games VALUES (437, 'Final', 199, 198, 1, 0, 2014);
INSERT INTO public.games VALUES (438, 'Third Place', 200, 189, 3, 0, 2014);
INSERT INTO public.games VALUES (439, 'Semi-Final', 198, 200, 1, 0, 2014);
INSERT INTO public.games VALUES (440, 'Semi-Final', 199, 189, 7, 1, 2014);
INSERT INTO public.games VALUES (441, 'Quarter-Final', 200, 201, 1, 0, 2014);
INSERT INTO public.games VALUES (442, 'Quarter-Final', 198, 185, 1, 0, 2014);
INSERT INTO public.games VALUES (443, 'Quarter-Final', 189, 191, 2, 1, 2014);
INSERT INTO public.games VALUES (444, 'Quarter-Final', 199, 183, 1, 0, 2014);
INSERT INTO public.games VALUES (445, 'Eighth-Final', 189, 202, 2, 1, 2014);
INSERT INTO public.games VALUES (446, 'Eighth-Final', 191, 190, 2, 0, 2014);
INSERT INTO public.games VALUES (447, 'Eighth-Final', 183, 203, 2, 0, 2014);
INSERT INTO public.games VALUES (448, 'Eighth-Final', 199, 204, 2, 1, 2014);
INSERT INTO public.games VALUES (449, 'Eighth-Final', 200, 194, 2, 1, 2014);
INSERT INTO public.games VALUES (450, 'Eighth-Final', 201, 205, 2, 1, 2014);
INSERT INTO public.games VALUES (451, 'Eighth-Final', 198, 192, 1, 0, 2014);
INSERT INTO public.games VALUES (452, 'Eighth-Final', 185, 206, 2, 1, 2014);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES ('France', 183);
INSERT INTO public.teams VALUES ('Croatia', 184);
INSERT INTO public.teams VALUES ('Belgium', 185);
INSERT INTO public.teams VALUES ('England', 186);
INSERT INTO public.teams VALUES ('Russia', 187);
INSERT INTO public.teams VALUES ('Sweden', 188);
INSERT INTO public.teams VALUES ('Brazil', 189);
INSERT INTO public.teams VALUES ('Uruguay', 190);
INSERT INTO public.teams VALUES ('Colombia', 191);
INSERT INTO public.teams VALUES ('Switzerland', 192);
INSERT INTO public.teams VALUES ('Japan', 193);
INSERT INTO public.teams VALUES ('Mexico', 194);
INSERT INTO public.teams VALUES ('Denmark', 195);
INSERT INTO public.teams VALUES ('Spain', 196);
INSERT INTO public.teams VALUES ('Portugal', 197);
INSERT INTO public.teams VALUES ('Argentina', 198);
INSERT INTO public.teams VALUES ('Germany', 199);
INSERT INTO public.teams VALUES ('Netherlands', 200);
INSERT INTO public.teams VALUES ('Costa Rica', 201);
INSERT INTO public.teams VALUES ('Chile', 202);
INSERT INTO public.teams VALUES ('Nigeria', 203);
INSERT INTO public.teams VALUES ('Algeria', 204);
INSERT INTO public.teams VALUES ('Greece', 205);
INSERT INTO public.teams VALUES ('United States', 206);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 452, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 206, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--


