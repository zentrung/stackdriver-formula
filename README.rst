===========
stackdriver
===========

Install Stackdriver to Google Cloud Engine (GCE) or Amazon Web Services (AWS)

.. note::

    See the full `Salt Formulas installation and usage instructions
    <http://docs.saltstack.com/en/latest/topics/development/conventions/formulas.html>`_.

Available states
================

.. contents::
    :local:

``stackdriver``
---------------

Installs Stackdriver Monitoring Agent based on the Google's documentation which
can be found at: https://cloud.google.com/monitoring/agent/install-agent

It should work for both GCE and AWS. Different distros and releases are handled
automatically by the magic script ``stack-install.sh``.

``stackdriver.elasticsearch``
-----------------------------

Extends by enabling the Elasticsearch monitoring plugin.

``stackdriver.redis``
---------------------

Extends by enabling the Redis monitoring plugin.