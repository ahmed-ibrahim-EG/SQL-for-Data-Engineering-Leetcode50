/*
=============================================================================
Problem: 1193. Monthly Transactions I
Platform: LeetCode
Category: SQL / Database
File Name: LEET-06-Monthly-Transactions-I.sql
=============================================================================

[Table Schema]
Table: Transactions
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| country     | varchar |
| state       | enum    |
| amount      | int     |
| trans_date  | date    |
+-------------+---------+

id is the primary key of this table.

The state column is an enum of type:
["approved", "declined"].

The table contains information about incoming transactions.

[Problem Description]
Write an SQL query to find for each month and country:

- The number of transactions.
- The total amount of all transactions.
- The number of approved transactions.
- The total amount of approved transactions.

Return the result table in any order.

[Required Output Columns]
+-----------------------+
| Column Name           |
+-----------------------+
| month                 |
| country               |
| trans_count           |
| approved_count        |
| trans_total_amount    |
| approved_total_amount |
+-----------------------+

[Example]
Input:
Transactions table:
+------+---------+----------+--------+------------+
| id   | country | state    | amount | trans_date |
+------+---------+----------+--------+------------+
| 121  | US      | approved | 1000   | 2018-12-18 |
| 122  | US      | declined | 2000   | 2018-12-19 |
| 123  | US      | approved | 2000   | 2019-01-01 |
| 124  | DE      | approved | 2000   | 2019-01-07 |
+------+---------+----------+--------+------------+

Output:
+----------+---------+-------------+----------------+--------------------+-----------------------+
| month    | country | trans_count | approved_count | trans_total_amount | approved_total_amount |
+----------+---------+-------------+----------------+--------------------+-----------------------+
| 2018-12  | US      | 2           | 1              | 3000               | 1000                  |
| 2019-01  | US      | 1           | 1              | 2000               | 2000                  |
| 2019-01  | DE      | 1           | 1              | 2000               | 2000                  |
+----------+---------+-------------+----------------+--------------------+-----------------------+

[Logic]
For each Month + Country:

- trans_count:
  Count all transactions.

- approved_count:
  Count only transactions where state = 'approved'.

- trans_total_amount:
  Sum the amount of all transactions.

- approved_total_amount:
  Sum the amount only for transactions where state = 'approved'.

The solution uses GROUP BY with conditional aggregation.
=============================================================================
*/

-- Solution:

SELECT
    FORMAT(trans_date, 'yyyy-MM') AS month,
    country,

    COUNT(*) AS trans_count,

    SUM(
        CASE
            WHEN state = 'approved' THEN 1
            ELSE 0
        END
    ) AS approved_count,

    SUM(amount) AS trans_total_amount,

    SUM(
        CASE
            WHEN state = 'approved' THEN amount
            ELSE 0
        END
    ) AS approved_total_amount

FROM
    Transactions

GROUP BY
    FORMAT(trans_date, 'yyyy-MM'),
    country;
