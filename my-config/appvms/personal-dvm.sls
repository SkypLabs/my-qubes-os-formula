# -*- coding: utf-8 -*-
# vim: set syntax=yaml ts=2 sw=2 sts=2 et :

include:
  - qvm.personal
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
    - features:
      - enable:
        - appmenus-dispvm
    - tags:
      - add:
        - template_for_dispvms
    - require:
      - sls: qvm.personal
      - sls: my-config.templates.personal-template
