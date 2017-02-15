Rails.application.routes.draw do
  
  
  root 'clients#index'
  
  devise_for :lawyers, controllers: { registrations: 'lawyers_devise/registrations', sessions: 'lawyers_devise/sessions' }
  devise_for :clients, controllers: { registrations: 'clients/registrations' }
  resources :clients
  resources :lawyers do
  	collection do
  		get :dashboard
  		post :lawyer_profile
  	end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
