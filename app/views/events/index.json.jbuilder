json.array!(@events) do |event|
  json.extract! event, :id, :title, :start_datetime, :end_date, :end_time, :recurring, :location, :description, :url
  json.url event_url(event, format: :json)
end
