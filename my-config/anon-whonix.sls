# -*- coding: utf-8 -*-
# vim: set syntax=yaml ts=2 sw=2 sts=2 et :

anon-whonix:
  qvm.vm:
    - name: anon-whonix
    - present:
      - template: whonix-ws
      - label: red
    - prefs:
      - memory: 400
      - maxmem: 4000
      - include-in-backups: False
      - netvm: sys-whonix
      - vcpus: 2
      - debug: false
