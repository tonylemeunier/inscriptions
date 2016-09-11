set :stage, :production
server '192.168.0.66', user: 'deploy', role: %w{web app db}

set :development
server '192.168.0.66', user: 'deploy', role: %w{web app db}
