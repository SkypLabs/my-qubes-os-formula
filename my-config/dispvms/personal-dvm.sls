# -*- coding: utf-8 -*-
# vim: set syntax=yaml ts=2 sw=2 sts=2 et :

{% from 'my-config/map.jinja' import netvm with context %}

include:
  - my-config.templates.personal-template
  - qvm.{{ netvm.name }}

personal-dvm-prefs:
  qvm.vm:
    - name: personal-dvm
    - present:
      - template: custom-personal
      - label: red
    - prefs:
      - include-in-backups: False
      - netvm: {{ netvm.name }}
      - template_for_dispvms: True
    - features:
      - enable:
        - appmenus-dispvm
    - require:
      - sls: my-config.templates.personal-template
      - qvm: {{ netvm.name }}
