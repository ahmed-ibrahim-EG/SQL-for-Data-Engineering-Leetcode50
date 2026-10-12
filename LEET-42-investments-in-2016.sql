
/*
===============================================================================
Task: LeetCode #585 - Investments in 2016
Dialect: Microsoft SQL Server (T-SQL)
Category: Aggregation & Filtering
Difficulty: Medium
URL: https://leetcode.com/problems/investments-in-2016/

Problem Statement:
  Write a solution to report the sum of tiv_2016 for policyholders who:
  1. Have the same tiv_2015 value as one or more other policyholders.
  2. Have a unique (lat, lon) location pair.
  Round the result to two decimal places.

Schema:
  Insurance table:
  +-------------+-------+
  | Column Name | Type  |
  +-------------+-------+
  | pid         | int   |
  | tiv_2015    | float |
  | tiv_2016    | float |
  | lat         | float |
  | lon         | float |
  +-------------+-------+
===============================================================================
*/

-- Verified Solution Query:
WITH RepeatedTIV AS (
    SELECT
        tiv_2015
    FROM
        Insurance
    GROUP BY
        tiv_2015
    HAVING
        COUNT(*) > 1
),
UniqueLocations AS (
    SELECT
        lat,
        lon
    FROM
        Insurance
    GROUP BY
        lat,
        lon
    HAVING
        COUNT(*) = 1
)
SELECT
    ROUND(SUM(i.tiv_2016), 2) AS tiv_2016
FROM
    Insurance AS i
INNER JOIN
    RepeatedTIV AS r
    ON i.tiv_2015 = r.tiv_2015
INNER JOIN
    UniqueLocations AS u
    ON i.lat = u.lat
    AND i.lon = u.lon;
