# -*- coding: utf-8 -*-
# vim: set syntax=yaml ts=2 sw=2 sts=2 et :

include:
  - qvm.sys-firewall
  - my-config.multimedia-template

personal-multimedia:
  qvm.vm:
    - name: personal-multimedia
    - present:
      - template: multimedia
      - label: yellow
    - prefs:
      - include-in-backups: True
      - netvm: sys-firewall
    - require:
      - qvm: sys-firewall
      - sls: my-config.multimedia-template
