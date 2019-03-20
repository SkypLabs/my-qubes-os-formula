# -*- coding: utf-8 -*-
# vim: set syntax=yaml ts=2 sw=2 sts=2 et :

/etc/udev/rules.d/70-u2f.rules:
  file.managed:
    - source:
      - salt://my-config/yubikey/files/70-u2f.rules
    - user: root
    - group: root
    - mode: 0644
