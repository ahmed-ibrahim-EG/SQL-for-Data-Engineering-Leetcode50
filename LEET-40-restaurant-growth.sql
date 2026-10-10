```sql
/*
===============================================================================
Task: LeetCode #1321 - Restaurant Growth
Dialect: Microsoft SQL Server (T-SQL)
Category: Aggregation, CTEs & Window Functions
Difficulty: Medium
URL: https://leetcode.com/problems/restaurant-growth/

Problem Statement:
    1. Calculate the total amount paid by customers for each day.
    2. Compute the 7-day moving total, including the current day
       and the 6 preceding days.
    3. Calculate the average amount over the same 7-day window.
    4. Return only dates with a complete 7-day window.
    5. Round average_amount to two decimal places.
    6. Return the result ordered by visited_on in ascending order.

Schema:
    Customer:
        customer_id INT
        name VARCHAR
        visited_on DATE
        amount INT
        Primary Key: (customer_id, visited_on)
===============================================================================
*/

-- Solution Query:

WITH DailyTotals AS (
    SELECT
        visited_on,
        SUM(amount) AS daily_amount
    FROM Customer
    GROUP BY visited_on
),
MovingTotals AS (
    SELECT
        visited_on,
        SUM(daily_amount) OVER (
            ORDER BY visited_on
            ROWS BETWEEN 6 PRECEDING AND CURRENT ROW
        ) AS amount,
        COUNT(*) OVER (
            ORDER BY visited_on
            ROWS BETWEEN 6 PRECEDING AND CURRENT ROW
        ) AS days_count
    FROM DailyTotals
)
SELECT
    visited_on,
    amount,
    CAST(
        ROUND(amount / 7.0, 2)
        AS DECIMAL(10, 2)
    ) AS average_amount
FROM MovingTotals
WHERE days_count = 7
ORDER BY visited_on ASC;
```
