Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'
  get '/credit-insuffisant' => 'pages#credit-insuffisant'
  resources :players
  resources :tournaments do
    resources :registrations
  end

end
