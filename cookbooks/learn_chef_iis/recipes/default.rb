# Cookbook:: learn_chef_iis
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.
windows_feature 'Web-Server' do
  all true
  action :install
  install_method :windows_feature_powershell
end
service 'w3svc' do
    action [:enable, :start]
  end
  
  template 'c:\\inetpub\\wwwroot\\Default.htm' do
    source 'default.htm.erb'
  end