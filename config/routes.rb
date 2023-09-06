Rails.application.routes.draw do
  
  root to: "homes#top"
  devise_for :users
  resources :postimages, only: [:new, :create, :index, :show, :destroy]
  get "homes/about" => "homes#about", as: "about"
  resources :users, only: [:show, :edit, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

