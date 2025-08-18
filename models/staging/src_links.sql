WITH raw_links AS(
    SELECT * FROM MOVIELENS.RAW.RAW_LINKS -- This is the directory on SNOW 
)

SELECT
	MOVIEID AS movie_id,
	IMDBID AS imdb_id,
	TMDBID AS tmdb_id,
FROM raw_links
