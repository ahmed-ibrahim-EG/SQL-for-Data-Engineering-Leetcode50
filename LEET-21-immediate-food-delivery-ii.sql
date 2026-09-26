```sql
/*
===============================================================================
Task: LeetCode #1174 - Immediate Food Delivery II
Dialect: Microsoft SQL Server (T-SQL)
Category: Aggregation & Join
Difficulty: Medium
URL: https://leetcode.com/problems/immediate-food-delivery-ii/

Problem Statement:
  If the customer's preferred delivery date is the same as the order date,
  then the order is called immediate; otherwise, it is called scheduled.

  The first order of a customer is the order with the earliest order date.

  Write a solution to find the percentage of immediate orders among all
  the first orders of every customer.

  Return the percentage rounded to 2 decimal places.

Schema:
  Delivery table:
  +-----------------------------+---------+
  | Column Name                 | Type    |
  +-----------------------------+---------+
  | delivery_id                | int     |
  | customer_id                | int     |
  | order_date                 | date    |
  | customer_pref_delivery_date| date    |
  +-----------------------------+---------+

===============================================================================
*/

-- Verified Solution Query:
SELECT 
    ROUND(
        SUM(
            CASE 
                WHEN d.order_date = d.customer_pref_delivery_date 
                THEN 1.0 
                ELSE 0.0 
            END
        ) * 100.0 / COUNT(*), 
        2
    ) AS immediate_percentage
FROM Delivery d
INNER JOIN (
    SELECT 
        customer_id, 
        MIN(order_date) AS min_order_date
    FROM Delivery
    GROUP BY customer_id
) first_orders 
    ON d.customer_id = first_orders.customer_id 
   AND d.order_date = first_orders.min_order_date;
```
