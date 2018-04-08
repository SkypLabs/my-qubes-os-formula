# -*- coding: utf-8 -*-
# vim: set syntax=yaml ts=2 sw=2 sts=2 et :

latex-packages:
  pkg.installed:
    - pkgs:
      {% if grains['os_family']|lower == 'debian' %}
      - texlive-lang-french
      {% elif grains['os_family']|lower == 'redhat' %}
      - texlive-e-french
      {% endif %}
      - texmaker
