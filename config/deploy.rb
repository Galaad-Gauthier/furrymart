# config valid only for current version of Capistrano
lock '3.6.0'

set :application, 'furrymart'
set :repo_url, 'git@github.com:furrymart/furrymart.git'

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

set :deploy_to, '/home/app'
set :foreman_export_format, 'systemd'
set :foreman_env, "/home/app/.pam_environment"

namespace :figaro do
  desc "SCP transfer figaro configuration to the shared folder"
  task :setup do
    on roles(:app) do
      upload! "config/application.yml", "#{shared_path}/application.yml", via: :scp
    end
  end

  desc "Symlink application.yml to the release path"
  task :symlink do
    on roles(:app) do
      execute "ln -sf #{shared_path}/application.yml #{release_path}/config/application.yml"
    end
  end
end

namespace :robots do
  task :setup do
    on roles(:app) do
      upload! "public/robots.#{fetch(:stage)}.txt", "#{release_path}/public/robots.txt", via: :scp
    end
  end
end

namespace :sitemap do
  desc "Refresh sitemap"
  task :refresh do
    on roles(:sitemap) do
      execute "cd #{release_path} && bundle exec rake sitemap:refresh"
    end
  end
end

after "deploy:started", "figaro:setup"
after 'deploy:updating', 'figaro:symlink'
after 'deploy:cleanup', 'sitemap:refresh'
after "deploy:cleanup", "robots:setup"
