Evento::Application.routes.draw do
  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
  resources :attendees
  resources :exhibits
  resources :presentations
  resources :speakers
  resources :sponsors
  get 'admin',   to: 'admin#index', as: 'admin'
  resources :admins

end