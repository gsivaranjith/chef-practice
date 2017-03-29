#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

if platform_family == "rhel"
	package = "httpd"
elsif platform_family =="debian"
	package = "apache2"
end
package 'apache2' do 
	package_name package
	action :install
end

service 'apache2' do 
	service_name 'httpd'
	action [:start, :enable]
end
