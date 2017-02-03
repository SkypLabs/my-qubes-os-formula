# -*- coding: utf-8 -*-
# vim: set syntax=yaml ts=2 sw=2 sts=2 et :

vault:
  qvm.vm:
    - name: vault
    - present:
      - template: fedora-23
      - label: black
    - prefs:
      - memory: 400
      - maxmem: 4000
      - include-in-backups: True
      - netvm: none
      - vcpus: 2
      - debug: false
