Rails.application.routes.draw do
  get 'helloworld' => 'api#hello_world'

  namespace :v1 do
    mount_devise_token_auth_for 'User', at: 'auth'
    get 'test_auth' => 'test#members_only'
    get 'search/:query' => 'areas#search'
    get 'areas/:type/:id' => 'areas#get', as: :area
  end

end
