#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package "apache2" do
	action :install
end

service "apache2" do
	action [:start, :enable]
end

#homepage

cookbook_file "/var/www/html/index.html" do
	source "index.html"
	mode "0644"
end
	
