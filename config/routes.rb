Rails.application.routes.draw do

  get 'static_pages/qui-sommes-nous', as: 'qui_sommes_nous'

  devise_for :users
  root 'events#index'

  resources :events do
    resources :pictures, only: [:create]
  end

  resources :users, only: [:show, :edit, :update] do
    resources :avatars, only: [:create, :edit]
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
