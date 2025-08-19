-- Macro is similar to a function where its resuable pieces of SQL code
{% macro no_nulls_in_columns(model)%}
    SELECT * FROM {{ model}}
    WHERE {%for col in adapter.dbt_utils.dbt_utils.get_filtered_columns_in_relation(model)%}
        {{col.column}} IS NULL or
        {% endfor %}
        FALSE

{% endmacro %}