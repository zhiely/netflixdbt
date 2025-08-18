
WITH raw_genome_scores AS(
    SELECT * FROM MOVIELENS.RAW.RAW_GENOME_SCORES -- This is the directory on SNOW 
)

SELECT
	MOVIEID AS movie_id,
    TAGID AS tag_id,
    RELEVANCE
FROM raw_genome_scores