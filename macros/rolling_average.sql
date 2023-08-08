{% macro rolling_average(column_name, partition_by, order_by, periods) %}
    avg( {{ column_name }} ) OVER (
                PARTITION BY {{ partition_by }}
                ORDER BY {{ order_by }}
                ROWS BETWEEN {{periods}} PRECEDING AND CURRENT ROW
            ) AS avg_{{periods}}_periods_{{ column_name }}
{% endmacro %}
