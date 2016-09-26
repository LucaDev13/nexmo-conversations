json.extract! event_url, :id, :uuid, :conversation_uuid, :to, :from, :direction, :recording_url, :rate, :start_time, :network, :status, :price, :duration, :end_time, :created_at, :updated_at
json.url event_url_url(event_url, format: :json)
