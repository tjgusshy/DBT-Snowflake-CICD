WITH raw_movies As(
    SELECT *
    FROM {{source('snowflake_dbt', 'r_movies')}}
)

SELECT
 movieId as movie_id,
title,
genres
FROM raw_movies