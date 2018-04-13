Rails.application.routes.draw do
  
  
  root 'welcome#index'

  #  Remove Commented out line below to activate registration
  # get 'users/sign_up' => redirect('404.html')
  
  get '/schedule', to: 'schedules#index', as: 'schedule'
  resources :schedules
  resources :matches
  resources :clips
  devise_for :users

  
  




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
