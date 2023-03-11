-- Create original table for reference
create table proj4_sch.app_data_orig as
select * from proj4_sch.app_data;

-- Update to numeric
update proj4_sch.app_data set "NAME_CONTRACT_TYPE" = 1 where "NAME_CONTRACT_TYPE" = 'Cash loans';
update proj4_sch.app_data set "NAME_CONTRACT_TYPE" = 2 where "NAME_CONTRACT_TYPE" = 'Revolving loans';
alter table proj4_sch.app_data alter column "NAME_CONTRACT_TYPE" type int4 using ("NAME_CONTRACT_TYPE"::integer);

update proj4_sch.app_data set "CODE_GENDER" = 1 where "CODE_GENDER" = 'F';
update proj4_sch.app_data set "CODE_GENDER" = 2 where "CODE_GENDER" = 'M';
update proj4_sch.app_data set "CODE_GENDER" = 3 where "CODE_GENDER" = 'XNA';
alter table proj4_sch.app_data alter column "CODE_GENDER" type int4 using ("CODE_GENDER"::integer);

update proj4_sch.app_data set "FLAG_OWN_CAR" = 1 where "FLAG_OWN_CAR" = 'Y';
update proj4_sch.app_data set "FLAG_OWN_CAR" = 0 where "FLAG_OWN_CAR" = 'N';
alter table proj4_sch.app_data alter column "FLAG_OWN_CAR" type int4 using ("FLAG_OWN_CAR"::integer);

update proj4_sch.app_data set "FLAG_OWN_REALTY"  = 1 where "FLAG_OWN_REALTY" = 'Y';
update proj4_sch.app_data set "FLAG_OWN_REALTY" = 0 where "FLAG_OWN_REALTY" = 'N';
alter table proj4_sch.app_data alter column "FLAG_OWN_REALTY" type int4 using ("FLAG_OWN_REALTY"::integer);

--'Unaccompanied', 'Family', 'Spouse, partner', 'Children',
--       'Other_A', nan, 'Other_B', 'Group of people'
update proj4_sch.app_data set "NAME_TYPE_SUITE"  = 1 where "NAME_TYPE_SUITE" = 'Unaccompanied';
update proj4_sch.app_data set "NAME_TYPE_SUITE" = 2 where "NAME_TYPE_SUITE" = 'Family';
update proj4_sch.app_data set "NAME_TYPE_SUITE"  = 3 where "NAME_TYPE_SUITE" = 'Spouse, partner';
update proj4_sch.app_data set "NAME_TYPE_SUITE" = 4 where "NAME_TYPE_SUITE" = 'Children';
update proj4_sch.app_data set "NAME_TYPE_SUITE"  = 5 where "NAME_TYPE_SUITE" = 'Other_A';
update proj4_sch.app_data set "NAME_TYPE_SUITE" = 6 where "NAME_TYPE_SUITE" = 'Other_B';
update proj4_sch.app_data set "NAME_TYPE_SUITE"  = 7 where "NAME_TYPE_SUITE" = 'Group of people';
alter table proj4_sch.app_data alter column "NAME_TYPE_SUITE" type int4 using ("NAME_TYPE_SUITE"::integer);

--'Working', 'State servant', 'Commercial associate', 'Pensioner',
--       'Unemployed', 'Student', 'Businessman', 'Maternity leave'
update proj4_sch.app_data set "NAME_INCOME_TYPE"  = 1 where "NAME_INCOME_TYPE" = 'Working';
update proj4_sch.app_data set "NAME_INCOME_TYPE" = 2 where "NAME_INCOME_TYPE" = 'State servant';
update proj4_sch.app_data set "NAME_INCOME_TYPE"  = 3 where "NAME_INCOME_TYPE" = 'Commercial associate';
update proj4_sch.app_data set "NAME_INCOME_TYPE" = 4 where "NAME_INCOME_TYPE" = 'Pensioner';
update proj4_sch.app_data set "NAME_INCOME_TYPE"  = 5 where "NAME_INCOME_TYPE" = 'Unemployed';
update proj4_sch.app_data set "NAME_INCOME_TYPE" = 6 where "NAME_INCOME_TYPE" = 'Student';
update proj4_sch.app_data set "NAME_INCOME_TYPE"  = 7 where "NAME_INCOME_TYPE" = 'Businessman';
update proj4_sch.app_data set "NAME_INCOME_TYPE"  = 8 where "NAME_INCOME_TYPE" = 'Maternity leave';
alter table proj4_sch.app_data alter column "NAME_INCOME_TYPE" type int4 using ("NAME_INCOME_TYPE"::integer);

