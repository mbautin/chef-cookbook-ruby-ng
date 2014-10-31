ruby-ng
=======

Installs Ruby from https://launchpad.net/~brightbox/+archive/ruby-ng

Requirements
------------

Platform: Ubuntu

Cookbooks:
 - `apt`

Attributes
----------

 - `ruby-ng::experimental` (default: false) - use `ruby-ng-experimental` PPA
 - `ruby-ng::ruby_version` (default: 2.1) - Ruby version to install
 - `ruby-ng::install_ruby_dev` (default: false) - install Ruby developmant package

Usage
-----
Just include `ruby-ng` in your node's `run_list`:

License and Authors
-------------------
Authors: Maciej Pasternacki <maciej@3ofcoins.net>
License: MIT
