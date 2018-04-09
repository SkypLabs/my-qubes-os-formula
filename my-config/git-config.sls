# -*- coding: utf-8 -*-
# vim: set syntax=yaml ts=2 sw=2 sts=2 et :

{% from 'my-config/map.jinja' import user with context %}

/home/{{ user.username }}/.gitconfig:
  file.managed:
    - source: https://raw.githubusercontent.com/SkypLabs/git-config/master/.gitconfig
    - user: {{ user.username }}
    - group: {{ user.group }}
    - mode: 0644
    - skip_verify: True
