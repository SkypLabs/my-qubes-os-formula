# -*- coding: utf-8 -*-
# vim: set syntax=yaml ts=2 sw=2 sts=2 et :

include:
  - qvm.untrusted
  - my-config.untrusted-template

untrusted-prefs:
  qvm.vm:
    - name: untrusted
    - present:
      - template: custom-untrusted
      - label: red
    - prefs:
      - include-in-backups: True
      - netvm: sys-firewall
    - require:
      - sls: qvm.untrusted
      - sls: my-config.untrusted-template
