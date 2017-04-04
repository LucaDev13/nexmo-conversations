class AddDtmfColumnToEventurls < ActiveRecord::Migration[5.0]
  def change
        add_column :event_urls, :dtmf, :string
  end
end
