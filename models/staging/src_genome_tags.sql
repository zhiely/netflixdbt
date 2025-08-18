WITH raw_genome_tags AS(
    SELECT * FROM MOVIELENS.RAW.RAW_GENOME_TAGS -- This is the directory on SNOW 
)

SELECT
	TAGID AS tag_id,
    TAG
FROM raw_genome_tags
