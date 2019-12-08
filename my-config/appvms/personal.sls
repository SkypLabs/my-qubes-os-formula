# -*- coding: utf-8 -*-
# vim: set syntax=yaml ts=2 sw=2 sts=2 et :

{% from 'my-config/map.jinja' import netvm with context %}

include:
  - my-config.templates.personal-template
  - qvm.{{ netvm.name }}
  - qvm.personal

personal-prefs:
  qvm.vm:
    - name: personal
    - present:
      - template: custom-personal
      - label: blue
    - prefs:
      - include-in-backups: True
      - netvm: {{ netvm.name }}
    - require:
      - sls: my-config.templates.personal-template
      - sls: qvm.{{ netvm.name }}
      - sls: qvm.personal
