class RemoveRecordFieldFromConversation < ActiveRecord::Migration[5.0]
  def change
    remove_column :ncco_conversation_actions, :record
  end
end
