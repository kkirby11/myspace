Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'api/auth'
  namespace :api do
    resources :posts, only: [:index, :update]
    resources :users, only: [:index, :update]
  end
  get '*other', to: 'static#index'
end
