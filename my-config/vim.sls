# -*- coding: utf-8 -*-
# vim: set syntax=yaml ts=2 sw=2 sts=2 et :

vim:
  pkg.installed: []

/home/user/.vim/after/ftplugin:
  file.directory:
    - user: user
    - group: user
    - mode: 0755
    - makedirs: True

{% set vim_files = [
  '.vimrc',
  '.tern-project',
  '.vim/after/ftplugin/css.vim',
  '.vim/after/ftplugin/html.vim',
  '.vim/after/ftplugin/javascript.vim',
  '.vim/after/ftplugin/json.vim',
  '.vim/after/ftplugin/python.vim',
  '.vim/after/ftplugin/typescript.vim',
  '.vim/after/ftplugin/yaml.vim',
] %}

{% for file in vim_files %}
/home/user/{{ file }}:
  file.managed:
    - user: user
    - group: user
    - mode: 0644
    - source: https://raw.githubusercontent.com/SkypLabs/vim-config/master/{{ file }}
    - skip_verify: True
    - require:
      - pkg: vim
      - file: /home/user/.vim/after/ftplugin
{% endfor %}
