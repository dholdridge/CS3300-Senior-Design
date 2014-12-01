SeniorDesignSite::Application.routes.draw do
  get "projects/new"
  get "static_pages/home"
  resources :students
  resources :teams

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'students#new'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase
  get 'sessions/new'
  get 'static_pages/home'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  resources :bids
  resources :students
  resources :teams

  root 'sessions#new'
end
