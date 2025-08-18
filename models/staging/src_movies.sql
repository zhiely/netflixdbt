WITH raw_movies AS(
    SELECT * FROM MOVIELENS.RAW.RAW_MOVIES -- This is the directory on SNOW 

)

SELECT
    movieId AS movie_id,
    title,
    genres
FROM raw_movies

