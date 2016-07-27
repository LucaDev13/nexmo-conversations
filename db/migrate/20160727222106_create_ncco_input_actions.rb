class CreateNccoInputActions < ActiveRecord::Migration[5.0]
  def change
    create_table :ncco_input_actions do |t|
      t.string :time_out
      t.string :max_digits
      t.string :submit_on_hash
      t.string :event_url
      t.string :event_method

      t.timestamps
    end
  end
end