--'Secondary / secondary special', 'Higher education',
--       'Incomplete higher', 'Lower secondary', 'Academic degree'
update proj4_sch.app_data set "NAME_EDUCATION_TYPE" = 1 where "NAME_EDUCATION_TYPE" = 'Secondary / secondary special';
update proj4_sch.app_data set "NAME_EDUCATION_TYPE" = 2 where "NAME_EDUCATION_TYPE" = 'Higher education';
update proj4_sch.app_data set "NAME_EDUCATION_TYPE" = 3 where "NAME_EDUCATION_TYPE" = 'Incomplete higher';
update proj4_sch.app_data set "NAME_EDUCATION_TYPE" = 4 where "NAME_EDUCATION_TYPE" = 'Lower secondary';
update proj4_sch.app_data set "NAME_EDUCATION_TYPE" = 5 where "NAME_EDUCATION_TYPE" = 'Academic degree';
alter table proj4_sch.app_data alter column "NAME_EDUCATION_TYPE" type int4 using ("NAME_EDUCATION_TYPE"::integer);

--'Single / not married', 'Married', 'Civil marriage', 'Widow',
--       'Separated', 'Unknown'
update proj4_sch.app_data set "NAME_FAMILY_STATUS" = 1 where "NAME_FAMILY_STATUS" = 'Single / not married';
update proj4_sch.app_data set "NAME_FAMILY_STATUS" = 2 where "NAME_FAMILY_STATUS" = 'Married';
update proj4_sch.app_data set "NAME_FAMILY_STATUS" = 3 where "NAME_FAMILY_STATUS" = 'Civil marriage';
update proj4_sch.app_data set "NAME_FAMILY_STATUS" = 4 where "NAME_FAMILY_STATUS" = 'Widow';
update proj4_sch.app_data set "NAME_FAMILY_STATUS" = 5 where "NAME_FAMILY_STATUS" = 'Separated';
update proj4_sch.app_data set "NAME_FAMILY_STATUS" = 6 where "NAME_FAMILY_STATUS" = 'Unknown';
alter table proj4_sch.app_data alter column "NAME_FAMILY_STATUS" type int4 using ("NAME_FAMILY_STATUS"::integer);

--'House / apartment', 'Rented apartment', 'With parents',
--       'Municipal apartment', 'Office apartment', 'Co-op apartment'
update proj4_sch.app_data set "NAME_HOUSING_TYPE" = 1 where "NAME_HOUSING_TYPE" = 'House / apartment';
update proj4_sch.app_data set "NAME_HOUSING_TYPE" = 2 where "NAME_HOUSING_TYPE" = 'Rented apartment';
update proj4_sch.app_data set "NAME_HOUSING_TYPE" = 3 where "NAME_HOUSING_TYPE" = 'With parents';
update proj4_sch.app_data set "NAME_HOUSING_TYPE" = 4 where "NAME_HOUSING_TYPE" = 'Municipal apartment';
update proj4_sch.app_data set "NAME_HOUSING_TYPE" = 5 where "NAME_HOUSING_TYPE" = 'Office apartment';
update proj4_sch.app_data set "NAME_HOUSING_TYPE" = 6 where "NAME_HOUSING_TYPE" = 'Co-op apartment';
alter table proj4_sch.app_data alter column "NAME_HOUSING_TYPE" type int4 using ("NAME_HOUSING_TYPE"::integer);

