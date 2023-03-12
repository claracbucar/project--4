-- proj4_sch.contract_type definition

-- Drop table

-- DROP TABLE proj4_sch.contract_type;

CREATE TABLE proj4_sch.contract_type (
	typeid int4 Not NULL,
	typename varchar NULL,
    CONSTRAINT contract_pkey PRIMARY KEY (typeid)
);

-- Permissions

ALTER TABLE proj4_sch.contract_type OWNER TO postgres;
GRANT ALL ON TABLE proj4_sch.contract_type TO postgres;
insert into proj4_sch.contract_type Values (1,'Cash loans');
insert into proj4_sch.contract_type Values (2,'Revolving loans');

-- proj4_sch.gender_type definition

-- Drop table

-- DROP TABLE proj4_sch.gender_type;

CREATE TABLE proj4_sch.gender_type (
	typeid int4 Not NULL,
	typename varchar NULL,
    CONSTRAINT gender_pkey PRIMARY KEY (typeid)
);

-- Permissions

ALTER TABLE proj4_sch.gender_type OWNER TO postgres;
GRANT ALL ON TABLE proj4_sch.gender_type TO postgres;
insert into proj4_sch.gender_type Values (1,'F');
insert into proj4_sch.gender_type Values (2,'M');
insert into proj4_sch.gender_type Values (3,'XNA');

-- proj4_sch.suite_type definition

-- Drop table

-- DROP TABLE proj4_sch.suite_type;

CREATE TABLE proj4_sch.suite_type (
	typeid int4 Not NULL,
	typename varchar NULL,
    CONSTRAINT suite_pkey PRIMARY KEY (typeid)
);

-- Permissions

ALTER TABLE proj4_sch.suite_type OWNER TO postgres;
GRANT ALL ON TABLE proj4_sch.suite_type TO postgres;
insert into proj4_sch.suite_type Values (1,'Unaccompanied');
insert into proj4_sch.suite_type Values (2,'Family');
insert into proj4_sch.suite_type Values (3,'Spouse, partner');
insert into proj4_sch.suite_type Values (4,'Children');
insert into proj4_sch.suite_type Values (5,'Other_A');
insert into proj4_sch.suite_type Values (6,'Other_B');
insert into proj4_sch.suite_type Values (7,'Group of people');

-- proj4_sch.income_type definition

-- Drop table

-- DROP TABLE proj4_sch.income_type;

CREATE TABLE proj4_sch.income_type (
	typeid int4 Not NULL,
	typename varchar NULL,
    CONSTRAINT income_pkey PRIMARY KEY (typeid)
);

-- Permissions

ALTER TABLE proj4_sch.income_type OWNER TO postgres;
GRANT ALL ON TABLE proj4_sch.income_type TO postgres;
insert into proj4_sch.income_type Values (1,'Working');
insert into proj4_sch.income_type Values (2,'State servant');
insert into proj4_sch.income_type Values (3,'Commercial associate');
insert into proj4_sch.income_type Values (4,'Pensioner');
insert into proj4_sch.income_type Values (5,'Unemployed');
insert into proj4_sch.income_type Values (6,'Student');
insert into proj4_sch.income_type Values (7,'Businessman');
insert into proj4_sch.income_type Values (8,'Maternity leave');


-- proj4_sch.education_type definition

-- Drop table

-- DROP TABLE proj4_sch.education_type;

CREATE TABLE proj4_sch.education_type (
	typeid int4 Not NULL,
	typename varchar NULL,
    CONSTRAINT education_pkey PRIMARY KEY (typeid)
);

-- Permissions

ALTER TABLE proj4_sch.education_type OWNER TO postgres;
GRANT ALL ON TABLE proj4_sch.education_type TO postgres;
insert into proj4_sch.education_type Values (1,'Secondary / secondary special');
insert into proj4_sch.education_type Values (2,'Higher education');
insert into proj4_sch.education_type Values (3,'Incomplete higher');
insert into proj4_sch.education_type Values (4,'Lower secondary');
insert into proj4_sch.education_type Values (5,'Academic degree');


