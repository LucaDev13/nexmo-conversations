class CreateNccoRecordActions < ActiveRecord::Migration[5.0]
  def change
    create_table :ncco_record_actions do |t|
      t.string :format
      t.string :split
      t.string :start_on_answer
      t.string :end_on_key
      t.string :destination_url
      t.string :streamed
      t.string :limit
      t.string :validity_time
      t.string :event_url
      t.string :event_method
      t.string :backup_url
      t.string :backup_method
      t.string :beep_start
      t.string :beep_finish
      t.string :secure

      t.timestamps
    end
  end
end
