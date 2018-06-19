Rails.application.routes.draw do
  
  
  root 'welcome#index'

  #  ACTIVATE REGISTRATION BY COMMENTING THIS OUT
  get 'users/sign_up' => redirect('404.html')
  
  
  
  
  
  get 'matches/recent1', action: :recent1, controller: 'matches'

  
  get 'matches/recent2', action: :recent2, controller: 'matches'
  

  
  
  #get '/schedule', to: 'schedules#index', as: 'schedule'
  resources :schedules
  resources :matches
  resources :clips
  devise_for :users

  
  




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
