class Worker
  include Sidekiq::Worker

  def perform(name, count)

  end
end
