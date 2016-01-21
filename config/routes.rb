Rails.application.routes.draw do
  # mount_devise_token_auth_for 'User', at: 'auth'
  resources :announcements
  resources :calls
  resources :jobs
  resources :events
  
  # need to figure this out
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }


  # match "/*path" => redirect("/?goto=%{path}"), via: :get

  root to: 'application#angular'
end
