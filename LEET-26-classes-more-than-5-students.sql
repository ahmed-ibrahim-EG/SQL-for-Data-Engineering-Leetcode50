/*
===============================================================================
Task: LeetCode #596 - Classes More Than 5 Students
Dialect: Microsoft SQL Server (T-SQL)
Category: Aggregation & GROUP BY
Difficulty: Easy
URL: https://leetcode.com/problems/classes-more-than-5-students/

Problem Statement:
  Write a solution to find all the classes that have at least five students.
  Return the result table in any order.

Schema:
  Courses table:
  +-------------+---------+
  | Column Name | Type    |
  +-------------+---------+
  | student     | varchar |
  | class       | varchar |
  +-------------+---------+

  (student, class) is the primary key, meaning each student can appear
  only once within the same class.
===============================================================================
*/

-- Verified Solution Query:
WITH ClassCounts AS (
    SELECT 
        class,
        COUNT(student) AS student_count
    FROM 
        Courses
    GROUP BY 
        class
)
SELECT 
    class
FROM 
    ClassCounts
WHERE 
    student_count >= 5;
