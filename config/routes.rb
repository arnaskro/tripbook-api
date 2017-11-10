Rails.application.routes.draw do
  get 'helloworld' => 'api#hello_world'

  namespace :v1 do
    mount_devise_token_auth_for 'User', at: 'auth'
    get 'test_auth' => 'test#members_only'

    # Areas
    get 'areas/:query' => 'areas#search'
    get 'areas/:type/:id' => 'areas#get', as: :area

    # Users
    resources :users, only: [:index, :show, :update, :destroy]
    # Locals
    resources :locals, only: [:index, :show, :create, :update, :destroy]
    # Trips
    resources :trips, only: [:index, :show, :create, :update, :destroy]
    # Meetings
    resources :meetings, only: [:index, :show, :create, :update]
  end

end
