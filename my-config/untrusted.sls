# -*- coding: utf-8 -*-
# vim: set syntax=yaml ts=2 sw=2 sts=2 et :

include:
  - qvm.untrusted
  - my-config.untrusted-template

untrusted-prefs:
  qvm.prefs:
    - name: untrusted
    - template: custom-untrusted
    - require:
      - sls: qvm.untrusted
      - sls: my-config.untrusted-template
