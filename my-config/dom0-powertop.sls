# -*- coding: utf-8 -*-
# vim: set syntax=yaml ts=2 sw=2 sts=2 et :

dom0:
  pkg.installed:
    - name: powertop
    - fromrepo: fedora
powertop:
  service.dead:
    - enable: True
