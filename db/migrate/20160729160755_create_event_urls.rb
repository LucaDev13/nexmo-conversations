class CreateEventUrls < ActiveRecord::Migration[5.0]
  def change
    create_table :event_urls do |t|

      t.timestamps
    end
  end
end
