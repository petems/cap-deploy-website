#cap-deploy-website

A way of deploying HTML/CSS/JS files to a server and then hosting them with nginx.

This is a basic boilerplate for you to configure, with a Vagrant configuration to demonstrate how it works.

## Demonstration with Vagrant

Currently I'm using a Vagrant box I found on [vagrantbox.es/](http://www.vagrantbox.es/), chosen because it was one of the smallest with puppet already installed.

Until I make my own one, the following steps are required to get it to work:
```
vagrant up
vagrant ssh
#A hacky way to get the default vagrant user to work for everything
sudo adduser vagrant root
sudo apt-get update
sudo apt-get install git -y
#Create a public key and add it to github in some way...
sudo useradd -s /bin/false nginx
```

Ideally, you'd only have to run the following steps:

```
bundle install
vagrant up
bundle exec cap vagrant deploy
open http://192.168.30.2
```

This does a bundle install of the gems required, boots up the vagrant box, runs the deployment and then will open the website.

## TO-DO

* Make my own custom Vagrant box for demonstrating the repo
* More configuration
* Add some puppet-specs, possible add [server specs](http://serverspec.org/) as well...

