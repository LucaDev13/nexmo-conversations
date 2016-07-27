class CreateNccos < ActiveRecord::Migration[5.0]
  def change
    create_table :nccos do |t|

      t.timestamps
    end
  end
end
