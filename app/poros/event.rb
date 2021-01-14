class Event
  attr_reader :id,
              :name,
              :is_free,
              :is_canceled,
              :url,
              :attending_count,
              :interested_count,
              :location,
              :time_start

  def initialize(event)
    @id = event[:id]
    @name = event[:name]
    @is_free = event[:is_free]
    @is_canceled = event[:is_canceled]
    @url = event[:url]
    @attending_count = event[:attending_count]
    @interested_count = (event[:interested_count])
    @location = event[:location]
    @time_start = time_parsed(event[:time_start])
  end

  def time_parsed(time)
    Time.iso8601(time)
  end
end
