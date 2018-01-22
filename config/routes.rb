Rails.application.routes.draw do
  devise_for :users
  get 'dashboard/index'

  resources :responsibilities do
    member do
      get :complete
    end
  end
  resources :journals
  resources :timeblocks
  resources :goals

  root 'dashboard#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end