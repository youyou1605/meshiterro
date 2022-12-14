Rails.application.routes.draw do

  devise_for :users
  root to: 'homes#top'

  resources :postimages, only: [:new,:create,:index,:show,:destroy] do
    resource :favorites, only: [:create,:destroy]
    resources :postcomments, only: [:create,:destroy]
  end
  resources :users, only: [:show,:edit,:update]
  get '/homes/about' => "homes#about",as: 'about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
