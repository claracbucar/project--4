-- DROP SCHEMA proj4_sch;

CREATE SCHEMA proj4_sch AUTHORIZATION postgres;


-- Permissions

GRANT ALL ON SCHEMA proj4_sch TO postgres;


-- proj4_sch.test_temp definition

-- Drop table

-- DROP TABLE proj4_sch.test_temp;

CREATE TABLE proj4_sch.test_temp (
	column1 int4 NULL,
	column2 varchar NULL
);

-- Permissions

ALTER TABLE proj4_sch.test_temp OWNER TO postgres;
GRANT ALL ON TABLE proj4_sch.test_temp TO postgres;