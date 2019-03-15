-- Role: novosga

-- DROP ROLE novosga;

CREATE ROLE novosga LOGIN
  PASSWORD '123456'
  NOSUPERUSER INHERIT NOCREATEDB NOCREATEROLE NOREPLICATION;

-- Database: novosgadb

-- DROP DATABASE novosgadb;

CREATE DATABASE novosgadb
  WITH OWNER = novosga
       ENCODING = 'UTF8'
       TABLESPACE = pg_default
       LC_COLLATE = 'pt_BR.UTF-8'
       LC_CTYPE = 'pt_BR.UTF-8'
       CONNECTION LIMIT = -1;