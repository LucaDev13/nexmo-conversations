class EventUrl < ApplicationRecord
 include AlgoliaSearch

  algoliasearch do
    searchableAttributes ['uuid', 'conversation_uuid', 'email']
  end

end
