class CreateNccoTalkActions < ActiveRecord::Migration[5.0]
  def change
    create_table :ncco_talk_actions do |t|
      t.string :loop
      t.string :text
      t.string :level
      t.string :voice_name

      t.timestamps
    end
  end
end
