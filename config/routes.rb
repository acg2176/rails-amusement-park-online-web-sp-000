Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :attractions
  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/users/new' => 'users#new'
  post '/logout' => 'sessions#destroy'
  root 'welcome#home'
  post '/ride' => 'users#ride'
end
