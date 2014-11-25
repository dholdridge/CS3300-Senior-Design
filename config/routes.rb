SeniorDesignSite::Application.routes.draw do
  get "uploads/index"
  get "uploads/uploadFile"
  resources :professors
  resources :bids
  resources :students do
    collection { post :import }
  end
  resources :teams

  get 'sessions/new'
  get 'static_pages/home'
  post 'login' => 'sessions#create'

  root 'static_pages#home'
end
