# -*- coding: utf-8 -*-
# vim: set syntax=yaml ts=2 sw=2 sts=2 et :

include:
  - my-config.vim

git:
  pkg.installed: []

git-external-tools:
  pkg.installed:
    - pkgs:
      - meld
    - require:
      - pkg: vim

/home/user/.gitconfig:
  file.managed:
    - source: https://raw.githubusercontent.com/SkypLabs/git-config/master/.gitconfig
    - user: user
    - group: user
    - mode: 0644
    - skip_verify: True
