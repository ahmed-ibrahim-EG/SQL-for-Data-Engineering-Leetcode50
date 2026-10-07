/*
===============================================================================
Task: LeetCode #1783 - Primary Department for Each Employee
Dialect: Microsoft SQL Server (T-SQL)
Category: EXISTS / NOT EXISTS, Correlated Subqueries
Difficulty: Easy
URL: https://leetcode.com/problems/primary-department-for-each-employee/

Problem Statement:
  Write a solution to report all the employees with their primary department.

  Employees can belong to multiple departments. If an employee belongs to
  multiple departments, report their primary department (primary_flag = 'Y').

  If an employee belongs to only one department, report their only department,
  even if primary_flag = 'N'.

  Return the result table in any order.

Schema:
  Employee table:
  +---------------+---------+
  | Column Name   | Type    |
  +---------------+---------+
  | employee_id   | int     |
  | department_id | int     |
  | primary_flag  | varchar |
  +---------------+---------+

  Primary Key:
    (employee_id, department_id)

  primary_flag:
    'Y' = Primary department
    'N' = Non-primary department
===============================================================================
*/

-- Verified Solution Query:
SELECT
    employee_id,
    department_id
FROM
    Employee e
WHERE
    (
        EXISTS (
            SELECT 1
            FROM Employee e2
            WHERE e2.employee_id = e.employee_id
              AND e2.primary_flag = 'Y'
        )
        AND e.primary_flag = 'Y'
    )
    OR
    (
        NOT EXISTS (
            SELECT 1
            FROM Employee e2
            WHERE e2.employee_id = e.employee_id
              AND e2.primary_flag = 'Y'
        )
        AND NOT EXISTS (
            SELECT 1
            FROM Employee e2
            WHERE e2.employee_id = e.employee_id
              AND e2.department_id <> e.department_id
        )
    );
