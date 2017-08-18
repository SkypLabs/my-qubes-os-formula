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

Create and configure the 'anon-whonix' appVM.

``my-config.dev-perso``
-----------------------

Create and configure the 'dev-perso' HVM.

``my-config.dev-perso-config``
------------------------------

Customise the 'dev-perso' HVM.

``my-config.personal``
----------------------

Create and configure the 'personal' appVM.

``my-config.personal-template-config``
--------------------------------------

Customise the 'custom-personal' template.

``my-config.personal-pub``
--------------------------

Create and configure the 'personal-pub' appVM.

``my-config.untrusted``
-----------------------

Create and configure the 'untrusted' appVM.

``my-config.untrusted-template-config``
---------------------------------------

Customise the 'custom-untrusted' template.

``my-config.vault``
-------------------

Create and configure the 'vault' appVM.

``my-config.work``
------------------

Create and configure the 'work' appVM.

``my-config.work-template-config``
----------------------------------

Customise the 'work-untrusted' template.

``my-config.work-pub``
----------------------

Create and configure the 'work-pub' appVM.
