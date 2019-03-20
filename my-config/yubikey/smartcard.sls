# -*- coding: utf-8 -*-
# vim: set syntax=yaml ts=2 sw=2 sts=2 et :

smartcard-tools:
  pkg.installed:
    - pkgs:
      - pcsc-lite
      - pcsc-tools

pcscd:
  service.enabled: []
