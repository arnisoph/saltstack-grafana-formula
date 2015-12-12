#!jinja|yaml

{% set datamap = salt['formhelper.defaults']('grafana', saltenv) %}

# SLS includes/ excludes
include: {{ datamap.sls_include|default([]) }}
extend: {{ datamap.sls_extend|default({}) }}


grafana:
  pkg:
    - installed
    - pkgs: {{ datamap.pkgs }}
  service:
    - running
    - name: {{ datamap.service.name }}
    - enable: True
