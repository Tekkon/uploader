server '89.223.24.167', user: 'deploy', roles: %w{app db web}

set :application, "uploader"
set :deploy_to, -> { "/srv/#{fetch(:application)}" }
set :rails_env, "production"
