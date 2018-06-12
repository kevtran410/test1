require 'sidekiq-scheduler'

class App2SeederWorker
  include Sidekiq::Worker

  def perform
    SeederServices.generate "2"
  end
end
