# config valid for current version and patch releases of Capistrano
lock "~> 3.17.3"

set :application, "test_app"
set :repo_url, "git@github.com:olehkovalchuk/test_app.git"

set :rvm_ruby_version, "ruby-2.6.3"
set :default_env, { rvm_bin_path: "~/.rvm/bin" }
# set :linked_files, ["config/secrets.yml"]
set :linked_files, %w[config/database.yml config/master.key]
# set :linked_files, %w[config/application.yml config/database.yml config/master.key]

append :linked_dirs, %w[log tmp/pids tmp/cache tmp/sockets vendor/bundle .bundle public/system public/uploads node_modules]

set :keep_releases, 3
set :conditionally_migrate, true

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
set :deploy_to, "/var/www/my_test_app"
before 'deploy:starting', 'config_files:upload'


# set this to false after deploying for the first time 
set :initial, true

# run only if app is being deployed for the very first time, should update "set :initial, true" above to run this
before 'deploy:migrate', 'database:create' if fetch(:initial)
after 'deploy:publishing', 'application:reload'

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# append :linked_files, "config/database.yml", 'config/master.key'

# Default value for linked_dirs is []
# append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "tmp/webpacker", "public/system", "vendor", "storage"

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for local_user is ENV['USER']
# set :local_user, -> { `git config user.name`.chomp }

# Default value for keep_releases is 5
# set :keep_releases, 5

# Uncomment the following to require manually verifying the host key before first deploy.
# set :ssh_options, verify_host_key: :secure
