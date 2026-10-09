/*
===============================================================================
Task: LeetCode #1341 - Movie Rating
Dialect: Microsoft SQL Server (T-SQL)
Category: Aggregation, CTEs & Sorting
Difficulty: Medium
URL: https://leetcode.com/problems/movie-rating/

Problem Statement:
    1. Find the user who rated the greatest number of movies.
       If there is a tie, return the lexicographically smaller user name.

    2. Find the movie with the highest average rating in February 2020.
       If there is a tie, return the lexicographically smaller movie title.

    3. Return both results in a single column named results.

Schema:
    Movies:
        movie_id INT (Primary Key)
        title VARCHAR (Unique)

    Users:
        user_id INT (Primary Key)
        name VARCHAR (Unique)

    MovieRating:
        movie_id INT
        user_id INT
        rating INT
        created_at DATE
        Primary Key: (movie_id, user_id)
===============================================================================
*/

-- Solution Query:

WITH UserRatingCounts AS (
    SELECT
        user_id,
        COUNT(*) AS rating_count
    FROM MovieRating
    GROUP BY user_id
),
MovieAverageRatings AS (
    SELECT
        movie_id,
        AVG(CAST(rating AS DECIMAL(10, 2))) AS avg_rating
    FROM MovieRating
    WHERE created_at >= '2020-02-01'
      AND created_at <  '2020-03-01'
    GROUP BY movie_id
)
SELECT results
FROM (
    SELECT TOP (1)
        u.name AS results
    FROM UserRatingCounts AS urc
    INNER JOIN Users AS u
        ON urc.user_id = u.user_id
    ORDER BY
        urc.rating_count DESC,
        u.name ASC
) AS BestUser

UNION ALL

SELECT results
FROM (
    SELECT TOP (1)
        m.title AS results
    FROM MovieAverageRatings AS mar
    INNER JOIN Movies AS m
        ON mar.movie_id = m.movie_id
    ORDER BY
        mar.avg_rating DESC,
        m.title ASC
) AS BestMovie;
