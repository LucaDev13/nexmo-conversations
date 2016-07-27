class CreateNccoConnectActions < ActiveRecord::Migration[5.0]
  def change
    create_table :ncco_connect_actions do |t|
      t.string :event_url
      t.string :event_method
      t.string :backup_url
      t.string :backup_url
      t.string :backup_method
      t.string :timeout
      t.string :limit
      t.string :from
      t.string :halt_on_fail
      t.string :endpoint

      t.timestamps
    end
  end
end
