WITH raw_movies AS(
    SELECT * FROM {{ source('netflix','r_movies') }}
--above uses the table and identifier name in sources.yml instead of the directory on SNOW
-- This is the directory on SNOW  MOVIELENS.RAW.RAW_MOVIES
)
SELECT
    movieId AS movie_id,
    title,
    genres
FROM raw_movies
