Rails.application.routes.draw do
  root :to => "home#index"
  namespace :api do
    namespace :v1 do
      get '/dashboard', to: 'dashboards#index', as: 'dashboard'
      resources :foods, path: "list", only: %i(index)
      resources :requests, only: [:index, :create, :show, :destory] 
    end
  end
  match "*path", to: "home#index", via: :get
end
