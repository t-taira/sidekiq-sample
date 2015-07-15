class Event2Worker
  include Sidekiq::Worker
  sidekiq_options queue: :event2

  def perform(id)
    @event = Event.find(id)
    p '=' * 100
    p @event.name
    #sleep(10)
  end
end