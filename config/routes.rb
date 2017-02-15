Rails.application.routes.draw do
  
  
  root 'clients#index'
  resources :clients
  resources :lawyers
  devise_for :lawyers, controllers: { registrations: 'lawyers_devise/registrations', sessions: 'lawyers_devise/sessions' }
  devise_for :clients, controllers: { registrations: 'clients/registrations' }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
