SeniorDesignSite::Application.routes.draw do
  get 'sessions/new'
  get 'static_pages/home'
  post 'login' => 'sessions#create'

  resources :bids
  resources :students
  resources :teams

  root 'students#new'
end
