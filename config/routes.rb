Rails.application.routes.draw do
  devise_for :users
  resources :residents

  root :to => "home#index"
end
