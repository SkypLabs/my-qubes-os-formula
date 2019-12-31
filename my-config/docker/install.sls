# -*- coding: utf-8 -*-
# vim: set syntax=yaml ts=2 sw=2 sts=2 et :

{% from 'my-config/map.jinja' import user with context %}

{% set docker_service_regex_pattern = '(^ExecStart=.*?)( -g /home/' ~ user.username ~ '/docker|$)' %}
{% set docker_service_regex_repl = '\1 -g /home/' ~ user.username ~ '/docker' %}

docker-ce:
  pkg.installed: []
  service.running:
    - name: docker
    - enable: True

/lib/systemd/system/docker.service:
  file.replace:
    - pattern: {{ docker_service_regex_pattern }}
    - repl: {{ docker_service_regex_repl }}
    - require_in:
      - service: docker-ce
