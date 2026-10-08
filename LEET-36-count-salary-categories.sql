/*
===============================================================================
Task: LeetCode #1907 - Count Salary Categories
File: LEET-36-count-salary-categories.sql
Dialect: Microsoft SQL Server (T-SQL)
Category: CASE / CTE / LEFT JOIN / GROUP BY
Difficulty: Easy
===============================================================================

Problem Statement:
------------------
Calculate the number of bank accounts for each salary category.

Salary categories:
    Low Salary:
        income < 20000

    Average Salary:
        20000 <= income <= 50000

    High Salary:
        income > 50000

The result must contain all three categories.
If there are no accounts in a category, return 0.

Schema:
-------
Accounts
+-------------+------+
| Column Name | Type |
+-------------+------+
| account_id  | int  |
| income      | int  |
+-------------+------+

account_id is the primary key.

===============================================================================
*/

WITH Categories AS (
    SELECT 'Low Salary' AS category
    UNION ALL
    SELECT 'Average Salary'
    UNION ALL
    SELECT 'High Salary'
),
AccountCategories AS (
    SELECT
        CASE
            WHEN income < 20000 THEN 'Low Salary'
            WHEN income BETWEEN 20000 AND 50000 THEN 'Average Salary'
            WHEN income > 50000 THEN 'High Salary'
        END AS category,
        account_id
    FROM Accounts
)
SELECT
    c.category,
    COUNT(ac.account_id) AS accounts_count
FROM Categories c
LEFT JOIN AccountCategories ac
    ON c.category = ac.category
GROUP BY c.category;
