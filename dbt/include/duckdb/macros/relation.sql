{% macro write_to_file(relation, location, format) -%}
  {% call statement('write_to_file') -%}
    copy {{ relation }} to '{{ location }}' (FORMAT '{{ format }}');
  {%- endcall %}
{% endmacro %}