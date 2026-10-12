```sql
/*
===============================================================================
Task: LeetCode #1527 - Patients With a Condition
Dialect: Microsoft SQL Server (T-SQL)
Category: String Matching & Pattern Filtering
Difficulty: Easy
URL: https://leetcode.com/problems/patients-with-a-condition/

Problem Statement:
  Write a solution to find patients who have Type I Diabetes.
  A Type I Diabetes condition code always starts with 'DIAB1'.
  Return the result table in any order.

Schema:
  Patients table:
  +--------------+---------+
  | Column Name  | Type    |
  +--------------+---------+
  | patient_id   | int     |
  | patient_name | varchar |
  | conditions   | varchar |
  +--------------+---------+
===============================================================================
*/

-- Verified Solution Query:
SELECT
    patient_id,
    patient_name,
    conditions
FROM
    Patients
WHERE
    conditions LIKE 'DIAB1%'
    OR conditions LIKE '% DIAB1%';
```
