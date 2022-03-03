Rails.application.routes.draw do
  devise_for :users
  get 'users/admin' => 'users#admin'
  get 'users/index22' => 'users#index22'
  get 'users/index23' => 'users#index23'
  get 'users/index24' => 'users#index24'
  get 'users/index25' => 'users#index25'
  get 'users/index26' => 'users#index26'
  resources :users, only: [:show,:index]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'archs#index'
  get 'arch/new' => 'archs#new'
  get 'arch/about' => 'archs#about'
  post 'archs' => 'archs#create'
  get 'archs/:id' => 'archs#show',as: 'arch'
  patch 'archs/:id' => 'archs#update'
  get 'archs/:id/edit' => 'archs#edit', as:'edit_arch'
  delete 'archs/:id' => 'archs#destroy'
  resources :archs do
    resources :likes, only: [:create, :destroy]
    resources :comments, only: [:create]
  end

end
