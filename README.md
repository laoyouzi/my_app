== README

T# 创建项目
$ rails new capstrano_demo -B -T
# 创建 migrate 内容
$ rails g scaffold post title content:text

# 添加 capistrano 相关 gem 到Gemfile
gem 'capistrano'
gem 'capistrano-rails'
gem 'capistrano-rvm'

$ bundle install

# 初始化 cap 相关配置文件
$ bundle exec cap install
$ git remote add origin https://github.com/polarlights/capstrano_demo
$ git push -u origin master

# 安装 git, rvm等
$ sudo rvm requirements
$ sudo apt-get install git ndoejs

# 创建用户和组
sudo groupadd web
sudo useradd -m -g web -G rvm web -s /bin/bash

# 加 ssh-key 添加到远程机器
$ vim ~/.ssh/authorized_keys

# 创建相关文件
$ bundle exec cap production deploy:check
# 复制相关文件到 server，比如 database.yml 等
