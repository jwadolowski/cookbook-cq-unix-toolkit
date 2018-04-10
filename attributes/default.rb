#
# Cookbook Name:: cq-unix-toolkit
# Attributes:: default
#
# Copyright (C) 2018 Jakub Wadolowski
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Repository settings
default['cq-unix-toolkit']['repository']['url'] =
  'https://github.com/Cognifide/CQ-Unix-Toolkit.git'
default['cq-unix-toolkit']['repository']['revision'] = '1.2-dev'

# General settings
default['cq-unix-toolkit']['user'] = 'root'
default['cq-unix-toolkit']['group'] = 'root'
default['cq-unix-toolkit']['install_dir'] = '/opt/scripts/CQ-Unix-Toolkit'
