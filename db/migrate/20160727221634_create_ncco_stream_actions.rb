class CreateNccoStreamActions < ActiveRecord::Migration[5.0]
  def change
    create_table :ncco_stream_actions do |t|
      t.string :stream_url
      t.string :loop

      t.timestamps
    end
  end
end
