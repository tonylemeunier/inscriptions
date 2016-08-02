Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :players
  resources :tournaments do
    resources :registrations
  end
end
