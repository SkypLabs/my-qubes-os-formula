# -*- coding: utf-8 -*-
# vim: set syntax=yaml ts=2 sw=2 sts=2 et :

{% from 'my-config/map.jinja' import netvm with context %}
{% from 'my-config/map.jinja' import templates with context %}

include:
  - qvm.{{ netvm.name }}

personal-dev:
  qvm.vm:
    - name: personal-dev
    - present:
      - template: {{ templates.debian }}
      - label: gray
      - flags:
        - standalone
    - prefs:
      - include-in-backups: True
      - netvm: {{ netvm.name }}
    - require:
      - qvm: {{ netvm.name }}
