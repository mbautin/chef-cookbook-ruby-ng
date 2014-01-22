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
 - `ruby-ng::ruby_version` (default: 1.9.1 - which actually means 1.9.3) - Ruby package to install

Usage
-----
Just include `ruby-ng` in your node's `run_list`:

License and Authors
-------------------
Authors: Maciej Pasternacki <maciej@3ofcoins.net>
License: MIT
