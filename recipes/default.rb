#
# Cookbook:: cq-unix-toolkit
# Recipe:: default
#
# Copyright:: (C) 2018 Jakub Wadolowski
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

# -----------------------------------------------------------------------------
# Install git
#
# This logic exists to address inital Git sync problem which occur on
# CentOS/RHEL 6.x when Chef Infra Client 16.x was used:
#
# Mixlib::ShellOut::ShellCommandFailed
# ------------------------------------
# Expected process to exit with [0], but received '129'
# ---- Begin output of git branch -u origin/1.2-dev ----
# STDOUT:
# STDERR: error: unknown switch `u'
#
# Git 1.7.1 is the latest version available on CentOS/RHEL 6.x. Unfortunately
# git resource implementation in Chef 16.x assumes "-u" option is available and
# can be used to define upstream directly at "git branch" level: "git branch -u
# <REMOTE>/<REVISION>". To mitigate the problem more recent version of Git
# client gets installed via git cookbook
#
# https://github.com/chef/chef/blame/v16.6.14/lib/chef/provider/git.rb#L244
# -----------------------------------------------------------------------------
if platform_family?('rhel') && platform?('centos', 'redhat') && node['platform_version'].to_i == 6
  # Compile Git client from sources
  git_client 'source' do
    provider Chef::Provider::GitClient::Source
    source_prefix node['git']['prefix']
    source_version node['git']['version']

    action :install
  end
else
  package 'git'
end

# -----------------------------------------------------------------------------
# Create installation directory
# -----------------------------------------------------------------------------
directory node['cq-unix-toolkit']['install_dir'] do
  owner node['cq-unix-toolkit']['user']
  group node['cq-unix-toolkit']['group']
  mode '0755'
  recursive true

  action :create
end

# -----------------------------------------------------------------------------
# Checkout Git repository
# -----------------------------------------------------------------------------
git node['cq-unix-toolkit']['install_dir'] do
  repository node['cq-unix-toolkit']['repository']['url']
  reference node['cq-unix-toolkit']['repository']['revision']
  action :sync
end
