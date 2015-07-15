class EventWorker
  include Sidekiq::Worker
  sidekiq_options queue: :event

  def perform(id)
    @event = Event.find(id)
    p '-' * 100
    p id
    sleep(60)
  end
end