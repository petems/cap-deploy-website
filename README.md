#cap-deploy-website

An example way of deploying static HTML files to a server and then hosting them with nginx.

```
bundle install
vagrant up
bundle exec cap vagrant deploy
open http://192.168.30.2
```
