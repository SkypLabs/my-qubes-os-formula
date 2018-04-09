# -*- coding: utf-8 -*-
# vim: set syntax=yaml ts=2 sw=2 sts=2 et :

apt-over-https:
  pkg.installed:
    - pkgs:
      - apt-transport-https
      - ca-certificates
      - curl
      - gnupg2
      - software-properties-common

{% set debian_version_name = salt['cmd.run']('lsb_release -cs') %}

docker-repository:
  pkgrepo.managed:
    - humanname: Docker
    - name: deb https://download.docker.com/linux/debian {{ debian_version_name }} stable
    - architectures: amd64
    - file: /etc/apt/sources.list.d/docker.list
    - gpgcheck: 1
    - key_url: https://download.docker.com/linux/debian/gpg
    - require:
      - pkg: apt-over-https
    - require_in:
      - pkg: docker-ce

docker-ce:
  pkg.installed: []
  service.running:
    - name: docker
    - enable: True

{% set docker_compose_version = '1.20.1' %}

/usr/bin/docker-compose:
  file.managed:
    - source: https://github.com/docker/compose/releases/download/{{ docker_compose_version }}/docker-compose-Linux-x86_64
    - user: root
    - group: root
    - mode: 0755
    - skip_verify: True

/lib/systemd/system/docker.service:
  file.replace:
    - pattern: '(^ExecStart=.*?)( -g /home/user/docker|$)'
    - repl: '\1 -g /home/user/docker'
    - require_in:
      - service: docker-ce
