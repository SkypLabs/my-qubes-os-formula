# -*- coding: utf-8 -*-
# vim: set syntax=yaml ts=2 sw=2 sts=2 et :

{% if grains['os_family']|lower == 'debian' %}
  {% set keybase_package_url = 'https://prerelease.keybase.io/keybase_amd64.deb' %}
{% elif grains['os_family']|lower == 'redhat' %}
  {% set keybase_package_url = 'https://prerelease.keybase.io/keybase_amd64.rpm' %}
{% endif %}

{% if keybase_package_url is defined %}
keybase:
  pkg.installed:
    - sources:
      - keybase: {{ keybase_package_url }}
{% endif %}
