# -*- coding: utf-8 -*-
# vim: set syntax=yaml ts=2 sw=2 sts=2 et :

include:
  - qvm.sys-firewall
  - my-config.development-template

personal-dev:
  qvm.vm:
    - name: personal-dev
    - present:
      - template: development
      - label: gray
    - prefs:
      - include-in-backups: True
      - netvm: sys-firewall
    - require:
      - qvm: sys-firewall
      - sls: my-config.development-template
