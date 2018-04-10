# -*- coding: utf-8 -*-
# vim: set syntax=yaml ts=2 sw=2 sts=2 et :

yubikey-tools:
  pkg.installed:
    - pkgs:
      - yubikey-personalization-gui
      - yubioath-desktop

smartcard-tools:
  pkg.installed:
    - pkgs:
      - pcsc-lite
      - pcsc-tools

/etc/udev/rules.d/70-u2f.rules:
  file.managed:
    - source:
      - salt://my-config/70-u2f.rules
    - user: root
    - group: root
    - mode: 0644

pcscd:
  service.enabled: []
