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
    description text,
    age_in_millions_of_years integer,
    galaxy_types integer
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
    name character varying(40) NOT NULL,
    planet_id integer NOT NULL,
    is_spherical boolean,
    description text
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
-- Name: physical_characteristic; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.physical_characteristic (
    physical_characteristic_id integer NOT NULL,
    name character varying(40) NOT NULL,
    value numeric(4,1),
    unit character varying(10),
    related_to character varying(10),
    related_id integer,
    is_observed boolean NOT NULL
);


ALTER TABLE public.physical_characteristic OWNER TO freecodecamp;

--
-- Name: physical_characteristic_physical_characteristic_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.physical_characteristic_physical_characteristic_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.physical_characteristic_physical_characteristic_id_seq OWNER TO freecodecamp;

--
-- Name: physical_characteristic_physical_characteristic_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.physical_characteristic_physical_characteristic_id_seq OWNED BY public.physical_characteristic.physical_characteristic_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(40) NOT NULL,
    star_id integer NOT NULL,
    has_life boolean,
    planet_types integer
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
    galaxy_id integer NOT NULL,
    distance_from_earth numeric(4,1),
    description text
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
-- Name: physical_characteristic physical_characteristic_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.physical_characteristic ALTER COLUMN physical_characteristic_id SET DEFAULT nextval('public.physical_characteristic_physical_characteristic_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Our home galaxy', 13600, 1);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Nearest large galaxy', 10000, 1);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Part of the Local Group', 13000, 2);
INSERT INTO public.galaxy VALUES (4, 'Large Magellanic Cloud', 'Satellite galaxy of Milky Way', 14000, 3);
INSERT INTO public.galaxy VALUES (5, 'Small Magellanic Cloud', 'Satellite galaxy of Milky Way', 12000, 3);
INSERT INTO public.galaxy VALUES (6, 'Whirlpool', 'Famous for its spiral shape', 15000, 1);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 3, true, 'The only natural satellite of Earth');
INSERT INTO public.moon VALUES (2, 'Io', 5, true, 'Most volcanically active moon');
INSERT INTO public.moon VALUES (3, 'Europa', 5, true, 'Icy moon with potential subsurface ocean');
INSERT INTO public.moon VALUES (4, 'Ganymede', 5, true, 'Largest moon in the solar system');
INSERT INTO public.moon VALUES (5, 'Callisto', 5, true, 'Heavily cratered moon');
INSERT INTO public.moon VALUES (6, 'Titan', 6, true, 'Largest moon of Saturn');
INSERT INTO public.moon VALUES (7, 'Enceladus', 6, true, 'Moon with ice geysers');
INSERT INTO public.moon VALUES (8, 'Titania', 7, true, 'Largest moon of Uranus');
INSERT INTO public.moon VALUES (9, 'Oberon', 7, true, 'Outer moon of Uranus');
INSERT INTO public.moon VALUES (10, 'Triton', 8, true, 'Largest moon of Neptune');
INSERT INTO public.moon VALUES (11, 'Proxima b1', 9, false, 'Moon of Proxima b');
INSERT INTO public.moon VALUES (12, 'Proxima b2', 9, false, 'Second moon of Proxima b');
INSERT INTO public.moon VALUES (13, 'Sirius b1', 10, false, 'Moon of Sirius b');
INSERT INTO public.moon VALUES (14, 'Betelgeuse c1', 11, true, 'Moon of Betelgeuse c');
INSERT INTO public.moon VALUES (15, 'Rigel d1', 12, false, 'Moon of Rigel d');
INSERT INTO public.moon VALUES (16, 'Rigel d2', 12, false, 'Second moon of Rigel d');
INSERT INTO public.moon VALUES (20, 'Thelxinoe', 5, true, 'A small irregular moon of Jupiter.');
INSERT INTO public.moon VALUES (21, 'Euanthe', 5, false, 'An irregular moon orbiting Jupiter.');
INSERT INTO public.moon VALUES (22, 'Dione', 6, true, 'A dense moon with a substantial subsurface ocean.');
INSERT INTO public.moon VALUES (23, 'Iapetus', 6, false, 'Known for its two-tone coloration.');


--
-- Data for Name: physical_characteristic; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.physical_characteristic VALUES (1, 'Mass of Earth', 6.0, '10^24 kg', 'planet', 3, true);
INSERT INTO public.physical_characteristic VALUES (2, 'Radius of Moon', 1.7, 'km', 'moon', 1, true);
INSERT INTO public.physical_characteristic VALUES (3, 'Luminosity of Sun', 1.0, 'L☉', 'star', 1, true);
INSERT INTO public.physical_characteristic VALUES (4, 'Distance to Sirius', 8.6, 'ly', 'star', 2, true);
INSERT INTO public.physical_characteristic VALUES (5, 'Age of Milky Way', 999.9, 'Myr', 'galaxy', 1, true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 1, false, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 1, false, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 1, true, 2);
INSERT INTO public.planet VALUES (4, 'Mars', 1, false, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 1, false, 3);
INSERT INTO public.planet VALUES (6, 'Saturn', 1, false, 3);
INSERT INTO public.planet VALUES (7, 'Uranus', 1, false, 3);
INSERT INTO public.planet VALUES (8, 'Neptune', 1, false, 3);
INSERT INTO public.planet VALUES (9, 'Proxima b', 3, false, 2);
INSERT INTO public.planet VALUES (10, 'Sirius b', 2, false, 3);
INSERT INTO public.planet VALUES (11, 'Betelgeuse c', 5, false, 2);
INSERT INTO public.planet VALUES (12, 'Rigel d', 4, false, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 0.0, 'Our solar system star');
INSERT INTO public.star VALUES (2, 'Sirius', 1, 8.6, 'Brightest star in the night sky');
INSERT INTO public.star VALUES (3, 'Proxima Centauri', 1, 4.2, 'Closest star to the Sun');
INSERT INTO public.star VALUES (4, 'Rigel', 3, 860.0, 'A bright blue supergiant');
INSERT INTO public.star VALUES (5, 'Betelgeuse', 3, 642.0, 'A red supergiant nearing the end of its life');
INSERT INTO public.star VALUES (6, 'Vega', 2, 25.0, 'Part of the Lyra constellation');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 23, true);


--
-- Name: physical_characteristic_physical_characteristic_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.physical_characteristic_physical_characteristic_id_seq', 5, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


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
-- Name: physical_characteristic physical_characteristic_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.physical_characteristic
    ADD CONSTRAINT physical_characteristic_name_key UNIQUE (name);


--
-- Name: physical_characteristic physical_characteristic_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.physical_characteristic
    ADD CONSTRAINT physical_characteristic_pkey PRIMARY KEY (physical_characteristic_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key1 UNIQUE (name);


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
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

