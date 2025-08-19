-- check any new records since last snapshot run. scd 2 which is timestamp column to identify changes
--surrogate key to create new unique row to identify grain of the table
{% snapshot snap_tags %}

{{
    config(
        target_schema ='snapshots',
        unique_key =['user_id','movie_id','tag'],
        strategy = 'timestamp', 
        updated_at = 'tag_timestamp',
        invalidate_hard_deletes = True

    )

}}

SELECT
{{ dbt_utils.generate_surrogate_key(['user_id','movie_id','tag'])}} AS user_movie_tag_sk,
	user_id,
	movie_id,
	TAG,
    rating_timestamp AS tag_timestamp
from {{ ref('src_tags')}}
LIMIT 100

{%endsnapshot%}