-- proj4_sch.family_status_type definition

-- Drop table

-- DROP TABLE proj4_sch.family_status_type;

CREATE TABLE proj4_sch.family_status_type (
	typeid int4 Not NULL,
	typename varchar NULL,
    CONSTRAINT fam_status_pkey PRIMARY KEY (typeid)
);

-- Permissions

ALTER TABLE proj4_sch.family_status_type OWNER TO postgres;
GRANT ALL ON TABLE proj4_sch.family_status_type TO postgres;
insert into proj4_sch.family_status_type Values (1,'Single / not married');
insert into proj4_sch.family_status_type Values (2,'Married');
insert into proj4_sch.family_status_type Values (3,'Civil marriage');
insert into proj4_sch.family_status_type Values (4,'Widow');
insert into proj4_sch.family_status_type Values (5,'Separated');
insert into proj4_sch.family_status_type Values (6,'Unknown');


-- proj4_sch.housing_type definition

-- Drop table

-- DROP TABLE proj4_sch.housing_type;

CREATE TABLE proj4_sch.housing_type (
	typeid int4 Not NULL,
	typename varchar NULL,
    CONSTRAINT housing_pkey PRIMARY KEY (typeid)
);

-- Permissions

ALTER TABLE proj4_sch.housing_type OWNER TO postgres;
GRANT ALL ON TABLE proj4_sch.housing_type TO postgres;
insert into proj4_sch.housing_type Values (1,'House / apartment');
insert into proj4_sch.housing_type Values (2,'Rented apartment');
insert into proj4_sch.housing_type Values (3,'With parents');
insert into proj4_sch.housing_type Values (4,'Municipal apartment');
insert into proj4_sch.housing_type Values (5,'Office apartment');
insert into proj4_sch.housing_type Values (6,'Co-op apartment');

-- proj4_sch.occupation_type definition

-- Drop table

-- DROP TABLE proj4_sch.occupation_type;

CREATE TABLE proj4_sch.occupation_type (
	typeid int4 Not NULL,
	typename varchar NULL,
    CONSTRAINT occup_pkey PRIMARY KEY (typeid)
);

-- Permissions

ALTER TABLE proj4_sch.occupation_type OWNER TO postgres;
GRANT ALL ON TABLE proj4_sch.occupation_type TO postgres;
insert into proj4_sch.occupation_type Values (1,'Laborers');
insert into proj4_sch.occupation_type Values (2,'Core staff');
insert into proj4_sch.occupation_type Values (3,'Accountants');
insert into proj4_sch.occupation_type Values (4,'Managers');
insert into proj4_sch.occupation_type Values (5,'Drivers');
insert into proj4_sch.occupation_type Values (6,'Sales staff');
insert into proj4_sch.occupation_type Values (7,'Cleaning staff');
insert into proj4_sch.occupation_type Values (8,'Cooking staff');
insert into proj4_sch.occupation_type Values (9,'Private service staff');
insert into proj4_sch.occupation_type Values (10,'Medicine staff');
insert into proj4_sch.occupation_type Values (11,'Security staff');
insert into proj4_sch.occupation_type Values (12,'High skill tech staff');
insert into proj4_sch.occupation_type Values (13,'Waiters/barmen staff');
insert into proj4_sch.occupation_type Values (14,'Low-skill Laborers');
insert into proj4_sch.occupation_type Values (15,'Realty agents');
insert into proj4_sch.occupation_type Values (16,'Secretaries');
insert into proj4_sch.occupation_type Values (17,'IT staff');
insert into proj4_sch.occupation_type Values (18,'HR staff');

-- proj4_sch.weekday_type definition

-- Drop table

-- DROP TABLE proj4_sch.weekday_type;

CREATE TABLE proj4_sch.weekday_type (
	typeid int4 Not NULL,
	typename varchar NULL,
    CONSTRAINT weekday_pkey PRIMARY KEY (typeid)
);

-- Permissions

