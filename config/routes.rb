Rails.application.routes.draw do
    resources :users
    resources :tweets
    resources :likes
    
    #root 'tops#main'
    #root 'users#index'
    root 'tweets#index'
    #root 'tops#login_form'
    
    get 'tops/main'
    post 'tops/login'
    get 'tops/logout'
    #root 'top#main'
end
