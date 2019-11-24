# -*- coding: utf-8 -*-
# vim: set syntax=yaml ts=2 sw=2 sts=2 et :

{% from 'my-config/map.jinja' import netvm with context %}

include:
  - qvm.untrusted
  - my-config.templates.multimedia-template

untrusted-prefs:
  qvm.vm:
    - name: untrusted
    - present:
      - template: multimedia
      - label: red
    - prefs:
      - include-in-backups: True
      - netvm: {{ netvm }}
    - require:
      - sls: qvm.untrusted
      - sls: my-config.templates.multimedia-template