ALTER TABLE proj4_sch.weekday_type OWNER TO postgres;
GRANT ALL ON TABLE proj4_sch.weekday_type TO postgres;
insert into proj4_sch.weekday_type Values (1,'SUNDAY');
insert into proj4_sch.weekday_type Values (2,'MONDAY');
insert into proj4_sch.weekday_type Values (3,'TUESDAY');
insert into proj4_sch.weekday_type Values (4,'WEDNESDAY');
insert into proj4_sch.weekday_type Values (5,'THURSDAY');
insert into proj4_sch.weekday_type Values (6,'FRIDAY');
insert into proj4_sch.weekday_type Values (7,'SATURDAY');


-- proj4_sch.organization_type definition

-- Drop table

-- DROP TABLE proj4_sch.organization_type;

CREATE TABLE proj4_sch.organization_type (
	typeid int4 Not NULL,
	typename varchar NULL,
    CONSTRAINT org_pkey PRIMARY KEY (typeid)
);

-- Permissions

ALTER TABLE proj4_sch.organization_type OWNER TO postgres;
GRANT ALL ON TABLE proj4_sch.organization_type TO postgres;
insert into proj4_sch.organization_type Values (1,'Business Entity Type 3');
insert into proj4_sch.organization_type Values (2,'School');
insert into proj4_sch.organization_type Values (3,'Government');
insert into proj4_sch.organization_type Values (4,'Religion');
insert into proj4_sch.organization_type Values (5,'Other');
insert into proj4_sch.organization_type Values (6,'XNA');
insert into proj4_sch.organization_type Values (7,'Electricity');
insert into proj4_sch.organization_type Values (8,'Medicine');
insert into proj4_sch.organization_type Values (9,'Business Entity Type 2');
insert into proj4_sch.organization_type Values (10,'Self-employed');
insert into proj4_sch.organization_type Values (11,'Transport: type 2');
insert into proj4_sch.organization_type Values (12,'Construction');
insert into proj4_sch.organization_type Values (13,'Housing');
insert into proj4_sch.organization_type Values (14,'Kindergarten');
insert into proj4_sch.organization_type Values (15,'Trade: type 7');
insert into proj4_sch.organization_type Values (16,'Industry: type 11');
insert into proj4_sch.organization_type Values (17,'Military');
insert into proj4_sch.organization_type Values (18,'Services');
insert into proj4_sch.organization_type Values (19,'Security Ministries');
insert into proj4_sch.organization_type Values (20,'Transport: type 4');
insert into proj4_sch.organization_type Values (21,'Industry: type 1');
insert into proj4_sch.organization_type Values (22,'Emergency');
insert into proj4_sch.organization_type Values (23,'Security');
insert into proj4_sch.organization_type Values (24,'Trade: type 2');
insert into proj4_sch.organization_type Values (25,'University');
insert into proj4_sch.organization_type Values (26,'Transport: type 3');
insert into proj4_sch.organization_type Values (27,'Police');
insert into proj4_sch.organization_type Values (28,'Business Entity Type 1');
insert into proj4_sch.organization_type Values (29,'Postal');
insert into proj4_sch.organization_type Values (30,'Industry: type 4');
insert into proj4_sch.organization_type Values (31,'Agriculture');
insert into proj4_sch.organization_type Values (32,'Restaurant');
insert into proj4_sch.organization_type Values (33,'Culture');
insert into proj4_sch.organization_type Values (34,'Hotel');
insert into proj4_sch.organization_type Values (35,'Industry: type 7');
insert into proj4_sch.organization_type Values (36,'Trade: type 3');
insert into proj4_sch.organization_type Values (37,'Industry: type 3');
insert into proj4_sch.organization_type Values (38,'Bank');
insert into proj4_sch.organization_type Values (39,'Industry: type 9');
insert into proj4_sch.organization_type Values (40,'Insurance');
insert into proj4_sch.organization_type Values (41,'Trade: type 6');
insert into proj4_sch.organization_type Values (42,'Industry: type 2');
insert into proj4_sch.organization_type Values (43,'Transport: type 1');
insert into proj4_sch.organization_type Values (44,'Industry: type 12');
insert into proj4_sch.organization_type Values (45,'Mobile');
insert into proj4_sch.organization_type Values (46,'Trade: type 1');
insert into proj4_sch.organization_type Values (47,'Industry: type 5');
insert into proj4_sch.organization_type Values (48,'Industry: type 10');
insert into proj4_sch.organization_type Values (49,'Legal Services');
insert into proj4_sch.organization_type Values (50,'Advertising');
insert into proj4_sch.organization_type Values (51,'Trade: type 5');
insert into proj4_sch.organization_type Values (52,'Cleaning');
insert into proj4_sch.organization_type Values (53,'Industry: type 13');
insert into proj4_sch.organization_type Values (54,'Trade: type 4');
insert into proj4_sch.organization_type Values (55,'Telecom');
insert into proj4_sch.organization_type Values (56,'Industry: type 8');
insert into proj4_sch.organization_type Values (57,'Realtor');
insert into proj4_sch.organization_type Values (58,'Industry: type 6');


