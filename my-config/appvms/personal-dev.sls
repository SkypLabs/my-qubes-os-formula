# -*- coding: utf-8 -*-
# vim: set syntax=yaml ts=2 sw=2 sts=2 et :

{% from 'my-config/map.jinja' import netvm with context %}

include:
  - qvm.sys-firewall

personal-dev:
  qvm.vm:
    - name: personal-dev
    - present:
      - template: debian-9
      - label: gray
      - flags:
        - standalone
    - prefs:
      - include-in-backups: True
      - netvm: {{ netvm }}
    - require:
      - qvm: sys-firewall
