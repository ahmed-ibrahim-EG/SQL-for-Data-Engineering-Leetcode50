/*
===============================================================================
Task: #15 - Not Boring Movies (LeetCode #620)
Dialect: Microsoft SQL Server (T-SQL)
Category: Basic Select & Filtering
Difficulty: Easy
URL: https://leetcode.com/problems/not-boring-movies/

Problem Statement:
  Write a solution to report the movies with an odd-numbered ID and a description that is not "boring".
  Return the result table ordered by rating in descending order.

Schema:
  Cinema table:
  +----------------+----------+
  | Column Name    | Type     |
  +----------------+----------+
  | id             | int      |
  | movie          | varchar  |
  | description    | varchar  |
  | rating         | float    |
  +----------------+----------+
===============================================================================
*/

-- Verified Solution Query:
SELECT 
    id, 
    movie, 
    description, 
    rating
FROM 
    Cinema
WHERE 
    id % 2 = 1 
    AND description <> 'boring'
ORDER BY 
    rating DESC;
