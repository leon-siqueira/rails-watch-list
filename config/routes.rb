Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :lists, only: [:index, :show, :create, :new, :edit, :update] do
    resources :bookmarks, only: [:new, :create]
    # resources :movies, only: [:new, :create]
  end


  resources :bookmarks, only: [:destroy]
  root 'lists#index'
  # resources :movies, only: [:destroy]
end
