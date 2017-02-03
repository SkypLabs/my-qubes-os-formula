# -*- coding: utf-8 -*-
# vim: set syntax=yaml ts=2 sw=2 sts=2 et :

include:
  - my-config.untrusted-template

untrusted:
  qvm.vm:
    - name: untrusted
    - present:
      - template: custom-untrusted
      - label: red
    - prefs:
      - memory: 400
      - maxmem: 4000
      - include-in-backups: True
      - netvm: sys-firewall
      - vcpus: 2
      - debug: false
