Rails.application.routes.draw do
  get '/users/random_user', as: 'random_user'
 
  resources :users
  root "users#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
