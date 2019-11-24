# -*- coding: utf-8 -*-
# vim: set syntax=yaml ts=2 sw=2 sts=2 et :

{% from 'my-config/map.jinja' import template with context %}

multimedia-template:
  qvm.clone:
    - name: multimedia
    - source: {{ template }}
    - label: black
