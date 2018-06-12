require 'sidekiq-scheduler'

class App1SeederWorker
  include Sidekiq::Worker

  def perform
    SeederServices.generate "1"
  end
end
