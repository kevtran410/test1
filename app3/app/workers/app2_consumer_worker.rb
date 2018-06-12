require 'sidekiq-scheduler'

class App2ConsumerWorker
  include Sidekiq::Worker

  def perform
    ConsumerServices.generate_fruit "2", "j"
  end
end
