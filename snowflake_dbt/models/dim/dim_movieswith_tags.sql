{{ config(
    materialized='ephemeral',
    description='This ephemeral model contains movie ratings data with user IDs, movie IDs, ratings, and timestamps.'
) }}

With movies AS (
    SELECT * FROM {{ ref('dim_movies') }}
),
tags AS (
    SELECT *
    FROM {{ ref('dim_genome_tags') }}
    
),
score as (
    SELECT *
    FROM {{ ref('fct_genome_scores') }}
)

SELECT m.*, 
       s.*
FROM movies m
LEFT JOIN score s  ON m.movie_id = s.movie_id
LEFT JOIN tags t ON t.tag_id = s.tag_id