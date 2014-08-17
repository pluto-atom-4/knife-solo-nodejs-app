#
# Cookbook Name:: nodejs
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package "nodejs" do
  action :install
end

package "npm" do
  action :install
end

package "httpd" do
  action :install
end

git "/var/www/nodejs-project" do
   repository "https://github.com/pluto-atom-4/nodejs-project"
   reference "master"
   action :checkout
   user "root"
   group "root"
end

template "10_nodejs.conf" do
  path   "/etc/httpd/conf.d/10_nodejs.conf"
  source "etc/httpd/conf.d/10_nodejs.conf.erb"
  owner  "root"
  group  "root"
  mode 0644
end
