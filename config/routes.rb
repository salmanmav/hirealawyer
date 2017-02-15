Rails.application.routes.draw do
  root 'clients#index'

  devise_for :clients, controllers: { registrations: 'clients/registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
