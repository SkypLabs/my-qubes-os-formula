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

/home/user/.gitconfig:
  file.managed:
    - user: user
    - group: user
    - mode: 0644
    - source: https://raw.githubusercontent.com/SkypLabs/git-config/master/.gitconfig
    - skip_verify: True
