
{% macro clean_stale_models(database=target.database, schema=target.schema) %}
    select 
        table_type,
        table_schema,
        table_name,
        last_altered

    from {{ database}}.information_schema.tables 
    Where table_schema = upper("{{ schema }}")
    order by 4 desc
    
    {% set var=value %}
{% endmacro %}