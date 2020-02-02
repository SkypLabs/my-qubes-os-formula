# -*- coding: utf-8 -*-
# vim: set syntax=yaml ts=2 sw=2 sts=2 et :

{% from 'my-config/map.jinja' import user with context %}

dotfiles-repo:
  git.cloned:
    - name: https://github.com/SkypLabs/dotfiles
    - target: /home/{{ user.username }}/.dotfiles
