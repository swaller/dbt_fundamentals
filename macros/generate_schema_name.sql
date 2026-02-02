{% macro generate_schema_name(custom_schema_name, node) -%}
    {%- set default_schema = target.schema -%}
    
    {# If we are in PROD or UAT, and a custom schema is provided, use ONLY the custom name #}
    {%- if custom_schema_name is not none -%}
        {{ custom_schema_name | trim }}
    
    {# If no custom schema is provided, fall back to the default from profiles.yml #}
    {%- else -%}
        {{ default_schema }}
    {%- endif -%}
{%- endmacro %}