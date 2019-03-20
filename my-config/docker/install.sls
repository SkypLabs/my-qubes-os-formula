# -*- coding: utf-8 -*-
# vim: set syntax=yaml ts=2 sw=2 sts=2 et :

docker-ce:
  pkg.installed: []
  service.running:
    - name: docker
    - enable: True

/lib/systemd/system/docker.service:
  file.replace:
    - pattern: '(^ExecStart=.*?)( -g /home/user/docker|$)'
    - repl: '\1 -g /home/user/docker'
    - require_in:
      - service: docker-ce
