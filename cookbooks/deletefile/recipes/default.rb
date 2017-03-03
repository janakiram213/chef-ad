#
# Cookbook Name:: deletefile
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute

#
file "/etc/motd" do
  action :delete
end
