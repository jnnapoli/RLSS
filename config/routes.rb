Rails.application.routes.draw do
  

  root 'welcome#index'

  #  ACTIVATE REGISTRATION BY COMMENTING THIS OUT
  get 'users/sign_up' => redirect('404.html')




  get 'rules', action: :rules, controller: 'welcome'
  
  get 'matches/recent1', action: :recent1, controller: 'matches'

  
  get 'matches/recent2', action: :recent2, controller: 'matches'
  

  get 'brackets/:id/reward_sun', action: :reward_sun, controller: 'brackets'

  get 'brackets/:id/reward_wed', action: :reward_wed, controller: 'brackets'

  get 'brackets/:id/reward_fri', action: :reward_fri, controller: 'brackets'



  get 'leaderboards/sunday', action: :sunday, controller: 'leaderboards'

  get 'leaderboards/wednesday', action: :wednesday, controller: 'leaderboards'

  get 'leaderboards/friday', action: :friday, controller: 'leaderboards'
  
  #get '/schedule', to: 'schedules#index', as: 'schedule'
  resources :schedules
  resources :matches
  resources :clips

  resources :brackets
  resources :leaderboards
  devise_for :users

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  
  




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
