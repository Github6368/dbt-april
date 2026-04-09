{% macro union_tables_by_prefix(database, schema, prfix) %}

    {% set tables=dbt_utils.get_relations_by_prefix(database=database, schema=schema, prfix=prefix ) %}

    {% for talbe in tables %}
        {% if not loop.first %}
            union all
        {% endif %}
        
    {% endfor %}
        
{% endmacro %}