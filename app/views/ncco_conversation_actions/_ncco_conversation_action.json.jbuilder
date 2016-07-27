json.extract! ncco_conversation_action, :id, :name, :mute, :earmuff, :event_url, :event_method, :enter_sound, :exit_sound, :music_on_hold_url, :sound_on_enter, :end_on_exit, :location, :moderator_controls, :created_at, :updated_at
json.url ncco_conversation_action_url(ncco_conversation_action, format: :json)
