class EventUrl < ApplicationRecord

  def self.search(search)
    if search
    where(" uuid || conversation_uuid || direction || recording_url  LIKE ?", "%#{search}%")
    else
    order('id DESC')
   end
  end
end
