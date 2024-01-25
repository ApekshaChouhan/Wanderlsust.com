Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
    resources :users, param: :_username
    post '/auth/login', to: 'authentication#login'
    get '/*a', to: 'application#not_found'

    namespace :block_rserve do
      resources :reservations do
        collection do
          post :create
          
        end
        # member do
        #   put :reset_password
        # end
      end
    end
  end
