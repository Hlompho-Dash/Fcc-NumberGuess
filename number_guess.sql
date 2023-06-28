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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    player_id integer NOT NULL,
    target integer NOT NULL,
    moves integer NOT NULL
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
-- Name: players; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.players (
    player_id integer NOT NULL,
    player_name character varying(22) NOT NULL
);


ALTER TABLE public.players OWNER TO freecodecamp;

--
-- Name: players_player_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.players_player_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.players_player_id_seq OWNER TO freecodecamp;

--
-- Name: players_player_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.players_player_id_seq OWNED BY public.players.player_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: players player_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players ALTER COLUMN player_id SET DEFAULT nextval('public.players_player_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (2, 2, 728, 11);
INSERT INTO public.games VALUES (3, 3, 532, 533);
INSERT INTO public.games VALUES (4, 4, 248, 249);
INSERT INTO public.games VALUES (5, 5, 973, 974);
INSERT INTO public.games VALUES (6, 6, 225, 226);
INSERT INTO public.games VALUES (7, 7, 691, 692);
INSERT INTO public.games VALUES (8, 8, 393, 394);
INSERT INTO public.games VALUES (9, 9, 375, 376);
INSERT INTO public.games VALUES (10, 10, 435, 436);
INSERT INTO public.games VALUES (11, 11, 506, 507);
INSERT INTO public.games VALUES (12, 12, 194, 195);
INSERT INTO public.games VALUES (13, 13, 692, 693);
INSERT INTO public.games VALUES (14, 14, 512, 513);
INSERT INTO public.games VALUES (15, 15, 28, 10);
INSERT INTO public.games VALUES (16, 16, 111, 112);
INSERT INTO public.games VALUES (17, 17, 170, 171);
INSERT INTO public.games VALUES (18, 18, 953, 954);
INSERT INTO public.games VALUES (19, 19, 890, 891);
INSERT INTO public.games VALUES (20, 20, 638, 14);
INSERT INTO public.games VALUES (21, 21, 779, 780);
INSERT INTO public.games VALUES (22, 22, 150, 151);
INSERT INTO public.games VALUES (23, 23, 43, 44);
INSERT INTO public.games VALUES (24, 24, 515, 516);
INSERT INTO public.games VALUES (25, 25, 527, 528);
INSERT INTO public.games VALUES (26, 26, 392, 393);
INSERT INTO public.games VALUES (27, 27, 662, 663);
INSERT INTO public.games VALUES (28, 28, 275, 276);
INSERT INTO public.games VALUES (29, 29, 8, 9);
INSERT INTO public.games VALUES (30, 30, 812, 813);
INSERT INTO public.games VALUES (31, 31, 276, 277);
INSERT INTO public.games VALUES (32, 32, 792, 793);
INSERT INTO public.games VALUES (33, 33, 697, 698);
INSERT INTO public.games VALUES (34, 35, 971, 972);
INSERT INTO public.games VALUES (35, 40, 754, 755);
INSERT INTO public.games VALUES (36, 41, 41, 42);
INSERT INTO public.games VALUES (37, 42, 250, 251);
INSERT INTO public.games VALUES (38, 43, 436, 437);
INSERT INTO public.games VALUES (39, 44, 265, 266);
INSERT INTO public.games VALUES (40, 45, 132, 133);
INSERT INTO public.games VALUES (41, 46, 69, 70);
INSERT INTO public.games VALUES (42, 47, 613, 614);
INSERT INTO public.games VALUES (43, 48, 83, 84);
INSERT INTO public.games VALUES (44, 49, 283, 284);
INSERT INTO public.games VALUES (45, 50, 639, 640);
INSERT INTO public.games VALUES (46, 51, 910, 911);
INSERT INTO public.games VALUES (47, 52, 977, 978);
INSERT INTO public.games VALUES (48, 53, 311, 312);
INSERT INTO public.games VALUES (49, 54, 519, 12);
INSERT INTO public.games VALUES (50, 55, 789, 790);
INSERT INTO public.games VALUES (51, 56, 516, 517);


--
-- Data for Name: players; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.players VALUES (2, 'DASH');
INSERT INTO public.players VALUES (3, 'user_1687973896385');
INSERT INTO public.players VALUES (4, 'user_1687973896384');
INSERT INTO public.players VALUES (5, 'user_1687973934713');
INSERT INTO public.players VALUES (6, 'user_1687973934712');
INSERT INTO public.players VALUES (7, 'user_1687973953099');
INSERT INTO public.players VALUES (8, 'user_1687973953098');
INSERT INTO public.players VALUES (9, 'user_1687974005090');
INSERT INTO public.players VALUES (10, 'user_1687974005089');
INSERT INTO public.players VALUES (11, 'user_1687974035012');
INSERT INTO public.players VALUES (12, 'user_1687974035011');
INSERT INTO public.players VALUES (13, 'user_1687974061636');
INSERT INTO public.players VALUES (14, 'user_1687974061635');
INSERT INTO public.players VALUES (15, 'DAVE');
INSERT INTO public.players VALUES (16, 'user_1687974383507');
INSERT INTO public.players VALUES (17, 'user_1687974383506');
INSERT INTO public.players VALUES (18, 'user_1687974501351');
INSERT INTO public.players VALUES (19, 'user_1687974501350');
INSERT INTO public.players VALUES (20, 'DAWG');
INSERT INTO public.players VALUES (21, 'user_1687975838449');
INSERT INTO public.players VALUES (22, 'user_1687975838448');
INSERT INTO public.players VALUES (23, 'user_1687975942410');
INSERT INTO public.players VALUES (24, 'user_1687975942409');
INSERT INTO public.players VALUES (25, 'user_1687976102722');
INSERT INTO public.players VALUES (26, 'user_1687976102721');
INSERT INTO public.players VALUES (27, 'user_1687976131189');
INSERT INTO public.players VALUES (28, 'user_1687976131188');
INSERT INTO public.players VALUES (29, 'user_1687976153635');
INSERT INTO public.players VALUES (30, 'user_1687976153634');
INSERT INTO public.players VALUES (31, 'user_1687976254230');
INSERT INTO public.players VALUES (32, 'user_1687976254229');
INSERT INTO public.players VALUES (33, 'user_1687976377044');
INSERT INTO public.players VALUES (34, 'user_1687976377044');
INSERT INTO public.players VALUES (35, 'user_1687976377043');
INSERT INTO public.players VALUES (36, 'user_1687976377043');
INSERT INTO public.players VALUES (37, 'user_1687976377044');
INSERT INTO public.players VALUES (38, 'user_1687976377044');
INSERT INTO public.players VALUES (39, 'user_1687976377044');
INSERT INTO public.players VALUES (40, 'user_1687976410591');
INSERT INTO public.players VALUES (41, 'user_1687976410590');
INSERT INTO public.players VALUES (42, 'user_1687976440644');
INSERT INTO public.players VALUES (43, 'user_1687976440643');
INSERT INTO public.players VALUES (44, 'user_1687976527264');
INSERT INTO public.players VALUES (45, 'user_1687976527263');
INSERT INTO public.players VALUES (46, 'user_1687976567730');
INSERT INTO public.players VALUES (47, 'user_1687976567729');
INSERT INTO public.players VALUES (48, 'user_1687976584320');
INSERT INTO public.players VALUES (49, 'user_1687976584319');
INSERT INTO public.players VALUES (50, 'user_1687976656446');
INSERT INTO public.players VALUES (51, 'user_1687976656445');
INSERT INTO public.players VALUES (52, 'user_1687976678159');
INSERT INTO public.players VALUES (53, 'user_1687976678158');
INSERT INTO public.players VALUES (54, 'TOPOLLO');
INSERT INTO public.players VALUES (55, 'user_1687977478279');
INSERT INTO public.players VALUES (56, 'user_1687977478278');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 51, true);


--
-- Name: players_player_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.players_player_id_seq', 56, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: players players_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT players_pkey PRIMARY KEY (player_id);


--
-- Name: games player_game_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT player_game_fk FOREIGN KEY (player_id) REFERENCES public.players(player_id);


--
-- PostgreSQL database dump complete
--

