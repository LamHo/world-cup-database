--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    year integer NOT NULL,
    round character varying(40) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
    team_id integer NOT NULL,
    name character varying(40) NOT NULL
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

INSERT INTO public.games VALUES (61, 2018, 'Final', 171, 172, 4, 2);
INSERT INTO public.games VALUES (62, 2018, 'Third Place', 173, 174, 2, 0);
INSERT INTO public.games VALUES (63, 2018, 'Semi-Final', 172, 174, 2, 1);
INSERT INTO public.games VALUES (64, 2018, 'Semi-Final', 171, 173, 1, 0);
INSERT INTO public.games VALUES (65, 2018, 'Quarter-Final', 172, 175, 3, 2);
INSERT INTO public.games VALUES (66, 2018, 'Quarter-Final', 174, 176, 2, 0);
INSERT INTO public.games VALUES (67, 2018, 'Quarter-Final', 173, 177, 2, 1);
INSERT INTO public.games VALUES (68, 2018, 'Quarter-Final', 171, 178, 2, 0);
INSERT INTO public.games VALUES (69, 2018, 'Eighth-Final', 174, 179, 2, 1);
INSERT INTO public.games VALUES (70, 2018, 'Eighth-Final', 176, 180, 1, 0);
INSERT INTO public.games VALUES (71, 2018, 'Eighth-Final', 173, 181, 3, 2);
INSERT INTO public.games VALUES (72, 2018, 'Eighth-Final', 177, 182, 2, 0);
INSERT INTO public.games VALUES (73, 2018, 'Eighth-Final', 172, 183, 2, 1);
INSERT INTO public.games VALUES (74, 2018, 'Eighth-Final', 175, 184, 2, 1);
INSERT INTO public.games VALUES (75, 2018, 'Eighth-Final', 178, 185, 2, 1);
INSERT INTO public.games VALUES (76, 2018, 'Eighth-Final', 171, 186, 4, 3);
INSERT INTO public.games VALUES (77, 2014, 'Final', 187, 186, 1, 0);
INSERT INTO public.games VALUES (78, 2014, 'Third Place', 188, 177, 3, 0);
INSERT INTO public.games VALUES (79, 2014, 'Semi-Final', 186, 188, 1, 0);
INSERT INTO public.games VALUES (80, 2014, 'Semi-Final', 187, 177, 7, 1);
INSERT INTO public.games VALUES (81, 2014, 'Quarter-Final', 188, 189, 1, 0);
INSERT INTO public.games VALUES (82, 2014, 'Quarter-Final', 186, 173, 1, 0);
INSERT INTO public.games VALUES (83, 2014, 'Quarter-Final', 177, 179, 2, 1);
INSERT INTO public.games VALUES (84, 2014, 'Quarter-Final', 187, 171, 1, 0);
INSERT INTO public.games VALUES (85, 2014, 'Eighth-Final', 177, 190, 2, 1);
INSERT INTO public.games VALUES (86, 2014, 'Eighth-Final', 179, 178, 2, 0);
INSERT INTO public.games VALUES (87, 2014, 'Eighth-Final', 171, 191, 2, 0);
INSERT INTO public.games VALUES (88, 2014, 'Eighth-Final', 187, 192, 2, 1);
INSERT INTO public.games VALUES (89, 2014, 'Eighth-Final', 188, 182, 2, 1);
INSERT INTO public.games VALUES (90, 2014, 'Eighth-Final', 189, 193, 2, 1);
INSERT INTO public.games VALUES (91, 2014, 'Eighth-Final', 186, 180, 1, 0);
INSERT INTO public.games VALUES (92, 2014, 'Eighth-Final', 173, 194, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (171, 'France');
INSERT INTO public.teams VALUES (172, 'Croatia');
INSERT INTO public.teams VALUES (173, 'Belgium');
INSERT INTO public.teams VALUES (174, 'England');
INSERT INTO public.teams VALUES (175, 'Russia');
INSERT INTO public.teams VALUES (176, 'Sweden');
INSERT INTO public.teams VALUES (177, 'Brazil');
INSERT INTO public.teams VALUES (178, 'Uruguay');
INSERT INTO public.teams VALUES (179, 'Colombia');
INSERT INTO public.teams VALUES (180, 'Switzerland');
INSERT INTO public.teams VALUES (181, 'Japan');
INSERT INTO public.teams VALUES (182, 'Mexico');
INSERT INTO public.teams VALUES (183, 'Denmark');
INSERT INTO public.teams VALUES (184, 'Spain');
INSERT INTO public.teams VALUES (185, 'Portugal');
INSERT INTO public.teams VALUES (186, 'Argentina');
INSERT INTO public.teams VALUES (187, 'Germany');
INSERT INTO public.teams VALUES (188, 'Netherlands');
INSERT INTO public.teams VALUES (189, 'Costa Rica');
INSERT INTO public.teams VALUES (190, 'Chile');
INSERT INTO public.teams VALUES (191, 'Nigeria');
INSERT INTO public.teams VALUES (192, 'Algeria');
INSERT INTO public.teams VALUES (193, 'Greece');
INSERT INTO public.teams VALUES (194, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 92, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 194, true);


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

