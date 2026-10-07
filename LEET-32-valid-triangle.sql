/*
===============================================================================
Task: LeetCode #610 - Triangle Judgement
Dialect: Microsoft SQL Server (T-SQL)
Category: CASE WHEN, Conditional Logic
Difficulty: Easy
URL: https://leetcode.com/problems/triangle-judgement/

Problem Statement:
  Report for every three line segments whether they can form a triangle.

  Return the result table in any order.

Schema:
  Triangle table:
  +-------------+------+
  | Column Name | Type |
  +-------------+------+
  | x           | int  |
  | y           | int  |
  | z           | int  |
  +-------------+------+

  Primary Key:
    (x, y, z)
===============================================================================
*/

-- Verified Solution Query:
SELECT
    x,
    y,
    z,
    CASE
        WHEN x + y > z
         AND x + z > y
         AND y + z > x
        THEN 'Yes'
        ELSE 'No'
    END AS triangle
FROM
    Triangle;
