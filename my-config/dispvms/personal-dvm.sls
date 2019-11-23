# -*- coding: utf-8 -*-
# vim: set syntax=yaml ts=2 sw=2 sts=2 et :

include:
  - qvm.sys-firewall
  - my-config.templates.personal-template

personal-dvm-prefs:
  qvm.vm:
    - name: personal-dvm
    - present:
      - template: custom-personal
      - label: red
    - prefs:
      - include-in-backups: False
      - netvm: sys-firewall
      - template_for_dispvms: True
    - features:
      - enable:
        - appmenus-dispvm
    - require:
      - qvm: sys-firewall
      - sls: my-config.templates.personal-template
