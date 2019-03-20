# -*- coding: utf-8 -*-
# vim: set syntax=yaml ts=2 sw=2 sts=2 et :

include:
  - qvm.anon-whonix

anon-whonix-prefs:
  qvm.vm:
    - name: anon-whonix
    - present:
      - label: red
    - prefs:
      - include-in-backups: False
    - require:
      - sls: qvm.anon-whonix
