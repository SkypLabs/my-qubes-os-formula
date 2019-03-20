# -*- coding: utf-8 -*-
# vim: set syntax=yaml ts=2 sw=2 sts=2 et :

nodejs:
  cmd.run:
    - name: curl -sL https://deb.nodesource.com/setup_11.x | bash -
    - runas: root
  pkg.installed:
    - require:
      - cmd: nodejs
