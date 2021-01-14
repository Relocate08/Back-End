class EventsFacade
  def self.get_events(location)
    event_data = EventsService.fetch_events(location)
    valid_events = event_data[:events].select do |event|
      event[:is_canceled] == false
    end
    valid_events.map do |event|
      Event.new(event)
    end
  end
end
