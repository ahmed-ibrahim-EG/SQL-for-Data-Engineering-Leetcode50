/*
===============================================================================
Task: LeetCode #1729 - Find Followers Count
Dialect: Microsoft SQL Server (T-SQL)
Category: Aggregation & GROUP BY
Difficulty: Easy
URL: https://leetcode.com/problems/find-followers-count/

Problem Statement:
  Write a solution that will, for each user, return the number of followers.
  Return the result table ordered by user_id in ascending order.

Schema:
  Followers table:
  +-------------+------+
  | Column Name | Type |
  +-------------+------+
  | user_id     | int  |
  | follower_id | int  |
  +-------------+------+

  (user_id, follower_id) is the primary key, meaning each user-follower
  relationship is unique.
===============================================================================
*/

-- Verified Solution Query:
SELECT 
    user_id,
    COUNT(follower_id) AS followers_count
FROM 
    Followers
GROUP BY 
    user_id
ORDER BY 
    user_id ASC;
