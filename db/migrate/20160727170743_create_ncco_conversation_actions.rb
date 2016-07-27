class CreateNccoConversationActions < ActiveRecord::Migration[5.0]
  def change
    create_table :ncco_conversation_actions do |t|
      t.string :name
      t.string :mute
      t.string :earmuff
      t.string :event_url
      t.string :event_method
      t.string :enter_sound
      t.string :exit_sound
      t.string :music_on_hold_url
      t.string :sound_on_enter
      t.string :end_on_exit
      t.string :location
      t.string :moderator_controls
      t.string :record

      t.timestamps
    end
  end
end
