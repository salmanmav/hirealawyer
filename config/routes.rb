Rails.application.routes.draw do
  
  
  
  
  devise_for :lawyers, controllers: { registrations: 'lawyers_devise/registrations', sessions: 'lawyers_devise/sessions' }
  devise_for :clients, controllers: { registrations: 'clients/registrations' }
  resources :clients
  resources :lawyers do
    member do 
      get :dashboard
      get :profile
    end
  	collection do
  		post :search
      # get :dashboard
  		post :lawyer_profile
  	end
  end

  devise_scope :lawyers do
    authenticated  do
      root to: 'lawyers#index', as: 'authenticated_lawyer_root'
    end
  end
  root 'clients#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
