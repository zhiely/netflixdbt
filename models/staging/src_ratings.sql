WITH raw_ratings AS(
    SELECT * FROM MOVIELENS.RAW.RAW_RATINGS -- This is the directory on SNOW 

)

SELECT
	USERID AS user_id,
	MOVIEID AS movie_id,
	RATING,
	TO_TIMESTAMP_LTZ(TIMESTAMP) AS rating_timestamp--TO_TIMESTAMP_LTZ() converts a numeric or string timestamp into a timestamp with local time zone (LTZ) format in Snowflake.

FROM raw_ratings

