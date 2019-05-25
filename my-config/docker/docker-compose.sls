# -*- coding: utf-8 -*-
# vim: set syntax=yaml ts=2 sw=2 sts=2 et :

{% set docker_compose_version = '1.24.0' %}

/usr/bin/docker-compose:
  file.managed:
    - source: https://github.com/docker/compose/releases/download/{{ docker_compose_version }}/docker-compose-Linux-x86_64
    - user: root
    - group: root
    - mode: 0755
    - skip_verify: True