--'Laborers', 'Core staff', 'Accountants', 'Managers', nan,
--       'Drivers', 'Sales staff', 'Cleaning staff', 'Cooking staff',
--       'Private service staff', 'Medicine staff', 'Security staff',
--       'High skill tech staff', 'Waiters/barmen staff',
--       'Low-skill Laborers', 'Realty agents', 'Secretaries', 'IT staff',
--       'HR staff'
update proj4_sch.app_data set "OCCUPATION_TYPE" = 1 where "OCCUPATION_TYPE" = 'Laborers';
update proj4_sch.app_data set "OCCUPATION_TYPE" = 2 where "OCCUPATION_TYPE" = 'Core staff';
update proj4_sch.app_data set "OCCUPATION_TYPE" = 3 where "OCCUPATION_TYPE" = 'Accountants';
update proj4_sch.app_data set "OCCUPATION_TYPE" = 4 where "OCCUPATION_TYPE" = 'Managers';
update proj4_sch.app_data set "OCCUPATION_TYPE" = 5 where "OCCUPATION_TYPE" = 'Drivers';
update proj4_sch.app_data set "OCCUPATION_TYPE" = 6 where "OCCUPATION_TYPE" = 'Sales staff';
update proj4_sch.app_data set "OCCUPATION_TYPE" = 7 where "OCCUPATION_TYPE" = 'Cleaning staff';
update proj4_sch.app_data set "OCCUPATION_TYPE" = 8 where "OCCUPATION_TYPE" = 'Cooking staff';
update proj4_sch.app_data set "OCCUPATION_TYPE" = 9 where "OCCUPATION_TYPE" = 'Private service staff';
update proj4_sch.app_data set "OCCUPATION_TYPE" = 10 where "OCCUPATION_TYPE" = 'Medicine staff';
update proj4_sch.app_data set "OCCUPATION_TYPE" = 11 where "OCCUPATION_TYPE" = 'Security staff';
update proj4_sch.app_data set "OCCUPATION_TYPE" = 12 where "OCCUPATION_TYPE" = 'High skill tech staff';
update proj4_sch.app_data set "OCCUPATION_TYPE" = 13 where "OCCUPATION_TYPE" = 'Waiters/barmen staff';
update proj4_sch.app_data set "OCCUPATION_TYPE" = 14 where "OCCUPATION_TYPE" = 'Low-skill Laborers';
update proj4_sch.app_data set "OCCUPATION_TYPE" = 15 where "OCCUPATION_TYPE" = 'Realty agents';
update proj4_sch.app_data set "OCCUPATION_TYPE" = 16 where "OCCUPATION_TYPE" = 'Secretaries';
update proj4_sch.app_data set "OCCUPATION_TYPE" = 17 where "OCCUPATION_TYPE" = 'IT staff';
update proj4_sch.app_data set "OCCUPATION_TYPE" = 18 where "OCCUPATION_TYPE" = 'HR staff';
alter table proj4_sch.app_data alter column "OCCUPATION_TYPE" type int4 using ("OCCUPATION_TYPE"::integer);

--'WEDNESDAY', 'MONDAY', 'THURSDAY', 'SUNDAY', 'SATURDAY', 'FRIDAY',
--       'TUESDAY'
update proj4_sch.app_data set "WEEKDAY_APPR_PROCESS_START" = 1 where "WEEKDAY_APPR_PROCESS_START" = 'SUNDAY';
update proj4_sch.app_data set "WEEKDAY_APPR_PROCESS_START" = 2 where "WEEKDAY_APPR_PROCESS_START" = 'MONDAY';
update proj4_sch.app_data set "WEEKDAY_APPR_PROCESS_START" = 3 where "WEEKDAY_APPR_PROCESS_START" = 'TUESDAY';
update proj4_sch.app_data set "WEEKDAY_APPR_PROCESS_START" = 4 where "WEEKDAY_APPR_PROCESS_START" = 'WEDNESDAY';
update proj4_sch.app_data set "WEEKDAY_APPR_PROCESS_START" = 5 where "WEEKDAY_APPR_PROCESS_START" = 'THURSDAY';
update proj4_sch.app_data set "WEEKDAY_APPR_PROCESS_START" = 6 where "WEEKDAY_APPR_PROCESS_START" = 'FRIDAY';
update proj4_sch.app_data set "WEEKDAY_APPR_PROCESS_START" = 7 where "WEEKDAY_APPR_PROCESS_START" = 'SATURDAY';
alter table proj4_sch.app_data alter column "WEEKDAY_APPR_PROCESS_START" type int4 using ("WEEKDAY_APPR_PROCESS_START"::integer);


