/*
===============================================================================
Task: LeetCode #619 - Biggest Single Number
Dialect: Microsoft SQL Server (T-SQL)
Category: Aggregation & Subqueries
Difficulty: Easy
URL: https://leetcode.com/problems/biggest-single-number/

Problem Statement:
  A single number is a number that appeared only once in the MyNumbers table.

  Find the largest single number. If there is no single number, report null.

Schema:
  MyNumbers table:
  +-------------+------+
  | Column Name | Type |
  +-------------+------+
  | num         | int  |
  +-------------+------+

  This table may contain duplicate values and has no primary key.
===============================================================================
*/

-- Verified Solution Query:
SELECT 
    MAX(num) AS num
FROM 
    MyNumbers
WHERE 
    num IN (
        SELECT 
            num
        FROM 
            MyNumbers
        GROUP BY 
            num
        HAVING 
            COUNT(num) = 1
    );
