class AddColumnsToEventUrls < ActiveRecord::Migration[5.0]
  def change
    add_column :event_urls, :uuid, :string
    add_column :event_urls, :conversation_uuid, :string
    add_column :event_urls, :to, :string
    add_column :event_urls, :from, :string
    add_column :event_urls, :direction, :string
    add_column :event_urls, :recording_url, :string
    add_column :event_urls, :rate, :string
    add_column :event_urls, :start_time, :string
    add_column :event_urls, :network, :string
    add_column :event_urls, :status, :string
    add_column :event_urls, :price, :string
    add_column :event_urls, :duration, :string
    add_column :event_urls, :end_time, :string
  end
end
