# -*- coding: utf-8 -*-
# vim: set syntax=yaml ts=2 sw=2 sts=2 et :

include:
  - qvm.work
  - my-config.work-template

work-prefs:
  qvm.vm:
    - name: work
    - present:
      - template: custom-work
      - label: blue
    - prefs:
      - include-in-backups: True
      - netvm: sys-firewall
    - require:
      - sls: qvm.work
      - sls: my-config.work-template
