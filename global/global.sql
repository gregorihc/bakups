--
-- PostgreSQL database cluster dump
--

-- Started on 2023-07-25 10:52:41

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Roles
--

CREATE ROLE postgres;
ALTER ROLE postgres WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:s21lnXxTkKvXCiuRH5d5kg==$ArgPwskk/KCBIKCsRpw3Rbrgb/WmJ2EmTxI7S7TUgIE=:1Sr2Ej6O+OyY1Bh/pgouLFRXDFG9MQ6D/dKt8Qld1ro=';

--
-- User Configurations
--






-- Completed on 2023-07-25 10:52:42

--
-- PostgreSQL database cluster dump complete
--

