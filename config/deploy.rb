# config valid for current version and patch releases of Capistrano
#lock "~> 3.10.1"

set :application, "uploader"
set :repo_url, "git@gitlab.domoidostavim.ru:dd/domoidostavim.ru.git"

# Default branch is :master
ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
set :deploy_to, "/srv/#{fetch(:application)}"

set :rvm_type, :ruby

set :stages, %w(production)