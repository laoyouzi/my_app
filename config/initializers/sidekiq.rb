redis_server = '127.0.0.1'
redis_port = 6379
redis_db_num = 0

Sidekiq.configure_server do |config|
  config.redis = { :url => "redis://#{redis_server}:#{redis_port}/#{redis_db_num}", :namespace => "my_app_#{Rails.env[0,3]}" }
end

Sidekiq.configure_client do |config|
  config.redis = { :url => "redis://#{redis_server}:#{redis_port}/#{redis_db_num}", :namespace => "my_app_#{Rails.env[0,3]}" }
end
