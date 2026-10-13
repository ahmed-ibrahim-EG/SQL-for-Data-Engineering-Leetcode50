
/*
===============================================================================
Task: LeetCode #196 - Delete Duplicate Emails
Dialect: Microsoft SQL Server (T-SQL)
Category: DELETE & CTE & Window Functions
Difficulty: Easy
URL: https://leetcode.com/problems/delete-duplicate-emails/

Problem Statement:
  Delete all duplicate emails, keeping only one unique email with the smallest id.

Schema:
  Person table:
  +-------------+---------+
  | Column Name | Type    |
  +-------------+---------+
  | id          | int     |
  | email       | varchar |
  +-------------+---------+
  id is the primary key.
===============================================================================
*/

-- Verified Solution Query:
WITH CTE AS (
    SELECT
        id,
        email,
        ROW_NUMBER() OVER (
            PARTITION BY email
            ORDER BY id ASC
        ) AS RowNum
    FROM Person
)
DELETE FROM CTE
WHERE RowNum > 1;
