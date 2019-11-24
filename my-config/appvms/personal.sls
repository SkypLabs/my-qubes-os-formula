# -*- coding: utf-8 -*-
# vim: set syntax=yaml ts=2 sw=2 sts=2 et :

{% from 'my-config/map.jinja' import netvm with context %}

include:
  - qvm.personal
  - my-config.templates.personal-template

personal-prefs:
  qvm.vm:
    - name: personal
    - present:
      - template: custom-personal
      - label: blue
    - prefs:
      - include-in-backups: True
      - netvm: {{ netvm }}
    - require:
      - sls: qvm.personal
      - sls: my-config.templates.personal-template
