SeniorDesignSite::Application.routes.draw do
  resources :join_team_contracts

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
