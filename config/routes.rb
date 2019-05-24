Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :artists, only: [:index, :show] do
    resources :songs, only: [:index, :show]
  end

  resources :artists
  resources :songs

  namespace :admin do
    resources :preferences, only: [:index]
  end
end
