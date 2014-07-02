Rails.application.routes.draw do
  devise_for :users
  resources :residents

  post 'subscribe', to: 'home#subscribe'
  get 'thank_you', to: 'home#thank_you'

  root :to => "home#index"
end
