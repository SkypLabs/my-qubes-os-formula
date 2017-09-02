# -*- coding: utf-8 -*-
# vim: set syntax=yaml ts=2 sw=2 sts=2 et :

include:
  - qvm.sys-firewall

personal-pub:
  qvm.vm:
    - name: personal-pub
    - present:
      - template: fedora-25
      - label: yellow
    - prefs:
      - memory: 400
      - maxmem: 4000
      - include-in-backups: True
      - netvm: sys-firewall
      - vcpus: 2
      - debug: false
    - require:
      - qvm: sys-firewall
