# -*- coding: utf-8 -*-
# vim: set syntax=yaml ts=2 sw=2 sts=2 et :

build-essential:
  pkg.installed:
    - pkgs:
      {% if grains['os_family']|lower == 'debian' %}
      - build-essential
      {% elif grains['os_family']|lower == 'redhat' %}
      - automake
      - gcc
      - gcc-c++
      - kernel-devel
      - make
      {% endif %}
