# -*- coding: utf-8 -*-
# vim: set syntax=yaml ts=2 sw=2 sts=2 et :

common-dev-packages:
  pkg.installed:
    - pkgs:
      - build-essential
      - cmake
      - git

nodejs-packages:
  pkg.installed:
    - pkgs:
      - nodejs
      - npm

/usr/bin/node:
  file.symlink:
    - target: /usr/bin/nodejs
