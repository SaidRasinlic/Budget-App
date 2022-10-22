Rails.application.routes.draw do
  get 'splash/index'

  devise_scope :user do
    authenticated :user do
      root 'groups#index', as: :authenticated_root
    end
    unauthenticated { root 'splash#index', as: :unauthenticated_root }
  end

  devise_for :users, controllers: { registrations: 'registrations' }

  resources :splash, only:[:index]
  resources :users, only: [:show, :income, :update, :destroy]
  resources :groups, only: [:index ,:show, :new, :create,  :destroy] do
    resources :entities, only: [:index, :show, :new, :create, :destroy]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  #root "articles#index"
end
