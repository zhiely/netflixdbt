--get a single column (user_id) containing all unique user IDs that appear in either the ratings or tags data.
WITH ratings AS (
    SELECT DISTINCT user_id FROM {{ ref('src_ratings')}}
),

tags AS (
    SELECT DISTINCT user_id FROM {{ ref('src_tags')}}
)

SELECT DISTINCT user_id
FROM (
    SELECT * FROM ratings
    union
    SELECT * FROM tags
)