-- proj4_sch.fondkapr_mode_type definition

-- Drop table

-- DROP TABLE proj4_sch.fondkapr_mode_type;

CREATE TABLE proj4_sch.fondkapr_mode_type (
	typeid int4 Not NULL,
	typename varchar NULL,
    CONSTRAINT fondkapr_pkey PRIMARY KEY (typeid)
);

-- Permissions

ALTER TABLE proj4_sch.fondkapr_mode_type OWNER TO postgres;
GRANT ALL ON TABLE proj4_sch.fondkapr_mode_type TO postgres;
insert into proj4_sch.fondkapr_mode_type Values (1,'reg oper account');
insert into proj4_sch.fondkapr_mode_type Values (2,'org spec account');
insert into proj4_sch.fondkapr_mode_type Values (3,'reg oper spec account');
insert into proj4_sch.fondkapr_mode_type Values (4,'not specified');

-- proj4_sch.housetype_mode_type definition

-- Drop table

-- DROP TABLE proj4_sch.housetype_mode_type;

CREATE TABLE proj4_sch.housetype_mode_type (
	typeid int4 Not NULL,
	typename varchar NULL,
    CONSTRAINT house_mode_pkey PRIMARY KEY (typeid)
);

-- Permissions

ALTER TABLE proj4_sch.housetype_mode_type OWNER TO postgres;
GRANT ALL ON TABLE proj4_sch.housetype_mode_type TO postgres;
insert into proj4_sch.housetype_mode_type Values (1,'block of flats');
insert into proj4_sch.housetype_mode_type Values (2,'terraced house');
insert into proj4_sch.housetype_mode_type Values (3,'specific housing');

-- proj4_sch.wallsmaterial_mode_type definition

-- Drop table

-- DROP TABLE proj4_sch.wallsmaterial_mode_type;

CREATE TABLE proj4_sch.wallsmaterial_mode_type (
	typeid int4 Not NULL,
	typename varchar NULL,
    CONSTRAINT walls_mode_pkey PRIMARY KEY (typeid)
);

-- Permissions

ALTER TABLE proj4_sch.wallsmaterial_mode_type OWNER TO postgres;
GRANT ALL ON TABLE proj4_sch.wallsmaterial_mode_type TO postgres;
insert into proj4_sch.wallsmaterial_mode_type Values (1,'Stone, brick');
insert into proj4_sch.wallsmaterial_mode_type Values (2,'Block');
insert into proj4_sch.wallsmaterial_mode_type Values (3,'Panel');
insert into proj4_sch.wallsmaterial_mode_type Values (4,'Mixed');
insert into proj4_sch.wallsmaterial_mode_type Values (5,'Wooden');
insert into proj4_sch.wallsmaterial_mode_type Values (6,'Others');
insert into proj4_sch.wallsmaterial_mode_type Values (7,'Monolithic');