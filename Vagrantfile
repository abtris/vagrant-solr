Vagrant::Config.run do |config|
  # All Vagrant configuration is done here. For a detailed explanation
  # and listing of configuration options, please view the documentation
  # online.

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "base"


  config.vm.forward_port("http", 8080, 8080)

  config.vm.provision :chef_solo do |chef|
     chef.cookbooks_path = "cookbooks"
	 chef.add_recipe("vagrant_main") 		
  end

  
end
