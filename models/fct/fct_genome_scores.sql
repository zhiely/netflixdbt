WITH src_scores AS (
    SELECT * FROM {{ ref('src_genome_scores')}}
)
SELECT 
	movie_id,
    tag_id,
    ROUND(RELEVANCE,4) AS relevance_score
FROM src_scores
WHERE RELEVANCE > 0