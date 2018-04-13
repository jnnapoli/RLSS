Rails.application.routes.draw do

  #  Remove Commented out line below to activate registration
  # get 'users/sign_up' => redirect('404.html')


  devise_for :users

  root 'welcome#index'
  
  

  resources :matches



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
