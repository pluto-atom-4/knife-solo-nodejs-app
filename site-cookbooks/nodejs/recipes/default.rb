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

git "/var/www/nodejs-project" do
   repository "https://github.com/pluto-atom-4/nodejs-project"
   reference "master"
   action :checkout
   user "root"
   group "root"
end

bash "install-nodejs-package" do
  code <<-EOC
    cd /var/www/nodejs-project/hello-world
    npm install
  EOC
end

template "etc-init.d-nodeapp" do
  path   "/etc/init.d/nodeapp"
  source "etc/init.d/nodeapp.erb"
  owner  "root"
  group  "root"
  mode   "0755"
end

directory "/var/www/nodejs-project/hello-world/pids" do
  owner "root"
  group "root"
  mode "0755"
  action :create
end

directory "/var/www/nodejs-project/hello-world/logs" do
  owner "root"
  group "root"
  mode "0755"
  action :create
end
