--
-- PostgreSQL database dump
--

-- Dumped from database version 10.12 (Ubuntu 10.12-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 10.12 (Ubuntu 10.12-0ubuntu0.18.04.1)

-- Started on 2020-04-13 21:11:51 EDT

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

--
-- TOC entry 1 (class 3079 OID 13039)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2952 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 199 (class 1259 OID 16608)
-- Name: answers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.answers (
    id integer NOT NULL,
    answer character varying(30)
);


ALTER TABLE public.answers OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 16603)
-- Name: questions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.questions (
    id integer NOT NULL,
    question character varying(30)
);


ALTER TABLE public.questions OWNER TO postgres;

--
-- TOC entry 197 (class 1259 OID 16598)
-- Name: teacher_login; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.teacher_login (
    id integer NOT NULL,
    password character varying(10),
    f_name character varying(20),
    l_name character varying(20)
);


ALTER TABLE public.teacher_login OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 16613)
-- Name: test; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.test (
    id integer NOT NULL,
    question_id integer NOT NULL,
    answer_id integer NOT NULL
);


ALTER TABLE public.test OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 16628)
-- Name: user_grades; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_grades (
    id integer NOT NULL,
    grade integer,
    test_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.user_grades OWNER TO postgres;

--
-- TOC entry 196 (class 1259 OID 16593)
-- Name: user_login; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_login (
    id integer NOT NULL,
    password character varying(10),
    f_name character varying(20),
    l_name character varying(20)
);


ALTER TABLE public.user_login OWNER TO postgres;

--
-- TOC entry 2942 (class 0 OID 16608)
-- Dependencies: 199
-- Data for Name: answers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.answers (id, answer) FROM stdin;
\.


--
-- TOC entry 2941 (class 0 OID 16603)
-- Dependencies: 198
-- Data for Name: questions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.questions (id, question) FROM stdin;
\.


--
-- TOC entry 2940 (class 0 OID 16598)
-- Dependencies: 197
-- Data for Name: teacher_login; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.teacher_login (id, password, f_name, l_name) FROM stdin;
\.


--
-- TOC entry 2943 (class 0 OID 16613)
-- Dependencies: 200
-- Data for Name: test; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.test (id, question_id, answer_id) FROM stdin;
\.


--
-- TOC entry 2944 (class 0 OID 16628)
-- Dependencies: 201
-- Data for Name: user_grades; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_grades (id, grade, test_id, user_id) FROM stdin;
\.


--
-- TOC entry 2939 (class 0 OID 16593)
-- Dependencies: 196
-- Data for Name: user_login; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_login (id, password, f_name, l_name) FROM stdin;
\.


--
-- TOC entry 2809 (class 2606 OID 16612)
-- Name: answers answers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.answers
    ADD CONSTRAINT answers_pkey PRIMARY KEY (id);


--
-- TOC entry 2807 (class 2606 OID 16607)
-- Name: questions questions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.questions
    ADD CONSTRAINT questions_pkey PRIMARY KEY (id);


--
-- TOC entry 2805 (class 2606 OID 16602)
-- Name: teacher_login teacher_login_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teacher_login
    ADD CONSTRAINT teacher_login_pkey PRIMARY KEY (id);


--
-- TOC entry 2811 (class 2606 OID 16617)
-- Name: test test_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.test
    ADD CONSTRAINT test_pkey PRIMARY KEY (id);


--
-- TOC entry 2813 (class 2606 OID 16632)
-- Name: user_grades user_grades_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_grades
    ADD CONSTRAINT user_grades_pkey PRIMARY KEY (id);


--
-- TOC entry 2803 (class 2606 OID 16597)
-- Name: user_login user_login_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_login
    ADD CONSTRAINT user_login_pkey PRIMARY KEY (id);


--
-- TOC entry 2815 (class 2606 OID 16623)
-- Name: test test_answer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.test
    ADD CONSTRAINT test_answer_id_fkey FOREIGN KEY (answer_id) REFERENCES public.answers(id);


--
-- TOC entry 2814 (class 2606 OID 16618)
-- Name: test test_question_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.test
    ADD CONSTRAINT test_question_id_fkey FOREIGN KEY (question_id) REFERENCES public.questions(id);


--
-- TOC entry 2816 (class 2606 OID 16633)
-- Name: user_grades user_grades_test_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_grades
    ADD CONSTRAINT user_grades_test_id_fkey FOREIGN KEY (test_id) REFERENCES public.test(id);


--
-- TOC entry 2817 (class 2606 OID 16638)
-- Name: user_grades user_grades_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_grades
    ADD CONSTRAINT user_grades_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.user_login(id);


-- Completed on 2020-04-13 21:11:51 EDT

--
-- PostgreSQL database dump complete
--

