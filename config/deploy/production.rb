set :stage, :production
server '192.168.0.65', user: 'deploy', role: %w{web app db}
