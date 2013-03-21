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

dmg_package "OsiriX" do
  source "http://www.osirix-viewer.com/OsiriX5.6.dmg"                        #Here you should insert the web adress of your dmg
  checksum "47c7b8437e2d6f74471984a19091053d8dfd147184b85c6373b0e5d435e5cd45"#Here you should inster the shasum 256 checksum of the disk image
  action :install
end 

