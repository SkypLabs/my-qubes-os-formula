# -*- coding: utf-8 -*-
# vim: set syntax=yaml ts=2 sw=2 sts=2 et :

git-packages:
  pkg.installed:
    - pkgs:
      - git
      - meld

/home/user/.gitconfig:
  file.managed:
    - user: user
    - group: user
    - mode: 0644
    - source: https://raw.githubusercontent.com/SkypLabs/git-config/master/.gitconfig
    - skip_verify: True
    - require:
      - pkg: git-packages
