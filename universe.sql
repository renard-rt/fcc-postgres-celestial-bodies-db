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
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    age_in_millions_of_years numeric,
    galaxy_type text,
    diameter_million_light_years integer
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
-- Name: key_connector; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.key_connector (
    key_connector_id integer NOT NULL,
    name character varying(40) NOT NULL,
    galaxy_id integer,
    star_id integer,
    planet_id integer
);


ALTER TABLE public.key_connector OWNER TO freecodecamp;

--
-- Name: key_connector_table_connector_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.key_connector_table_connector_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.key_connector_table_connector_id_seq OWNER TO freecodecamp;

--
-- Name: key_connector_table_connector_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.key_connector_table_connector_id_seq OWNED BY public.key_connector.key_connector_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(40) NOT NULL,
    gravity_si numeric(6,5),
    orbital_period_days numeric(7,5),
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
    name character varying(40) NOT NULL,
    is_espherical boolean,
    planet_type character varying(40),
    has_life boolean,
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40) NOT NULL,
    size integer,
    distance_from_earth integer,
    type_of_star character varying(40),
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: start_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.start_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.start_star_id_seq OWNER TO freecodecamp;

--
-- Name: start_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.start_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: key_connector key_connector_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.key_connector ALTER COLUMN key_connector_id SET DEFAULT nextval('public.key_connector_table_connector_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.start_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (6, 'Milky Way', 13610, 'Spiral Galaxy', 105700);
INSERT INTO public.galaxy VALUES (7, 'Andromeda', 10010, 'Spiral Galaxy', 220000);
INSERT INTO public.galaxy VALUES (8, 'Virgo Galaxy', 13800, 'Supercluster of Galaxies', 160000);
INSERT INTO public.galaxy VALUES (9, 'Cygnus A', 1000, 'Elliptical Galaxy', 500000);
INSERT INTO public.galaxy VALUES (10, 'Canis Major', 13810, 'Irregular Galaxy', 5000);
INSERT INTO public.galaxy VALUES (11, 'Magellanic', 1101, 'Irregula Dwarf Galaxy', 14000);


--
-- Data for Name: key_connector; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.key_connector VALUES (1, '1st_connector', 6, 7, 1);
INSERT INTO public.key_connector VALUES (2, '2nd_connector', 6, 7, 4);
INSERT INTO public.key_connector VALUES (3, '3rd_connector', 6, 7, 5);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 1.62000, 27.00000, 5);
INSERT INTO public.moon VALUES (2, 'Phobos', 0.00570, 27.00000, 6);
INSERT INTO public.moon VALUES (3, 'Deimos', 0.00300, 1.25000, 6);
INSERT INTO public.moon VALUES (4, 'Ganymede', 1.42800, 7.16666, 7);
INSERT INTO public.moon VALUES (5, 'Callisto', 1.23600, 17.00000, 7);
INSERT INTO public.moon VALUES (6, 'Io', 1.79600, 1.75000, 7);
INSERT INTO public.moon VALUES (7, 'Europa', 1.31500, 3.54166, 7);
INSERT INTO public.moon VALUES (8, 'Amalthea', 0.02000, 0.50000, 7);
INSERT INTO public.moon VALUES (9, 'Titan', 1.35200, 16.00000, 8);
INSERT INTO public.moon VALUES (10, 'Rhea', 0.26400, 4.50000, 8);
INSERT INTO public.moon VALUES (11, 'Iapetus', 0.22300, 79.00000, 8);
INSERT INTO public.moon VALUES (12, 'Dione', 0.23200, 2.75000, 8);
INSERT INTO public.moon VALUES (13, 'Titania', 0.36700, 8.70833, 9);
INSERT INTO public.moon VALUES (14, 'Oberon', 0.35400, 13.00000, 9);
INSERT INTO public.moon VALUES (15, 'Umbriel', 0.20000, 4.12500, 9);
INSERT INTO public.moon VALUES (16, 'Triton', 0.77900, 5.87500, 10);
INSERT INTO public.moon VALUES (17, 'Proteus', 0.07000, 1.12500, 10);
INSERT INTO public.moon VALUES (18, 'Charon', 0.22800, 6.37500, 11);
INSERT INTO public.moon VALUES (19, 'Hydra', 0.05100, 38.00000, 11);
INSERT INTO public.moon VALUES (20, 'Larissa', 0.03000, 0.54166, 10);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', true, 'Terrestrial Planet', false, 6);
INSERT INTO public.planet VALUES (4, 'Venus', true, 'Terrestrial Planet', false, 6);
INSERT INTO public.planet VALUES (5, 'Earth', true, 'Rocky Planet', true, 6);
INSERT INTO public.planet VALUES (6, 'Mars', false, 'Rocky Planet', false, 6);
INSERT INTO public.planet VALUES (7, 'Jupiter', false, 'Gas Giant', false, 6);
INSERT INTO public.planet VALUES (8, 'Saturn', false, 'Gas Giant', false, 6);
INSERT INTO public.planet VALUES (9, 'Uranus', false, 'Ice Giant', false, 6);
INSERT INTO public.planet VALUES (11, 'Pluto', true, 'Dwarf Planet', false, 6);
INSERT INTO public.planet VALUES (12, 'Ceres', true, 'Dwarf Planet', false, 6);
INSERT INTO public.planet VALUES (13, 'Makemake', true, 'Dwarf Planet', false, 6);
INSERT INTO public.planet VALUES (14, 'Haumea', false, 'Dwarf Planet', false, 6);
INSERT INTO public.planet VALUES (10, 'Neptune', true, 'Ice Giant', false, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'Adhil', 8182608, 215, 'Mira-Type', 7);
INSERT INTO public.star VALUES (3, 'Spica', 2506824, 260, 'Spectroscopic Binary Star', 8);
INSERT INTO public.star VALUES (4, 'Deneb', 141123, 2616, 'A2 Ia', 9);
INSERT INTO public.star VALUES (5, 'Tau Canis Majoris', 13774860, 5000, 'Class O Supergiant', 10);
INSERT INTO public.star VALUES (6, 'HD 5980', 15305400, 200000, 'Type V', 11);
INSERT INTO public.star VALUES (7, 'Sun', 696340, 2, 'G2V', 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 11, true);


--
-- Name: key_connector_table_connector_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.key_connector_table_connector_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: start_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.start_star_id_seq', 7, true);


--
-- Name: galaxy galaxy_age_in_millions_of_years_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_age_in_millions_of_years_key UNIQUE (age_in_millions_of_years);


--
-- Name: galaxy galaxy_diameter_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_diameter_key UNIQUE (diameter_million_light_years);


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
-- Name: key_connector key_connector_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.key_connector
    ADD CONSTRAINT key_connector_name_key UNIQUE (name);


--
-- Name: key_connector key_connector_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.key_connector
    ADD CONSTRAINT key_connector_pkey PRIMARY KEY (key_connector_id);


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
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star start_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT start_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

