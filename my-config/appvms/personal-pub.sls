# -*- coding: utf-8 -*-
# vim: set syntax=yaml ts=2 sw=2 sts=2 et :

{% from 'my-config/map.jinja' import netvm with context %}

include:
  - my-config.templates.multimedia-template
  - qvm.{{ netvm.name }}

personal-pub:
  qvm.vm:
    - name: personal-pub
    - present:
      - template: multimedia
      - label: yellow
    - prefs:
      - include-in-backups: True
      - netvm: {{ netvm.name }}
    - require:
      - sls: my-config.templates.multimedia-template
      - qvm: {{ netvm.name }}
