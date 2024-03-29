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
    number_guesses integer NOT NULL,
    user_id integer
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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 17, 15);
INSERT INTO public.games VALUES (2, 652, 16);
INSERT INTO public.games VALUES (3, 636, 16);
INSERT INTO public.games VALUES (4, 620, 17);
INSERT INTO public.games VALUES (5, 447, 17);
INSERT INTO public.games VALUES (6, 455, 16);
INSERT INTO public.games VALUES (7, 906, 16);
INSERT INTO public.games VALUES (8, 555, 16);
INSERT INTO public.games VALUES (9, 358, 18);
INSERT INTO public.games VALUES (10, 176, 18);
INSERT INTO public.games VALUES (11, 517, 19);
INSERT INTO public.games VALUES (12, 425, 19);
INSERT INTO public.games VALUES (13, 978, 18);
INSERT INTO public.games VALUES (14, 142, 18);
INSERT INTO public.games VALUES (15, 988, 18);
INSERT INTO public.games VALUES (16, 9, 15);
INSERT INTO public.games VALUES (17, 397, 20);
INSERT INTO public.games VALUES (18, 933, 20);
INSERT INTO public.games VALUES (19, 909, 21);
INSERT INTO public.games VALUES (20, 222, 21);
INSERT INTO public.games VALUES (21, 85, 20);
INSERT INTO public.games VALUES (22, 917, 20);
INSERT INTO public.games VALUES (23, 963, 20);
INSERT INTO public.games VALUES (24, 848, 22);
INSERT INTO public.games VALUES (25, 329, 22);
INSERT INTO public.games VALUES (26, 521, 23);
INSERT INTO public.games VALUES (27, 444, 23);
INSERT INTO public.games VALUES (28, 705, 22);
INSERT INTO public.games VALUES (29, 388, 22);
INSERT INTO public.games VALUES (30, 386, 22);
INSERT INTO public.games VALUES (31, 676, 24);
INSERT INTO public.games VALUES (32, 781, 24);
INSERT INTO public.games VALUES (33, 141, 25);
INSERT INTO public.games VALUES (34, 182, 25);
INSERT INTO public.games VALUES (35, 76, 24);
INSERT INTO public.games VALUES (36, 907, 24);
INSERT INTO public.games VALUES (37, 381, 24);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 's');
INSERT INTO public.users VALUES (2, 'd');
INSERT INTO public.users VALUES (3, 'user_1669589862919');
INSERT INTO public.users VALUES (4, 'user_1669589862918');
INSERT INTO public.users VALUES (5, 'user_1669589897921');
INSERT INTO public.users VALUES (6, 'user_1669589897920');
INSERT INTO public.users VALUES (7, 'user_1669589924495');
INSERT INTO public.users VALUES (8, 'user_1669589924494');
INSERT INTO public.users VALUES (9, 'user_1669590015831');
INSERT INTO public.users VALUES (10, 'user_1669590015830');
INSERT INTO public.users VALUES (11, 'user_1669590043812');
INSERT INTO public.users VALUES (12, 'user_1669590043811');
INSERT INTO public.users VALUES (13, 'user_1669590435257');
INSERT INTO public.users VALUES (14, 'user_1669590435256');
INSERT INTO public.users VALUES (15, 'M');
INSERT INTO public.users VALUES (16, 'user_1669591039383');
INSERT INTO public.users VALUES (17, 'user_1669591039382');
INSERT INTO public.users VALUES (18, 'user_1669591162016');
INSERT INTO public.users VALUES (19, 'user_1669591162015');
INSERT INTO public.users VALUES (20, 'user_1669591314940');
INSERT INTO public.users VALUES (21, 'user_1669591314939');
INSERT INTO public.users VALUES (22, 'user_1669591384176');
INSERT INTO public.users VALUES (23, 'user_1669591384175');
INSERT INTO public.users VALUES (24, 'user_1669591398420');
INSERT INTO public.users VALUES (25, 'user_1669591398419');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 37, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 25, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--
