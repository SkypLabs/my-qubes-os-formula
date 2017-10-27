# -*- coding: utf-8 -*-
# vim: set syntax=yaml ts=2 sw=2 sts=2 et :

include:
  - qvm.personal
  - my-config.personal-template

personal-prefs:
  qvm.vm:
    - name: personal
    - present:
      - template: custom-personal
      - label: blue
    - prefs:
      - include-in-backups: True
      - netvm: sys-firewall
    - require:
      - sls: qvm.personal
      - sls: my-config.personal-template
