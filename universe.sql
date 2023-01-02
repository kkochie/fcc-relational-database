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
    name character varying(60) NOT NULL,
    description text,
    age_in_millions_of_years numeric(6,2),
    galaxy_types character varying(100) NOT NULL,
    black_hole_center boolean,
    rotation_speed numeric(5,1),
    galaxy_id integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(60) NOT NULL,
    description text,
    diameter_in_km integer NOT NULL,
    surface_gravity numeric(5,4),
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(60) NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    distance_from_earth integer NOT NULL,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: space_fact; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.space_fact (
    space_fact_id integer NOT NULL,
    name character varying(60) NOT NULL,
    description text NOT NULL,
    source character varying(100),
    planet_id integer
);


ALTER TABLE public.space_fact OWNER TO freecodecamp;

--
-- Name: space_fact_space_fact_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.space_fact_space_fact_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.space_fact_space_fact_id_seq OWNER TO freecodecamp;

--
-- Name: space_fact_space_fact_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.space_fact_space_fact_id_seq OWNED BY public.space_fact.space_fact_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(60) NOT NULL,
    description text,
    stellar_companion boolean,
    star_type character varying(60) NOT NULL,
    lifespan integer,
    distance_from_earth_miles integer,
    star_id integer NOT NULL,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: space_fact space_fact_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_fact ALTER COLUMN space_fact_id SET DEFAULT nextval('public.space_fact_space_fact_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('galaxy1', 'big ol galaxy of dust', 1234.22, 'spiral', true, 5000.1, 1);
INSERT INTO public.galaxy VALUES ('galaxy2', 'big ol space dust', 1234.22, 'elliptical', true, 5000.1, 2);
INSERT INTO public.galaxy VALUES ('galaxy3', 'big ol galaxy of dust', 1234.22, 'spiral', true, 5000.1, 3);
INSERT INTO public.galaxy VALUES ('galaxy4', 'big ol space dust', 1234.22, 'elliptical', true, 5000.1, 4);
INSERT INTO public.galaxy VALUES ('galaxy5', 'gas dust', 1234.22, 'spiral', false, 6999.2, 5);
INSERT INTO public.galaxy VALUES ('galaxy6', 'big dark ball', 1212.22, 'spiral', false, 5000.3, 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', 'moon', 1233, 1.4444, 1);
INSERT INTO public.moon VALUES (2, 'moon2', 'moon', 23444, 2.3333, 2);
INSERT INTO public.moon VALUES (3, 'moon3', 'moon', 234, 1.2434, 3);
INSERT INTO public.moon VALUES (4, 'moon4', 'moony', 123, 2.1212, 4);
INSERT INTO public.moon VALUES (5, 'moon5', 'ooonnnnn', 23, 4.2345, 12);
INSERT INTO public.moon VALUES (6, 'moon6', 'moononono', 254, 7.3434, 12);
INSERT INTO public.moon VALUES (7, 'moon7', 'moo', 23234, 1.2323, 6);
INSERT INTO public.moon VALUES (8, 'moon8', 'momom', 8789, 9.1234, 7);
INSERT INTO public.moon VALUES (9, 'moon9', 'moononon', 3444, 8.5858, 6);
INSERT INTO public.moon VALUES (10, 'moon10', 'kkkk', 334, 2.1212, 4);
INSERT INTO public.moon VALUES (11, 'moon11', 'moon', 1233, 1.4444, 1);
INSERT INTO public.moon VALUES (12, 'moon12', 'moon', 23444, 2.3333, 2);
INSERT INTO public.moon VALUES (13, 'moon13', 'moon', 234, 1.2434, 3);
INSERT INTO public.moon VALUES (14, 'moon14', 'moony', 123, 2.1212, 4);
INSERT INTO public.moon VALUES (15, 'moon15', 'ooonnnnn', 23, 4.2345, 12);
INSERT INTO public.moon VALUES (16, 'moon16', 'moononono', 254, 7.3434, 12);
INSERT INTO public.moon VALUES (17, 'moon17', 'moo', 23234, 1.2323, 6);
INSERT INTO public.moon VALUES (18, 'moon18', 'momom', 8789, 9.1234, 7);
INSERT INTO public.moon VALUES (19, 'moon19', 'moononon', 3444, 8.5858, 6);
INSERT INTO public.moon VALUES (20, 'moon20', 'kkkk', 334, 2.1212, 4);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planet1', 'planetary', false, true, 123444, 1);
INSERT INTO public.planet VALUES (2, 'planet2', 'red red red', true, true, 2343443, 3);
INSERT INTO public.planet VALUES (3, 'planet3', 'big fat planet', true, false, 2344, 3);
INSERT INTO public.planet VALUES (4, 'planet7', 'planetary', false, true, 123444, 4);
INSERT INTO public.planet VALUES (5, 'planet8', 'red red red', true, true, 2343443, 3);
INSERT INTO public.planet VALUES (6, 'planet9', 'big fat planet', true, false, 2344, 5);
INSERT INTO public.planet VALUES (7, 'planet6', 'planetary', false, true, 123444, 4);
INSERT INTO public.planet VALUES (8, 'planet5', 'red red red', true, true, 2343443, 3);
INSERT INTO public.planet VALUES (9, 'planet4', 'big fat planet', true, false, 2344, 6);
INSERT INTO public.planet VALUES (10, 'planet10', 'planetary', false, true, 123444, 3);
INSERT INTO public.planet VALUES (11, 'planet11', 'red red red', true, true, 2343443, 1);
INSERT INTO public.planet VALUES (12, 'planet12', 'big fat planet', true, false, 2344, 4);


--
-- Data for Name: space_fact; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.space_fact VALUES (1, 'fact1', 'black hole sun', 'Chris Cornell', 1);
INSERT INTO public.space_fact VALUES (2, 'fact2', 'flack hole sun', 'Chriss Cornell', 4);
INSERT INTO public.space_fact VALUES (3, 'fact3', 'black hole sun', 'Chris Cornell', 5);
INSERT INTO public.space_fact VALUES (4, 'fact4', 'black hole sun', 'Chris Cornell', 9);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('star1', 'star bright', true, 'blue', 6789, 123444, 1, 1);
INSERT INTO public.star VALUES ('star2', 'starry night', true, 'red', 8888, 23434, 2, 2);
INSERT INTO public.star VALUES ('star3', 'star bright', true, 'blue', 6789, 123444, 3, 5);
INSERT INTO public.star VALUES ('star4', 'starry night', true, 'red', 8888, 23434, 4, 2);
INSERT INTO public.star VALUES ('star5', 'star bright', true, 'blue', 6789, 123444, 5, 4);
INSERT INTO public.star VALUES ('star6', 'starry night', true, 'red', 8888, 23434, 6, 5);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: space_fact_space_fact_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.space_fact_space_fact_id_seq', 4, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: space_fact space_fact_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_fact
    ADD CONSTRAINT space_fact_name_key UNIQUE (name);


--
-- Name: space_fact space_fact_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_fact
    ADD CONSTRAINT space_fact_pkey PRIMARY KEY (space_fact_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


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
-- Name: space_fact space_fact_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_fact
    ADD CONSTRAINT space_fact_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

