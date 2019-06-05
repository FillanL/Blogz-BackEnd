Rails.application.routes.draw do
  
  namespace :api do
    namespace :v1 do
      resources :saved_articles
      resources :articles
      resources :users
      get 'auth/:id', to: 'auth#index'
      post 'auth/', to: 'auth#create'
      get 'auth/', to: 'auth#show'

    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
