Rails.application.routes.draw do

  namespace :v1 do
    
    mount_devise_token_auth_for 'User', at: 'auth'
    get 'test_auth' => 'test#members_only'
    # Areas
    get 'areas/:query' => 'areas#search'
    get 'areas/:type/:id' => 'areas#get', as: :area
    # Reviews
    get 'reviews/:object_type/:object_id' => 'reviews#index'
    post 'reviews/:object_type/:object_id' => 'reviews#create'
    delete 'reviews/:id' => 'reviews#destroy'
    # Users
    resources :users, only: [:index, :show, :update, :destroy]
    # Locals
    resources :locals, only: [:index, :show, :create, :update, :destroy]

    # --- Trips START
      # Trips requests
      resources :trips, only: [:index, :show, :create, :update, :destroy]

      # Trip offers
      get 'trip_offers' => 'trips#index', trip_type: 1
      post 'trip_offers' => 'trips#create', trip_type: 1
      put 'trip_offers' => 'trips#update', trip_type: 1
      patch 'trip_offers' => 'trips#update', trip_type: 1
      delete 'trip_offers' => 'trips#destroy', trip_type: 1
    # --- Trips END

    # Bookings
    resources :bookings, only: [:index, :show, :create, :update]
    # Messages
    resources :conversations, only: [:index, :show, :create]
    get 'conversations/:id' => 'conversations#show', as: :get_messages # Add :Date param for older messages
    post 'conversations/:id/add_message' => 'conversations#add'

  end

end
