server '89.223.24.167', user: 'root' #, roles: %w{app db web cron}

set :application, "uploader"
set :deploy_to, -> { "/srv/#{fetch(:application)}" }
set :rails_env, "production"