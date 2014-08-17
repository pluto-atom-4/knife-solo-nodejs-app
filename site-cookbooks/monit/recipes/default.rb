#
# Cookbook Name:: monit
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package "monit" do
  action :install
end

template "etc-monit_d-nodeapp-conf" do
  path "/etc/monit.d/10_nodeapp.conf"
  source "etc/monit.d/10_nodeapp.conf.erb"
  owner "root"
  group "root"
  mode 0644
end
