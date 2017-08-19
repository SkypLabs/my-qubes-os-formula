===================
my-qubes-os-formula
===================

A `SaltStack <https://saltstack.com/>`_ formula to set up my personal configuration for Qubes OS.

.. note::

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

``my-config.dev-perso``
-----------------------

Creates and configures the 'dev-perso' HVM.

``my-config.dev-tools``
-----------------------

Installs common development tools.

``my-config.git-config``
-----------------------

Sets up my Git configuration.

``my-config.nodejs-dev``
-----------------------

Installs a NodeJS development environment.

``my-config.office-tools``
-----------------------

Installs office tools.

``my-config.personal``
----------------------

Creates and configures the 'personal' appVM.

``my-config.personal-pub``
--------------------------

Creates and configures the 'personal-pub' appVM.

``my-config.untrusted``
-----------------------

Creates and configures the 'untrusted' appVM.

``my-config.untrusted-template-config``
---------------------------------------

Customises the 'custom-untrusted' template.

``my-config.vault``
-------------------

Creates and configures the 'vault' appVM.

``my-config.work``
------------------

Create and configures the 'work' appVM.

``my-config.work-pub``
----------------------

Creates and configures the 'work-pub' appVM.
