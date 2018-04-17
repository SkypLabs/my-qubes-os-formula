# -*- coding: utf-8 -*-
# vim: set syntax=yaml ts=2 sw=2 sts=2 et :

vim:
  pkg.installed: []

vim-plugin-dependencies:
  pkg.installed:
    - pkgs:
      {% if grains['os_family']|lower == 'debian' %}
      - exuberant-ctags
      {% elif grains['os_family']|lower == 'redhat' %}
      - ctags
      {% endif %}
      - screen
