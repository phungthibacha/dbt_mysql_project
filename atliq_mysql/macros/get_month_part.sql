{% macro get_month_part(date_column) %}

(
    SELECT 
        EXTRACT(MONTH FROM {{ date_column }}) as month
)

{% endmacro %}