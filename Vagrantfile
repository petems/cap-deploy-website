Vagrant::Config.run do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "UbuntuServer12.04amd64.box"

  config.vm.box_url = "http://goo.gl/8kWkm"

  guest_address = '192.168.30.2'
  warn "Guest VM will listen on #{guest_address}"

  config.vm.network :hostonly, guest_address
end