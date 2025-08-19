-- singular test case: this is to test fct_genome_scores's column called relevance_score  if relevance_score is less than or equal to 3. If fail, means that its less than 3.



-- SELECT 
-- 	movie_id,
--     tag_id,
--     relevance_score
-- FROM {{ ref('fct_genome_scores')}}
-- test fail

SELECT 
	movie_id,
    tag_id,
    relevance_score
FROM {{ ref('fct_genome_scores')}}
WHERE relevance_score <= 0
-- test pass