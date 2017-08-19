# -*- coding: utf-8 -*-
# vim: set syntax=yaml ts=2 sw=2 sts=2 et :

nodejs-packages:
  pkg.installed:
    - pkgs:
      - nodejs
      - npm

/usr/bin/node:
  file.symlink:
    - target: /usr/bin/nodejs
    - require:
      - pkg: nodejs-packages
