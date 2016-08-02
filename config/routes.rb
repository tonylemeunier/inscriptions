Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :players
  resources :tournaments do
    resources :registrations
      member do
        get 'index_registrations_by_tournament', to: "registrations#index_registrations_by_tournament"

      end
  end
end
