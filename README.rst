===================
my-qubes-os-formula
===================

A `SaltStack <https://saltstack.com/>`_ formula to set up my personal Qubes OS configuration. See the `documentation <https://github.com/SkypLabs/my-qubes-os-formula/wiki>`_ for further information.

**NOTE**

See the full `Salt Formulas installation and usage instructions
<http://docs.saltstack.com/en/latest/topics/development/conventions/formulas.html>`_.

Available states
================

.. contents::
    :local:

``my-config``
-------------

Runs all the states of this formula.

``my-config.anon-whonix``
-------------------------

Creates and configures the 'anon-whonix' appVM.

``my-config.chromium``
----------------------

Installs Chromium web browser.

``my-config.dev-tools``
-----------------------

Installs common development tools.

``my-config.docker``
--------------------

Installs Docker.

``my-config.git``
-----------------

Installs git and the tools used by my git configuration.

``my-config.git-config``
-----------------

Sets up my git configuration.

``my-config.multimedia-tools``
------------------------------

Installs multimedia codecs and tools.

``my-config.nodejs-dev``
------------------------

Installs a NodeJS development environment.

``my-config.office-tools``
--------------------------

Installs office tools.

``my-config.personal``
----------------------

Creates and configures the 'personal' appVM.

``my-config.personal-dev``
-----------------------

Creates and configures the 'personal-dev' HVM.

``my-config.personal-pub``
--------------------------

Creates and configures the 'personal-pub' appVM.

``my-config.python-dev``
------------------------

Installs a Python development environment.

``my-config.rpm-fusion``
------------------------

Sets up RPM Fusion repositories.

``my-config.untrusted``
-----------------------

Creates and configures the 'untrusted' appVM.

``my-config.vault``
-------------------

Creates and configures the 'vault' appVM.

``my-config.vim``
-----------------

Installs vim.

``my-config.vim-config``
-----------------

Sets up my vim configuration.
