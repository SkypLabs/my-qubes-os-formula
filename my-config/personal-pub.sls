# -*- coding: utf-8 -*-
# vim: set syntax=yaml ts=2 sw=2 sts=2 et :

include:
  - qvm.sys-firewall

personal-pub:
  qvm.vm:
    - name: personal-pub
    - present:
      - template: fedora-26
      - label: yellow
    - prefs:
      - include-in-backups: True
      - netvm: sys-firewall
    - require:
      - qvm: sys-firewall
