/*
╔══════════════════════════════════════════════════════════════════════════════╗
║                FRIEND REQUESTS II: WHO HAS THE MOST FRIENDS                 ║
╠══════════════════════════════════════════════════════════════════════════════╣
║ Problem  : Friend Requests II: Who Has the Most Friends                    ║
║ Source   : LeetCode                                                        ║
║ Problem # : 2056                                                           ║
║ Difficulty: Medium                                                         ║
║ Dialect  : Microsoft SQL Server (T-SQL)                                    ║
║ Category : Aggregation, UNION ALL, CTE                                     ║
╚══════════════════════════════════════════════════════════════════════════════╝

Task:
Find the person who has the most friends and the total number of friends.

The test cases guarantee that only one person has the most friends.

Table Schema:
RequestAccepted(
    requester_id INT,
    accepter_id  INT,
    accept_date  DATE,
    PRIMARY KEY (requester_id, accepter_id)
)

Expected Output:
id | num

LeetCode:
https://leetcode.com/problems/friend-requests-ii-who-has-the-most-friends/
*/

-- Verified Solution Query:

WITH Friends AS (
    SELECT requester_id AS id
    FROM RequestAccepted

    UNION ALL

    SELECT accepter_id AS id
    FROM RequestAccepted
),
FriendCounts AS (
    SELECT
        id,
        COUNT(*) AS num
    FROM Friends
    GROUP BY id
)
SELECT TOP 1
    id,
    num
FROM FriendCounts
ORDER BY num DESC;
