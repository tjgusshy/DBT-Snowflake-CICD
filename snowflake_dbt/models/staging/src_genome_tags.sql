WITH raw_genome_tags AS(
    SELECT *
    FROM MOVIELENS.RAW.RAW_GENOME_TAGS
)

SELECT
    tag,
    tagId as tag_id
FROM raw_genome_tags