--'Business Entity Type 3', 'School', 'Government', 'Religion',
--       'Other', 'XNA', 'Electricity', 'Medicine',
--       'Business Entity Type 2', 'Self-employed', 'Transport: type 2',
--       'Construction', 'Housing', 'Kindergarten', 'Trade: type 7',
--       'Industry: type 11', 'Military', 'Services', 'Security Ministries',
--       'Transport: type 4', 'Industry: type 1', 'Emergency', 'Security',
--       'Trade: type 2', 'University', 'Transport: type 3', 'Police',
--       'Business Entity Type 1', 'Postal', 'Industry: type 4',
--       'Agriculture', 'Restaurant', 'Culture', 'Hotel',
--       'Industry: type 7', 'Trade: type 3', 'Industry: type 3', 'Bank',
--       'Industry: type 9', 'Insurance', 'Trade: type 6',
--       'Industry: type 2', 'Transport: type 1', 'Industry: type 12',
--       'Mobile', 'Trade: type 1', 'Industry: type 5', 'Industry: type 10',
--       'Legal Services', 'Advertising', 'Trade: type 5', 'Cleaning',
--       'Industry: type 13', 'Trade: type 4', 'Telecom',
--       'Industry: type 8', 'Realtor', 'Industry: type 6'
update proj4_sch.app_data set "ORGANIZATION_TYPE" = 1 where "ORGANIZATION_TYPE" = 'Business Entity Type 3';
update proj4_sch.app_data set "ORGANIZATION_TYPE" = 2 where "ORGANIZATION_TYPE" = 'School';
update proj4_sch.app_data set "ORGANIZATION_TYPE" = 3 where "ORGANIZATION_TYPE" = 'Government';
update proj4_sch.app_data set "ORGANIZATION_TYPE" = 4 where "ORGANIZATION_TYPE" = 'Religion';
update proj4_sch.app_data set "ORGANIZATION_TYPE" = 5 where "ORGANIZATION_TYPE" = 'Other';
update proj4_sch.app_data set "ORGANIZATION_TYPE" = 6 where "ORGANIZATION_TYPE" = 'XNA';
update proj4_sch.app_data set "ORGANIZATION_TYPE" = 7 where "ORGANIZATION_TYPE" = 'Electricity';
update proj4_sch.app_data set "ORGANIZATION_TYPE" = 8 where "ORGANIZATION_TYPE" = 'Medicine';
update proj4_sch.app_data set "ORGANIZATION_TYPE" = 9 where "ORGANIZATION_TYPE" = 'Business Entity Type 2';
update proj4_sch.app_data set "ORGANIZATION_TYPE" = 10 where "ORGANIZATION_TYPE" = 'Self-employed';
update proj4_sch.app_data set "ORGANIZATION_TYPE" = 11 where "ORGANIZATION_TYPE" = 'Transport: type 2';
update proj4_sch.app_data set "ORGANIZATION_TYPE" = 12 where "ORGANIZATION_TYPE" = 'Construction';
update proj4_sch.app_data set "ORGANIZATION_TYPE" = 13 where "ORGANIZATION_TYPE" = 'Housing';
update proj4_sch.app_data set "ORGANIZATION_TYPE" = 14 where "ORGANIZATION_TYPE" = 'Kindergarten';
update proj4_sch.app_data set "ORGANIZATION_TYPE" = 15 where "ORGANIZATION_TYPE" = 'Trade: type 7';
update proj4_sch.app_data set "ORGANIZATION_TYPE" = 16 where "ORGANIZATION_TYPE" = 'Industry: type 11';
update proj4_sch.app_data set "ORGANIZATION_TYPE" = 17 where "ORGANIZATION_TYPE" = 'Military';
update proj4_sch.app_data set "ORGANIZATION_TYPE" = 18 where "ORGANIZATION_TYPE" = 'Services';
update proj4_sch.app_data set "ORGANIZATION_TYPE" = 19 where "ORGANIZATION_TYPE" = 'Security Ministries';
update proj4_sch.app_data set "ORGANIZATION_TYPE" = 20 where "ORGANIZATION_TYPE" = 'Transport: type 4';
update proj4_sch.app_data set "ORGANIZATION_TYPE" = 21 where "ORGANIZATION_TYPE" = 'Industry: type 1';
update proj4_sch.app_data set "ORGANIZATION_TYPE" = 22 where "ORGANIZATION_TYPE" = 'Emergency';
update proj4_sch.app_data set "ORGANIZATION_TYPE" = 23 where "ORGANIZATION_TYPE" = 'Security';
update proj4_sch.app_data set "ORGANIZATION_TYPE" = 24 where "ORGANIZATION_TYPE" = 'Trade: type 2';
update proj4_sch.app_data set "ORGANIZATION_TYPE" = 25 where "ORGANIZATION_TYPE" = 'University';
update proj4_sch.app_data set "ORGANIZATION_TYPE" = 26 where "ORGANIZATION_TYPE" = 'Transport: type 3';
update proj4_sch.app_data set "ORGANIZATION_TYPE" = 27 where "ORGANIZATION_TYPE" = 'Police';
update proj4_sch.app_data set "ORGANIZATION_TYPE" = 28 where "ORGANIZATION_TYPE" = 'Business Entity Type 1';
update proj4_sch.app_data set "ORGANIZATION_TYPE" = 29 where "ORGANIZATION_TYPE" = 'Postal';
update proj4_sch.app_data set "ORGANIZATION_TYPE" = 30 where "ORGANIZATION_TYPE" = 'Industry: type 4';
update proj4_sch.app_data set "ORGANIZATION_TYPE" = 31 where "ORGANIZATION_TYPE" = 'Agriculture';
update proj4_sch.app_data set "ORGANIZATION_TYPE" = 32 where "ORGANIZATION_TYPE" = 'Restaurant';
update proj4_sch.app_data set "ORGANIZATION_TYPE" = 33 where "ORGANIZATION_TYPE" = 'Culture';
update proj4_sch.app_data set "ORGANIZATION_TYPE" = 34 where "ORGANIZATION_TYPE" = 'Hotel';
update proj4_sch.app_data set "ORGANIZATION_TYPE" = 35 where "ORGANIZATION_TYPE" = 'Industry: type 7';
update proj4_sch.app_data set "ORGANIZATION_TYPE" = 36 where "ORGANIZATION_TYPE" = 'Trade: type 3';
update proj4_sch.app_data set "ORGANIZATION_TYPE" = 37 where "ORGANIZATION_TYPE" = 'Industry: type 3';
update proj4_sch.app_data set "ORGANIZATION_TYPE" = 38 where "ORGANIZATION_TYPE" = 'Bank';
update proj4_sch.app_data set "ORGANIZATION_TYPE" = 39 where "ORGANIZATION_TYPE" = 'Industry: type 9';
update proj4_sch.app_data set "ORGANIZATION_TYPE" = 40 where "ORGANIZATION_TYPE" = 'Insurance';
update proj4_sch.app_data set "ORGANIZATION_TYPE" = 41 where "ORGANIZATION_TYPE" = 'Trade: type 6';
update proj4_sch.app_data set "ORGANIZATION_TYPE" = 42 where "ORGANIZATION_TYPE" = 'Industry: type 2';
update proj4_sch.app_data set "ORGANIZATION_TYPE" = 43 where "ORGANIZATION_TYPE" = 'Transport: type 1';
update proj4_sch.app_data set "ORGANIZATION_TYPE" = 44 where "ORGANIZATION_TYPE" = 'Industry: type 12';
update proj4_sch.app_data set "ORGANIZATION_TYPE" = 45 where "ORGANIZATION_TYPE" = 'Mobile';
update proj4_sch.app_data set "ORGANIZATION_TYPE" = 46 where "ORGANIZATION_TYPE" = 'Trade: type 1';
update proj4_sch.app_data set "ORGANIZATION_TYPE" = 47 where "ORGANIZATION_TYPE" = 'Industry: type 5';
update proj4_sch.app_data set "ORGANIZATION_TYPE" = 48 where "ORGANIZATION_TYPE" = 'Industry: type 10';
update proj4_sch.app_data set "ORGANIZATION_TYPE" = 49 where "ORGANIZATION_TYPE" = 'Legal Services';
update proj4_sch.app_data set "ORGANIZATION_TYPE" = 50 where "ORGANIZATION_TYPE" = 'Advertising';
update proj4_sch.app_data set "ORGANIZATION_TYPE" = 51 where "ORGANIZATION_TYPE" = 'Trade: type 5';
update proj4_sch.app_data set "ORGANIZATION_TYPE" = 52 where "ORGANIZATION_TYPE" = 'Cleaning';
update proj4_sch.app_data set "ORGANIZATION_TYPE" = 53 where "ORGANIZATION_TYPE" = 'Industry: type 13';
update proj4_sch.app_data set "ORGANIZATION_TYPE" = 54 where "ORGANIZATION_TYPE" = 'Trade: type 4';
update proj4_sch.app_data set "ORGANIZATION_TYPE" = 55 where "ORGANIZATION_TYPE" = 'Telecom';
update proj4_sch.app_data set "ORGANIZATION_TYPE" = 56 where "ORGANIZATION_TYPE" = 'Industry: type 8';
update proj4_sch.app_data set "ORGANIZATION_TYPE" = 57 where "ORGANIZATION_TYPE" = 'Realtor';
update proj4_sch.app_data set "ORGANIZATION_TYPE" = 58 where "ORGANIZATION_TYPE" = 'Industry: type 6';
alter table proj4_sch.app_data alter column "ORGANIZATION_TYPE" type int4 using ("ORGANIZATION_TYPE"::integer);

