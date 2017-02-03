# -*- coding: utf-8 -*-
# vim: set syntax=yaml ts=2 sw=2 sts=2 et :

include:
  - my-config.personal-template

personal:
  qvm.vm:
    - name: personal
    - present:
      - template: custom-personal
      - label: blue
    - prefs:
      - memory: 400
      - maxmem: 4000
      - include-in-backups: True
      - netvm: sys-firewall
      - vcpus: 2
      - debug: false
