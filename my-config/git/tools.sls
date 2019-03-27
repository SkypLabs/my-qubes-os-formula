# -*- coding: utf-8 -*-
# vim: set syntax=yaml ts=2 sw=2 sts=2 et :

git-external-tools:
  pkg.installed:
    - pkgs:
      - git-crypt
      {% if grains['os_family']|lower == 'debian' %}
      - git-flow
      {% elif grains['os_family']|lower == 'redhat' %}
      - gitflow
      {% endif %}
      - meld