--'reg oper account', nan, 'org spec account',
--       'reg oper spec account', 'not specified'
update proj4_sch.app_data set "FONDKAPREMONT_MODE" = 1 where "FONDKAPREMONT_MODE" = 'reg oper account';
update proj4_sch.app_data set "FONDKAPREMONT_MODE" = 2 where "FONDKAPREMONT_MODE" = 'org spec account';
update proj4_sch.app_data set "FONDKAPREMONT_MODE" = 3 where "FONDKAPREMONT_MODE" = 'reg oper spec account';
update proj4_sch.app_data set "FONDKAPREMONT_MODE" = 4 where "FONDKAPREMONT_MODE" = 'not specified';
alter table proj4_sch.app_data alter column "FONDKAPREMONT_MODE" type int4 using ("FONDKAPREMONT_MODE"::integer);


-- 'block of flats', nan, 'terraced house', 'specific housing'
update proj4_sch.app_data set "HOUSETYPE_MODE" = 1 where "HOUSETYPE_MODE" = 'block of flats';
update proj4_sch.app_data set "HOUSETYPE_MODE" = 2 where "HOUSETYPE_MODE" = 'terraced house';
update proj4_sch.app_data set "HOUSETYPE_MODE" = 3 where "HOUSETYPE_MODE" = 'specific housing';
alter table proj4_sch.app_data alter column "HOUSETYPE_MODE" type int4 using ("HOUSETYPE_MODE"::integer);

