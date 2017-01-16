Rails.application.routes.draw do
  devise_for :users
  resources :cine_movies

  root 'cine_movies#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
