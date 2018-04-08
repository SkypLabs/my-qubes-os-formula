# -*- coding: utf-8 -*-
# vim: set syntax=yaml ts=2 sw=2 sts=2 et :

nodejs-packages:
  pkg.installed:
    - pkgs:
      - grunt
      - nodejs
    - require:
      - cmd: node-ppa

node-ppa:
  cmd.run:
    - name: curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
    - runas: user
