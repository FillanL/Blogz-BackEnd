Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'users/index'
      get 'users/show'
      get 'users/create'
    end
  end
  namespace :api do
    namespace :v1 do
      get 'articles/index'
      get 'articles/show'
      get 'articles/create'
    end
  end
  namespace :api do
    namespace :v1 do
      resources :saved_articles
      resources :articles
      resources :users
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
