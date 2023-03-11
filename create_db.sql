-- drop database proj4;
CREATE DATABASE proj4
    WITH 
    OWNER = postgres
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;

COMMENT ON DATABASE proj4
    IS 'Application Credit Card database for project 4';
