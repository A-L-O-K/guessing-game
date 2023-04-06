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
-- Name: game_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.game_info (
    username character varying(22),
    games_played integer,
    best_game integer
);


ALTER TABLE public.game_info OWNER TO freecodecamp;

--
-- Data for Name: game_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.game_info VALUES ('user_1680705907423', NULL, NULL);
INSERT INTO public.game_info VALUES ('user_1680705907422', NULL, NULL);
INSERT INTO public.game_info VALUES ('user_1680705995954', NULL, NULL);
INSERT INTO public.game_info VALUES ('user_1680705995953', NULL, NULL);
INSERT INTO public.game_info VALUES ('Yasin', NULL, NULL);
INSERT INTO public.game_info VALUES ('user_1680706024201', NULL, NULL);
INSERT INTO public.game_info VALUES ('user_1680706024200', NULL, NULL);
INSERT INTO public.game_info VALUES ('user_1680706048264', NULL, NULL);
INSERT INTO public.game_info VALUES ('user_1680706048263', NULL, NULL);
INSERT INTO public.game_info VALUES ('user_1680706519836', NULL, NULL);
INSERT INTO public.game_info VALUES ('user_1680706519835', NULL, NULL);
INSERT INTO public.game_info VALUES ('user_1680706549235', NULL, NULL);
INSERT INTO public.game_info VALUES ('user_1680706549234', NULL, NULL);
INSERT INTO public.game_info VALUES ('Syed', NULL, NULL);
INSERT INTO public.game_info VALUES ('user_1680706649383', NULL, NULL);
INSERT INTO public.game_info VALUES ('user_1680706649382', NULL, NULL);


--
-- PostgreSQL database dump complete
--

