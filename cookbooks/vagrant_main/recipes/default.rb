require_recipe "capistrano"
require_recipe "runit"
require_recipe "java::sun"
require_recipe "solr::default"

# Some neat package (subversion is needed for "subversion" chef ressource)
%w{ debconf mc htop curl }.each do |a_package|
  package a_package
end


execute "create-directory" do                                                                                                                                 
  command "sudo mkdir -p /srv/my_app"                                                                                                                                               
  action :run                                                                                                                                               
  ignore_failure true                                                                                                                                       
end

solr_instance "my_app"