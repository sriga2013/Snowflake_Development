-- This file contains DDL of file format used for the automation
--- Cumulative table list and file format:
-- File format for Table : subscriber 
CREATE OR REPLACE FILE FORMAT ff_subscriber
type = csv 
RECORD_DELIMITER = '\n' 
FIELD_DELIMITER = ',' 
ERROR_ON_COLUMN_COUNT_MISMATCH = TRUE 
FIELD_OPTIONALLY_ENCLOSED_BY = '\"' 
NULL_IF = ('\\N', 'NULL', 'NUL', '')
skip_header = 1;

-- File format for Table: newsletter 
CREATE OR REPLACE FILE FORMAT ff_newsletter
type = csv 
RECORD_DELIMITER = '\n' 
FIELD_DELIMITER = ',' 
ERROR_ON_COLUMN_COUNT_MISMATCH = TRUE 
FIELD_OPTIONALLY_ENCLOSED_BY = '\"' 
NULL_IF = ('\\N', 'NULL', 'NUL', '')
skip_header = 1 
TIMESTAMP_FORMAT = 'yyyy/mm/dd HH24:MI:SS'
empty_field_as_null = true ENCODING = 'iso-8859-1';