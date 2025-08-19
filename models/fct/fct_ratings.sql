{{
    config(
        materialized = 'incremental',
        on_schema_change = 'fail'
    )
}}

WITH src_ratings AS(
    SELECT * FROM {{    ref('src_ratings')   }}

)

SELECT
	user_id,
	movie_id,
	RATING,
	rating_timestamp
FROM src_ratings
WHERE rating IS NOT NULL 

--below is saying if the rating time stamp from source table is bigger than the current this fact table. then update value.

{% if is_incremental() %}
    AND rating_timestamp > (SELECT MAX(rating_timestamp) FROM {{this}})

{% endif %}

