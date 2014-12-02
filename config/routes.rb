SeniorDesignSite::Application.routes.draw do
  resources :join_team_contracts
  get "projects/new"
  get "static_pages/home"
  get "uploads/index"
  get "uploads/uploadFile"
  resources :students
  resources :teams

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase
  get 'sessions/new'
  get 'static_pages/home'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  
  resources :professors
  resources :bids
  resources :students do
    collection { post :import }
  end
  resources :teams
  resources :projects

  root 'static_pages#home'
end
