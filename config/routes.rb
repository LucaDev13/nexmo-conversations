Rails.application.routes.draw do
  root to: 'ncco_record_actions#index', as: 'record'

  resources :ncco_record_actions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
