#cap-deploy-website

A way of deploying HTML/CSS/JS files to a server and then hosting them with nginx.

This is a basic boilerplate for you to configure, with a Vagrant configuration to demonstrate how it works.

## Demonstration with Vagrant

Let's get started with a Vagrant demonstration:

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
