#
# Cookbook Name:: lampapp
# Recipe:: default
#
# Copyright 2016, Nirmal
#
# All rights reserved - Do Not Redistribute
#

include_recipe "apache2"
include_recipe "lampapp::git"
include_recipe "lampapp::user"
include_recipe "lampapp::webdir"

apache_site "default" do
  enable true
end

web_app "my_site" do
  server_name node['hostname']
  server_aliases [node['fqdn'], "my-site.example.com"]
  docroot "/srv/www/my_site"
  cookbook 'apache2'
end

mysql_service 'default' do
  port '3306'
  version '5.5'
  bind_address '0.0.0.0'
  initial_root_password 'nirmal123'
  action [:create, :start]
end

mysql_client 'default' do
  action :create
end

include_recipe "php"
include_recipe "php::module_mysql"
include_recipe "apache2::mod_php5"


git '/srv/www/my_site/myapp' do
        repository 'https://github.com/nirmalpathak/myapp.git'
        revision 'master'
        action :sync
end
