Rails.application.routes.draw do
  get 'helloworld' => 'api#hello_world'

  namespace :v1 do
    mount_devise_token_auth_for 'User', at: 'auth'
    get 'test_auth' => 'test#members_only'

    # Areas
    get 'search/:query' => 'areas#search'
    get 'areas/:type/:id' => 'areas#get', as: :area

    # Users
    get 'users/search/:query' => 'users#search'
    resources :users, only: [:index, :show, :update, :destroy]
  end

end
