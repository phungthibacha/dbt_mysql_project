{% macro get_year_part(date_column) %}

(
    SELECT 
        EXTRACT(YEAR FROM {{ date_column }}) as year
)

{% endmacro %}