--'Stone, brick', 'Block', nan, 'Panel', 'Mixed', 'Wooden', 'Others',
--       'Monolithic'
update proj4_sch.app_data set "WALLSMATERIAL_MODE" = 1 where "WALLSMATERIAL_MODE" = 'Stone, brick';
update proj4_sch.app_data set "WALLSMATERIAL_MODE" = 2 where "WALLSMATERIAL_MODE" = 'Block';
update proj4_sch.app_data set "WALLSMATERIAL_MODE" = 3 where "WALLSMATERIAL_MODE" = 'Panel';
update proj4_sch.app_data set "WALLSMATERIAL_MODE" = 4 where "WALLSMATERIAL_MODE" = 'Mixed';
update proj4_sch.app_data set "WALLSMATERIAL_MODE" = 5 where "WALLSMATERIAL_MODE" = 'Wooden';
update proj4_sch.app_data set "WALLSMATERIAL_MODE" = 6 where "WALLSMATERIAL_MODE" = 'Others';
update proj4_sch.app_data set "WALLSMATERIAL_MODE" = 7 where "WALLSMATERIAL_MODE" = 'Monolithic';
alter table proj4_sch.app_data alter column "WALLSMATERIAL_MODE" type int4 using ("WALLSMATERIAL_MODE"::integer);

update proj4_sch.app_data set "EMERGENCYSTATE_MODE" = 1 where "EMERGENCYSTATE_MODE" = 'Yes';
update proj4_sch.app_data set "EMERGENCYSTATE_MODE" = 0 where "EMERGENCYSTATE_MODE" = 'No';
alter table proj4_sch.app_data alter column "EMERGENCYSTATE_MODE" type int4 using ("EMERGENCYSTATE_MODE"::integer);

