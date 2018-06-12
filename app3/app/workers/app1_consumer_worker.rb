require 'sidekiq-scheduler'

class App1ConsumerWorker
  include Sidekiq::Worker

  def perform
    ConsumerServices.generate_fruit "1", "f"
  end
end
