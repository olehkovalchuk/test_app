# server '138.201.234.131', user: 'gsuser', port: 2244, roles: [:web, :app, :db], primary: true
#server '176.9.103.19', user: 'deploy', port: 22, roles: [:web, :app, :db], primary: true


# set :keep_releases, 3
# set :branch, :master
# sitemaps = (1..13).to_a.map{|i| "public/sitemap#{i}.xml" }

# set :linked_files, ["config/secrets.yml", "public/sitemap.xml", "credentials.yml.enc"].concat(sitemaps)

# set :linked_dirs, %w{log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system node_modules storage public/storage}
# after 'deploy:publishing', 'deploy:restart'



# set :deploy_to, 'path to the folder where app should be deployed e.g. /home/deploy/contract-template-editor/api'
# set :stage, :production
# set :rails_env, :production

# server-based syntax
# ======================
# Defines a single server with a list of roles and multiple properties.
# You can define all roles on a single server, or split them:

# server "example.com", user: "deploy", roles: %w{app db web}, my_property: :my_value
# server "example.com", user: "deploy", roles: %w{app web}, other_property: :other_value
# server "db.example.com", user: "deploy", roles: %w{db}



# role-based syntax
# ==================

# Defines a role with one or multiple servers. The primary server in each
# group is considered to be the first unless any hosts have the primary
# property set. Specify the username and a domain or IP for the server.
# Don't use `:all`, it's a meta role.

# role :app, %w{deploy@example.com}, my_property: :my_value
# role :web, %w{user1@primary.com user2@additional.com}, other_property: :other_value
# role :db,  %w{deploy@example.com}



# Configuration
# =============
# You can set any configuration variable like in config/deploy.rb
# These variables are then only loaded and set in this stage.
# For available Capistrano configuration variables see the documentation page.
# http://capistranorb.com/documentation/getting-started/configuration/
# Feel free to add new variables to customise your setup.



# Custom SSH Options
# ==================
# You may pass any option but keep in mind that net/ssh understands a
# limited set of options, consult the Net::SSH documentation.
# http://net-ssh.github.io/net-ssh/classes/Net/SSH.html#method-c-start
#
# Global options
# --------------
#  set :ssh_options, {
#    keys: %w(/home/user_name/.ssh/id_rsa),
#    forward_agent: false,
#    auth_methods: %w(password)
#  }
#
# The server-based syntax can be used to override options:
# ------------------------------------
# server "example.com",
#   user: "user_name",
#   roles: %w{web app},
#   ssh_options: {
#     user: "user_name", # overrides user setting above
#     keys: %w(/home/user_name/.ssh/id_rsa),
#     forward_agent: false,
#     auth_methods: %w(publickey password)
#     # password: "please use keys"
#   }
