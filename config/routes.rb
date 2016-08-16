Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'
  get '/credit-insuffisant' => 'pages#credit-insuffisant'
  get '/comment-ca-fonctionne' => 'pages#comment-ca-fonctionne'
  resources :players do
    resources :transactions
  end
  resources :tournaments do
    resources :registrations
  end

end
