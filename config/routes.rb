Rails.application.routes.draw do
  root to: 'pages#home'

  get 'game', to: 'pages#game'

  get 'score', to: 'pages#score'

  get 'login', to: 'logins#login'

  post '/sessions/create', to: 'logins#create'

  post '/sessions/destroy', to: 'logins#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
