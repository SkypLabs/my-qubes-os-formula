# -*- coding: utf-8 -*-
# vim: set syntax=yaml ts=2 sw=2 sts=2 et :

{% from 'my-config/map.jinja' import user with context %}

{% set vim_dirs = [
  'autoload',
  'bundle',
  'after/ftplugin',
] %}

{% for dir in vim_dirs %}
/home/{{ user.username }}/.vim/{{ dir }}:
  file.directory:
    - user: {{ user.username }}
    - group: {{ user.group }}
    - mode: 0755
    - makedirs: True
    - order: 1
{% endfor %}

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
/home/{{ user.username }}/{{ file }}:
  file.managed:
    - source: https://raw.githubusercontent.com/SkypLabs/vim-config/master/{{ file }}
    - user: {{ user.username }}
    - group: {{ user.group }}
    - mode: 0644
    - skip_verify: True
{% endfor %}

/home/{{ user.username }}/.vim/autoload/pathogen.vim:
  file.managed:
    - source: https://tpo.pe/pathogen.vim
    - user: {{ user.username }}
    - group: {{ user.group }}
    - mode: 0644
    - skip_verify: True

vim-colors-solarized:
  git.latest:
    - name: https://github.com/altercation/vim-colors-solarized.git
    - target: /home/{{ user.username }}/.vim/bundle/vim-colors-solarized
    - user: {{ user.username }}

YouCompleteMe:
  git.latest:
    - name: https://github.com/Valloric/YouCompleteMe.git
    - target: /home/{{ user.username }}/.vim/bundle/YouCompleteMe
    - submodules: True
    - user: {{ user.username }}
  cmd.run:
    - name: ./install.py --clang-completer --tern-completer
    - cwd: /home/{{ user.username }}/.vim/bundle/YouCompleteMe
    - runas: {{ user.username }}
    - require:
      - git: YouCompleteMe
      - cmd: increase-tmp
    - onchanges:
      - git: YouCompleteMe

# YouCompleteMe installation uses more than 1G of tmp files.
increase-tmp:
  cmd.run:
    - name: mount -o remount,size=2G /tmp
    - runas: root

emmet-vim:
  git.latest:
    - name: https://github.com/mattn/emmet-vim.git
    - target: /home/{{ user.username }}/.vim/bundle/emmet-vim
    - user: {{ user.username }}

salt-vim:
  git.latest:
    - name: https://github.com/saltstack/salt-vim.git
    - target: /home/{{ user.username }}/.vim/bundle/salt-vim
    - user: {{ user.username }}

typescript-vim:
  git.latest:
    - name: https://github.com/leafgarland/typescript-vim.git
    - target: /home/{{ user.username }}/.vim/bundle/typescript-vim
    - user: {{ user.username }}
