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
