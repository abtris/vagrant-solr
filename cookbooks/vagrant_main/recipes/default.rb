require_recipe "capistrano"
require_recipe "runit"
require_recipe "java::sun"
#require_recipe "solr"

# Some neat package (subversion is needed for "subversion" chef ressource)
%w{ debconf mc htop curl }.each do |a_package|
  package a_package
end