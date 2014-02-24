# cq-unix-toolkit cookbook

This cookbook installs [CQ Unix Toolkit](https://github.com/Cognifide/CQ-Unix-Toolkit).

More information can be found [here](http://www.cognifide.com/blogs/cq/cq-unix-toolkit/).

# Requirements

## Chef

* Chef 10.X.Y or Chef 11.X.Y

## Platform

The following platform families are supported:

* Debian
* RHEL

Since this cookbook is rather simple there's a chance it will work flawlessly on other platforms, however it hasn't been tested against any other operating system except those mentioned above.

## Cookbooks

* [git](https://github.com/opscode-cookbooks/git)

# Usage

Add a depencency on cq-unix-toolkit to your cookbook's `metadata.rb`:

```
depends 'cq-unix-toolkit'
```

To install CQ Unix Toolkit include default recipe in one of your cookbook's recipes:

```
include_recipe 'cq-unix-toolkit'
```

# Attributes

* `node[:cq_unix_toolkit][:repository][:url]` - URL to CQ Unix Toolkit repository
* `node[:cq_unix_toolkit][:repository][:revison]` - git revision/tag
* `node[:cq_unix_toolkit][:user]` - the owner of Git workspace
* `node[:cq_unix_toolkit][:group]` - the group which owns Git workspace
* `node[:cq_unix_toolkit][:install_dir]` - default installation directory

# Recipes

## default

Installs latest stable version of CQ Unix Toolkit in specified directory.

# Author

Author:: Jakub Wadolowski (<jakub.wadolowski@cognifide.com>)
