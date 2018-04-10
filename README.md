# CQ UNIX Toolkit cookbook 

This cookbook installs [CQ Unix Toolkit](https://github.com/Cognifide/CQ-Unix-Toolkit).

# Table of contents

* [Supported platforms](#supported-platforms)
    * [Operating systems](#operating-systems)
    * [Chef versions](#chef-versions)
* [Attributes](#attributes)
* [Recipes](#recipes)
    * [default.rb](#defaultrb)
* [Author](#author)

# Supported platforms

## Operating systems

* CentOS/RHEL 6.x
* CentOS/RHEL 7.x

## Chef versions

* Chef 12.x

# Attributes

| Key                                                 | Type     | Description                       | Default                                          |
| --------------------------------------------------- | -------- | --------------------------------- | ------------------------------------------------ |
| `node['cq-unix-toolkit']['repository']['url']`      | `String` | URL to CQ UNIX Toolkit repository | https://github.com/Cognifide/CQ-Unix-Toolkit.git |
| `node['cq-unix-toolkit']['repository']['revision']` | `String` | Git revision/tag                  | `1.2-dev`                                        |
| `node['cq-unix-toolkit']['user']`                   | `String` | The owner of cloned repository    | `root`                                           |
| `node['cq-unix-toolkit']['group']`                  | `String` | Group which owns Git workspace    | `root`                                           |
| `node['cq-unix-toolkit']['install_dir']`            | `String` | Installation directory            | `/opt/scripts/CQ-Unix-Toolkit`                   |

# Recipes

## default.rb

Installs CQ UNIX Toolkit by cloning official Git repository into directory of
your choice

# Author

Jakub Wadolowski (<jakub.wadolowski@cognifide.com>)
