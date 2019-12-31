# -*- coding: utf-8 -*-
# vim: set syntax=yaml ts=2 sw=2 sts=2 et :

{% from 'my-config/map.jinja' import template with context %}

personal-template:
  qvm.clone:
    - name: custom-personal
    - source: {{ template.name }}
    - label: black
