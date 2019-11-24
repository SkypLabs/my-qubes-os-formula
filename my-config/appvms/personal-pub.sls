# -*- coding: utf-8 -*-
# vim: set syntax=yaml ts=2 sw=2 sts=2 et :

{% from 'my-config/map.jinja' import netvm with context %}

include:
  - qvm.sys-firewall

personal-pub:
  qvm.vm:
    - name: personal-pub
    - present:
      - template: multimedia
      - label: yellow
    - prefs:
      - include-in-backups: True
      - netvm: {{ netvm }}
    - require:
      - qvm: sys-firewall
