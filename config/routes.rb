Rails.application.routes.draw do
  resources :tracks do
      member do
          get :play
      end
  end
  resources :labels
  resources :albums do
      member do
          get :play
      end
  end
  resources :album_groups
  resources :artists
  resources :secondary_genres
  resources :genres
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
