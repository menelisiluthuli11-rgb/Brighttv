-- Databricks notebook source
--Telling databricks to use "Bright-TV " catalogand the "data" schema
SELECT*
FROM brighttv.data.userprofile;

--Running the full tabkes
SELECT*
FROM brighttv.data.viewership;

USE brighttv.data;

--Gender checks
SELECT DISTINCT Gender
FROM brighttv.data.userprofile;

SELECT DISTINCT
    CASE
        WHEN Gender = 'None' THEN 'unknown' -- Replaces the value 'None with 'unknown
        WHEN Gender = ' ' THEN 'unknown' -- Replaces the blanks with 'unknown'
        WHEN Gender = 'Null' THEN 'unknown'
    ELSE Gender
    END AS Gender_clean
    FROM brighttv.data.userprofile;




