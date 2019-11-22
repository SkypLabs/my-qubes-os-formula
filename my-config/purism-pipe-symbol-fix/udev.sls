# -*- coding: utf-8 -*-
# vim: set syntax=yaml ts=2 sw=2 sts=2 et :

# Based on https://forums.puri.sm/t/keyboard-layout-unable-to-recognize-pipe/2022.
/etc/udev/hwdb.d/90-purism-pipe-symbol-fix.hwdb:
  file.managed:
    - source:
      - salt://my-config/purism-pipe-symbol-fix/files/purism-pipe-symbol-fix.hwdb
    - user: root
    - group: root
    - mode: 0644

sudo systemd-hwdb update:
  cmd.run:
    - require:
      - file: /etc/udev/hwdb.d/90-purism-pipe-symbol-fix.hwdb

sudo udevadm trigger:
  cmd.run:
    - require:
      - cmd: sudo systemd-hwdb update
