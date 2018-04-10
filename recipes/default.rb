#
# Cookbook Name:: cq-unix-toolkit
# Recipe:: default
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

# Install git
# -----------------------------------------------------------------------------
package 'git'

# Create installation directory
# -----------------------------------------------------------------------------
directory node['cq-unix-toolkit']['install_dir'] do
  owner node['cq-unix-toolkit']['user']
  group node['cq-unix-toolkit']['group']
  mode '0755'
  recursive true

  action :create
end

# Checkout Git repository
# -----------------------------------------------------------------------------
git node['cq-unix-toolkit']['install_dir'] do
  repository node['cq-unix-toolkit']['repository']['url']
  reference node['cq-unix-toolkit']['repository']['revision']
  action :sync
end
