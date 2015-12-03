include_recipe "#{cookbook_name}::default"

directory "/var/lib/logs" do
	owner node.tomcat.user
  	group node.tomcat.group
  	mode '0755'
  	action :create
end

directory node.tomcat.home do
	owner node.tomcat.user
	group node.tomcat.group
	action :create
end

remote_directory File.join(node.tomcat.home, '.BuildServer') do
	owner node.tomcat.user
	group node.tomcat.group
	files_owner node.tomcat.user
	files_group node.tomcat.group
	source '.BuildServer'
	action :create
end

remote_file node['tomcat']['webapp_dir'] + '/teamcity.war' do
  source node.teamcity.download_url
  owner node.tomcat.user
  group node.tomcat.group
  mode '0755'
  action :create
end

# This is for testing - so that I don't have to download 600MB all the time
# cookbook_file node['tomcat']['webapp_dir'] + '/teamcity.war' do
#   source "teamcity.war"
#   owner node.tomcat.user
#   group node.tomcat.group
#   mode '0755'
#   action :create

#   notifies :restart, "service[#{node.tomcat.base_instance}]", :delayed
# end