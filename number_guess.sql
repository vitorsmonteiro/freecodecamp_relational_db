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
    id integer NOT NULL,
    username character varying(22) NOT NULL,
    gueses integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_id_seq OWNER TO freecodecamp;

--
-- Name: games_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_id_seq OWNED BY public.games.id;


--
-- Name: games id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN id SET DEFAULT nextval('public.games_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (16, 'Vitor', 10);
INSERT INTO public.games VALUES (17, 'Vitor', 10);
INSERT INTO public.games VALUES (18, 'user_1726163333018', 379);
INSERT INTO public.games VALUES (19, 'user_1726163333018', 561);
INSERT INTO public.games VALUES (20, 'user_1726163333017', 758);
INSERT INTO public.games VALUES (21, 'user_1726163333017', 935);
INSERT INTO public.games VALUES (22, 'user_1726163333018', 127);
INSERT INTO public.games VALUES (23, 'user_1726163333018', 636);
INSERT INTO public.games VALUES (24, 'user_1726163333018', 751);
INSERT INTO public.games VALUES (25, 'user_1726163406312', 563);
INSERT INTO public.games VALUES (26, 'user_1726163406312', 118);
INSERT INTO public.games VALUES (27, 'user_1726163406311', 614);
INSERT INTO public.games VALUES (28, 'user_1726163406311', 775);
INSERT INTO public.games VALUES (29, 'user_1726163406312', 13);
INSERT INTO public.games VALUES (30, 'user_1726163406312', 614);
INSERT INTO public.games VALUES (31, 'user_1726163406312', 111);
INSERT INTO public.games VALUES (32, 'user_1726163437810', 669);
INSERT INTO public.games VALUES (33, 'user_1726163437810', 357);
INSERT INTO public.games VALUES (34, 'user_1726163437809', 443);
INSERT INTO public.games VALUES (35, 'user_1726163437809', 495);
INSERT INTO public.games VALUES (36, 'user_1726163437810', 487);
INSERT INTO public.games VALUES (37, 'user_1726163437810', 647);
INSERT INTO public.games VALUES (38, 'user_1726163437810', 856);


--
-- Name: games_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_id_seq', 38, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

