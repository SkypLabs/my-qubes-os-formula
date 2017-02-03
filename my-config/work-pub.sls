# -*- coding: utf-8 -*-
# vim: set syntax=yaml ts=2 sw=2 sts=2 et :

work-pub:
  qvm.vm:
    - name: work-pub
    - present:
      - template: fedora-23
      - label: yellow
    - prefs:
      - memory: 400
      - maxmem: 4000
      - include-in-backups: True
      - netvm: sys-firewall
      - vcpus: 2
      - debug: false
