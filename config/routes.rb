Rails.application.routes.draw do
  root to: 'ncco_record_actions#index'

  resources :ncco_record_actions
  resources :ncco_conversation_actions 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
