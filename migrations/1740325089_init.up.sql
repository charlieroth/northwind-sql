-- Disable statement timeouts
SET statement_timeout = 0;
-- Disable lock timeouts
SET lock_timeout = 0;
-- Sets the client-side encoding (character set) to UTF-8
SET client_encoding = 'UTF8';
-- Treat backslashes literally, as specified in the SQL standard
SET standard_conforming_strings = on;
-- Diable validation of the routine body string during CREATE FUNCTION and CREATE PROCEDURE
SET check_function_bodies = false;
-- Only send warnings and errors to the client
SET client_min_messages = WARNING;
SET default_tablespace = '';
SET default_with_oids = false;