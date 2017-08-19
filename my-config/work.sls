# -*- coding: utf-8 -*-
# vim: set syntax=yaml ts=2 sw=2 sts=2 et :

include:
  - qvm.work
  - my-config.work-template

work-prefs:
  qvm.prefs:
    - name: work
    - template: custom-work
    - require:
      - sls: qvm.work
      - sls: my-config.work-template
