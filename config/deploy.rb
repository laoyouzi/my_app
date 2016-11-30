# config valid only for current version of Capistrano
lock '3.6.1'

set :application, 'my_app_name'
set :repo_url, 'https://github.com/laoyouzi/my_app.git'
set :pid_file, "#{deploy_to}/current/tmp/pids/unicorn.pid"
set :unicorn_config_file, "#{current_path}/config/unicorn.rb"
set :listen_port, 5000

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
set :deploy_to, '/var/www/my_app'

# Default value for :scm is :git
set :scm, :git

# Default value for :format is :airbrussh.
set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
set :format_options, command_output: true, log_file: 'log/capistrano.log', color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
append :linked_files, 'config/database.yml', 'config/secrets.yml'

# Default value for linked_dirs is []
append :linked_dirs, 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'public/system'

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
set :keep_releases, 5

set :rvm_type, :auto
set :rvm_ruby_version, '2.3.0'

namespace :deploy do
  task :start do
    on roles(:app) do
      execute %{cd #{current_path} && if [ ! -f #{fetch(:pid_file)} ];
        then UNICORN_WORKER_NUM=#{fetch(:unicorn_worker_num)} RAILS_ENV=#{fetch(:env)} APP_PORT=#{fetch(:listen_port)}
        bundle exec unicorn -c #{fetch(:unicorn_config_file)} -D; fi}
    end
  end

  task :stop do
    on roles(:app) do
      execute %{cd #{current_path} && if [ -f #{fetch(:pid_file)}  ]
      && kill -0 `cat #{fetch(:pid_file)}`> /dev/null 2>&1; then kill -QUIT `cat #{fetch(:pid_file)}`;
      else rm #{fetch(:pid_file)} || exit 0; fi}
    end
  end

  task :restart do
    on roles(:app) do
      execute %{source /etc/profile.d/rvm.sh && cd #{current_path} && 
      if [ -f #{fetch(:pid_file)}  ] && kill -0 `cat #{fetch(:pid_file)}`> /dev/null 2>&1; 
      then kill -HUP `cat #{fetch(:pid_file)}`; else rm #{fetch(:pid_file)} || 
      UNICORN_WORKER_NUM=#{fetch(:unicorn_worker_num)} RAILS_ENV=#{fetch(:env)} APP_PORT=#{fetch(:listen_port)} 
      bundle exec unicorn -c #{fetch(:unicorn_config_file)} -D; fi}
    end
  end

  task :localize_config do
    on roles(:app) do
      execute "cd #{current_path} && echo #{fetch(:apns_prefix)} > config/apns_prefix.txt"
    end
  end

  desc "initialize the server folders"
  task :setup do
    on roles(:app) do
      execute "mkdir -p #{deploy_to}/releases"
      execute "mkdir -p #{deploy_to}/shared/log"
      execute "mkdir -p #{deploy_to}/shared/tmp/pids"
      execute "mkdir -p #{deploy_to}/shared/public"
      execute "mkdir -p #{deploy_to}/shared/tmp"
    end
  end
  after 'deploy:symlink:release', 'deploy:localize_config'
  after :finishing, 'deploy:cleanup'
end
