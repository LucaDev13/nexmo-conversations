Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :event_urls
  root to: 'nccos#index'
  
  resources :nccos
  resources :ncco_input_actions
  resources :ncco_stream_actions
  resources :ncco_talk_actions
  resources :ncco_connect_actions
  resources :ncco_record_actions
  resources :ncco_conversation_actions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
