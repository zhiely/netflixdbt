WITH src_genome_tags AS (
    SELECT * FROM {{    ref('src_genome_tags')  }}
)
SELECT 
    tag_id,
    INITCAP(TRIM(TAG)) AS tag_name
FROM src_genome_tags