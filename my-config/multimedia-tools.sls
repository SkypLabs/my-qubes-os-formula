# -*- coding: utf-8 -*-
# vim: set syntax=yaml ts=2 sw=2 sts=2 et :

include:
  - my-config.rpm-fusion

multimedia-codecs:
  pkg.installed:
    - pkgs:
      - gstreamer1-plugins-base
      - gstreamer1-plugins-good
      - gstreamer1-plugins-ugly
      - gstreamer1-plugins-bad-free
      - gstreamer1-plugins-bad-free
      - gstreamer1-plugins-bad-freeworld
      - gstreamer1-plugins-bad-free-extras
      - ffmpeg
    - require:
      - sls: my-config.rpm-fusion

vlc:
  pkg.installed: []
