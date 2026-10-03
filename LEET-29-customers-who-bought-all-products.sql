/*
===============================================================================
Task: LeetCode #1045 - Customers Who Bought All Products
Dialect: Microsoft SQL Server (T-SQL)
Category: Aggregation & Subqueries
Difficulty: Medium
URL: https://leetcode.com/problems/customers-who-bought-all-products/

Problem Statement:
  Write a solution to report the customer ids from the Customer table that
  bought all the products in the Product table.

  Return the result table in any order.

Schema:
  Customer table:
  +-------------+---------+
  | Column Name | Type    |
  +-------------+---------+
  | customer_id | int     |
  | product_key | int     |
  +-------------+---------+

  Customer may contain duplicate rows.
  customer_id is not NULL.
  product_key is a foreign key referencing Product.

  Product table:
  +-------------+
  | Column Name |
  +-------------+
  | product_key |
  +-------------+

  product_key is the primary key of Product.
===============================================================================
*/

-- Verified Solution Query:
SELECT 
    customer_id
FROM 
    Customer
GROUP BY 
    customer_id
HAVING 
    COUNT(DISTINCT product_key) = (
        SELECT 
            COUNT(*)
        FROM 
            Product
    );
