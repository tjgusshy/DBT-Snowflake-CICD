{{config(
    materialized='table'
)}}

WITH raw_tags AS(
    SELECT *
    FROM MOVIELENS.RAW.RAW_TAGS
)
SELECT
    userId as user_id,
    movieId as movie_id,
    tag,
    TO_TIMESTAMP(timestamp) as tag_timestamp
FROM raw_tags