require 'capistrano/ext/puppetize'
require 'capistrano/ext/multistage'

set :application, "cap-deploy-website"

set :repository,  "https://github.com/petems/cap-deploy-website/"

set :default_stage, "vagrant"
set :stages, %w(vagrant staging production)

current_git_branch = `git branch`.match(/\* (\S+)\s/m)[1]

set :branch, current_git_branch

set :scm, :git

set :owner, ENV['USER']

depend :remote, :command, "puppet"

before 'deploy', 'deploy:check'

set :app_host_name, "cap-deploy-website"

default_run_options[:pty] = true
set :deploy_via, :remote_cache

# Override default tasks which are not relevant to a non-rails app.
namespace :deploy do
  task :migrate do
    puts "    not doing migrate because not a Rails application."
  end
  task :finalize_update do
    puts "    not doing finalize_update because not a Rails application."
  end
  task :start do ; end
  task :stop do ; end
  task :restart do ; end
end
