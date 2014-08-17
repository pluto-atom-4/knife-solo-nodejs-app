#
# Cookbook Name:: httpd
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package "httpd" do
  action :install
end

template "10_nodejs.conf" do
  path   "/etc/httpd/conf.d/10_nodejs.conf"
  source "etc/httpd/conf.d/10_nodejs.conf.erb"
  owner  "root"
  group  "root"
  mode 0644
end
