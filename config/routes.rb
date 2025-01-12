Rails.application.routes.draw do
  get 'statistics/index'
  get 'statistics/show'
  get 'statistics/new'
  get 'statistics/create'
  get 'statistics/import'
  get 'tournaments/index'
  get 'tournaments/show'
  get 'tournaments/new'
  get 'tournaments/create'
  get 'tournaments/import'
  get 'pages/home'
  get 'run_environments/new'
  get 'run_environments/create'
  get 'run_environments/show'
  get 'run_environments/index'
  get 'players/new'
  get 'players/create'
  get 'players/show'
  get 'players/index'
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  resources :statistics do
    collection do
      post :import
    end
  end

  resources :run_environments do
    collection do
      post :import
    end
  end

  resources :players do
    collection do
      post :import
    end
  end

  resources :tournaments do
    collection do
      post :import
    end
  end
  # Defines the root path route ("/")
  root "pages#home"
end
