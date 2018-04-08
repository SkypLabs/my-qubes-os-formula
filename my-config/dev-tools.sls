# -*- coding: utf-8 -*-
# vim: set syntax=yaml ts=2 sw=2 sts=2 et :

common-dev-packages:
  pkg.installed:
    - pkgs:
      {%- if grains['os_family']|lower == 'debian' %}
      - build-essential
      {% endif %}
      - cmake
      - gdb
      - screen
      - strace
      - tcpdump
