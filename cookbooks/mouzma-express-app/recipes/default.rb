#
# Cookbook:: deploy-application
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.


#package 'npm' do
#	action :install
#end


application '/opt/myapp' do
	git '/opt/myapp' do
		repository 'https://github.com/mnazir23/conFusionServer.git'
	end
	npm_install
	npm_start
end


#application '/srv/myapp' do
#  javascript '3'
#end
#
#application '/srv/myapp' do
#  javascript_service 'main.js'
#end
#
#application '/srv/myapp' do
#  node_package 'grunt-cli'
#end
#
#application '/srv/myapp' do
#  npm_start
#end