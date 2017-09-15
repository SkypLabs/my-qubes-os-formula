# -*- coding: utf-8 -*-
# vim: set syntax=yaml ts=2 sw=2 sts=2 et :

include:
  - qvm.sys-firewall

personal-dev:
  qvm.vm:
    - name: personal-dev
    - present:
      - template: debian-9
      - label: grey
      - flags:
        - standalone
    - prefs:
      - memory: 400
      - maxmem: 4000
      - include-in-backups: True
      - netvm: sys-firewall
      - vcpus: 2
      - debug: false
    - require:
      - qvm: sys-firewall
