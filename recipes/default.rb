#
# Cookbook Name:: osirix
# Recipe:: default
#
# Copyright 2013, Björn Albers
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

remote_file "#{node[:osirix][:tmp]}/#{node[:osirix][:zip_name]}" do
	source node[:osirix][:url]
	checksum node[:osirix][:checksum] 
  action :create
end

execute "unzip -o #{node[:tmp]}/#{node[:zipName]}  -d #{node[:tmp]}" do
	creates "#{node[:tmp]}/#{node[:pkgName]}"
end

execute "sudo installer -pkg #{node[:tmp]}/#{node[:pkgName]} -target #{node[:target]}" do
	creates node[:appPath] 
end
