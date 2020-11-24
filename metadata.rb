name             'cq-unix-toolkit'
maintainer       'Jakub Wadolowski'
maintainer_email 'jakub.wadolowski@cognifide.com'
license          'Apache-2.0'
description      'Installs and configures CQ UNIX Toolkit'
version          '2.0.0'

source_url       'https://github.com/jwadolowski/cookbook-cq-unix-toolkit'
issues_url       'https://github.com/jwadolowski/cookbook-cq-unix-toolkit/issues'

chef_version     '>= 16', '< 17'

# The latest version that supports CentOS 6.x and its derivatives
depends          'git', '= 10.0.0'

supports         'centos', '~> 6.0'
supports         'centos', '~> 7.0'
supports         'centos', '~> 8.0'
supports         'redhat', '~> 6.0'
supports         'redhat', '~> 7.0'
supports         'redhat', '~> 8.0'
supports         'amazon'
