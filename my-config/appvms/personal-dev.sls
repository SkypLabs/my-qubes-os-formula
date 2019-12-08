# -*- coding: utf-8 -*-
# vim: set syntax=yaml ts=2 sw=2 sts=2 et :

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
      - netvm: sys-firewall
    - require:
      - qvm: sys-firewall
