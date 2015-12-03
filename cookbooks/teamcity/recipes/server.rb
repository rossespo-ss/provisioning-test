include_recipe 'default'

# remote_file node['tomcat']['webapp_dir'] + '/teamcity.war' do
#   source node.teamcity.download_url
#   owner node.tomcat.user
#   group node.tomcat.group
#   mode '0755'
#   action :create
# end

# This is for testing - so that I don't have to download 600MB all the time
cookbook_file node['tomcat']['webapp_dir'] + '/teamcity.war' do
  source "teamcity.war"
  owner node.tomcat.user
  group node.tomcat.group
  mode '0755'
  action :create
end