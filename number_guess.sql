--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
    user_id integer NOT NULL,
    guesses integer NOT NULL
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
    username character varying(22) NOT NULL,
    games_played integer DEFAULT 0,
    best_game integer
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

INSERT INTO public.games VALUES (1, 16, 114);
INSERT INTO public.games VALUES (2, 16, 514);
INSERT INTO public.games VALUES (3, 17, 236);
INSERT INTO public.games VALUES (4, 17, 872);
INSERT INTO public.games VALUES (5, 16, 315);
INSERT INTO public.games VALUES (6, 16, 258);
INSERT INTO public.games VALUES (7, 16, 874);
INSERT INTO public.games VALUES (8, 18, 774);
INSERT INTO public.games VALUES (9, 18, 526);
INSERT INTO public.games VALUES (10, 19, 324);
INSERT INTO public.games VALUES (11, 19, 663);
INSERT INTO public.games VALUES (12, 18, 132);
INSERT INTO public.games VALUES (13, 18, 579);
INSERT INTO public.games VALUES (14, 18, 666);
INSERT INTO public.games VALUES (15, 20, 739);
INSERT INTO public.games VALUES (16, 20, 314);
INSERT INTO public.games VALUES (17, 21, 391);
INSERT INTO public.games VALUES (18, 21, 360);
INSERT INTO public.games VALUES (19, 20, 563);
INSERT INTO public.games VALUES (20, 20, 229);
INSERT INTO public.games VALUES (21, 20, 188);
INSERT INTO public.games VALUES (22, 22, 176);
INSERT INTO public.games VALUES (23, 22, 975);
INSERT INTO public.games VALUES (24, 23, 849);
INSERT INTO public.games VALUES (25, 23, 956);
INSERT INTO public.games VALUES (26, 22, 846);
INSERT INTO public.games VALUES (27, 22, 27);
INSERT INTO public.games VALUES (28, 22, 252);
INSERT INTO public.games VALUES (29, 24, 520);
INSERT INTO public.games VALUES (30, 24, 788);
INSERT INTO public.games VALUES (31, 25, 580);
INSERT INTO public.games VALUES (32, 25, 557);
INSERT INTO public.games VALUES (33, 24, 731);
INSERT INTO public.games VALUES (34, 24, 778);
INSERT INTO public.games VALUES (35, 24, 339);
INSERT INTO public.games VALUES (36, 26, 398);
INSERT INTO public.games VALUES (37, 26, 868);
INSERT INTO public.games VALUES (38, 27, 185);
INSERT INTO public.games VALUES (39, 27, 96);
INSERT INTO public.games VALUES (40, 26, 333);
INSERT INTO public.games VALUES (41, 26, 108);
INSERT INTO public.games VALUES (42, 26, 204);
INSERT INTO public.games VALUES (43, 28, 902);
INSERT INTO public.games VALUES (44, 28, 438);
INSERT INTO public.games VALUES (45, 29, 333);
INSERT INTO public.games VALUES (46, 29, 771);
INSERT INTO public.games VALUES (47, 28, 469);
INSERT INTO public.games VALUES (48, 28, 968);
INSERT INTO public.games VALUES (49, 28, 565);
INSERT INTO public.games VALUES (50, 30, 616);
INSERT INTO public.games VALUES (51, 30, 432);
INSERT INTO public.games VALUES (52, 31, 42);
INSERT INTO public.games VALUES (53, 31, 495);
INSERT INTO public.games VALUES (54, 30, 371);
INSERT INTO public.games VALUES (55, 30, 382);
INSERT INTO public.games VALUES (56, 30, 841);
INSERT INTO public.games VALUES (57, 32, 844);
INSERT INTO public.games VALUES (58, 32, 711);
INSERT INTO public.games VALUES (59, 33, 91);
INSERT INTO public.games VALUES (60, 33, 958);
INSERT INTO public.games VALUES (61, 32, 761);
INSERT INTO public.games VALUES (62, 32, 732);
INSERT INTO public.games VALUES (63, 32, 559);
INSERT INTO public.games VALUES (64, 34, 581);
INSERT INTO public.games VALUES (65, 34, 354);
INSERT INTO public.games VALUES (66, 35, 934);
INSERT INTO public.games VALUES (67, 35, 208);
INSERT INTO public.games VALUES (68, 34, 27);
INSERT INTO public.games VALUES (69, 34, 839);
INSERT INTO public.games VALUES (70, 34, 354);
INSERT INTO public.games VALUES (71, 36, 43);
INSERT INTO public.games VALUES (72, 36, 56);
INSERT INTO public.games VALUES (73, 37, 351);
INSERT INTO public.games VALUES (74, 37, 288);
INSERT INTO public.games VALUES (75, 36, 858);
INSERT INTO public.games VALUES (76, 36, 930);
INSERT INTO public.games VALUES (77, 36, 249);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (2, 'user_1764610062816', 2, 332);
INSERT INTO public.users VALUES (1, 'user_1764610062817', 5, 551);
INSERT INTO public.users VALUES (4, 'user_1764610420209', 2, 24);
INSERT INTO public.users VALUES (3, 'user_1764610420210', 5, 123);
INSERT INTO public.users VALUES (5, 'Phea', 1, 11);
INSERT INTO public.users VALUES (7, 'user_1764610545988', 2, 353);
INSERT INTO public.users VALUES (6, 'user_1764610545989', 5, 39);
INSERT INTO public.users VALUES (9, 'user_1764610609146', 2, 125);
INSERT INTO public.users VALUES (8, 'user_1764610609147', 5, 64);
INSERT INTO public.users VALUES (10, 'user_1764610964876', 0, NULL);
INSERT INTO public.users VALUES (11, 'user_1764610964875', 0, NULL);
INSERT INTO public.users VALUES (12, 'user_1764611310027', 0, NULL);
INSERT INTO public.users VALUES (13, 'user_1764611310026', 0, NULL);
INSERT INTO public.users VALUES (14, 'user_1764611727468', 0, NULL);
INSERT INTO public.users VALUES (15, 'user_1764611727467', 0, NULL);
INSERT INTO public.users VALUES (16, 'user_1764611918162', 0, NULL);
INSERT INTO public.users VALUES (17, 'user_1764611918161', 0, NULL);
INSERT INTO public.users VALUES (18, 'user_1764613533510', 0, NULL);
INSERT INTO public.users VALUES (19, 'user_1764613533509', 0, NULL);
INSERT INTO public.users VALUES (20, 'user_1764613588321', 0, NULL);
INSERT INTO public.users VALUES (21, 'user_1764613588320', 0, NULL);
INSERT INTO public.users VALUES (22, 'user_1764613598019', 0, NULL);
INSERT INTO public.users VALUES (23, 'user_1764613598018', 0, NULL);
INSERT INTO public.users VALUES (24, 'user_1764613608532', 0, NULL);
INSERT INTO public.users VALUES (25, 'user_1764613608531', 0, NULL);
INSERT INTO public.users VALUES (26, 'user_1764613623017', 0, NULL);
INSERT INTO public.users VALUES (27, 'user_1764613623016', 0, NULL);
INSERT INTO public.users VALUES (28, 'user_1764613640769', 0, NULL);
INSERT INTO public.users VALUES (29, 'user_1764613640768', 0, NULL);
INSERT INTO public.users VALUES (30, 'user_1764613688191', 0, NULL);
INSERT INTO public.users VALUES (31, 'user_1764613688190', 0, NULL);
INSERT INTO public.users VALUES (32, 'user_1764613699967', 0, NULL);
INSERT INTO public.users VALUES (33, 'user_1764613699966', 0, NULL);
INSERT INTO public.users VALUES (34, 'user_1764613821843', 0, NULL);
INSERT INTO public.users VALUES (35, 'user_1764613821842', 0, NULL);
INSERT INTO public.users VALUES (36, 'user_1764613847085', 0, NULL);
INSERT INTO public.users VALUES (37, 'user_1764613847084', 0, NULL);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 77, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 37, true);


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

