{{config(
    materialized='table',
    description='This table contains the raw movie ratings data from the MOVIELENS.RAW.RAW_RATINGS table, with user IDs, movie IDs, ratings, and timestamps.',
)}}
WITH raw_ratings As(
    SELECT *
    FROM MOVIELENS.RAW.RAW_RATINGS
)

SELECT
 userId as user_id,
 movieId as movie_id,
 rating,
 TO_TIMESTAMP(timestamp) as rating_timestamp
FROM raw_ratings