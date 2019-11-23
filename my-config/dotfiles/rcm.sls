# -*- coding: utf-8 -*-
# vim: set syntax=yaml ts=2 sw=2 sts=2 et :

rcm:
  pkg.installed: []

{% if grains['os_family']|lower == 'debian' %}
thoughtbot-repository:
  pkgrepo.managed:
    - humanname: thoughtbot
    - name: deb https://apt.thoughtbot.com/debian/ stable main
    - architectures: amd64
    - file: /etc/apt/sources.list.d/thoughtbot.list
    - gpgcheck: 1
    - key_url: https://apt.thoughtbot.com/thoughtbot.gpg.key
    - require:
      - pkg: apt-over-https
    - require_in:
      - pkg: rcm
{% endif %}
