Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "profile", to: "pages#profile"
  get "myvenues", to: "pages#myvenues"

  resources :venues do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, except: [:new, :create] do
    resources :venue_reviews, only: [:new, :create]
  end
  resources :venue_reviews, except: [:new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
