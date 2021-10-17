Rails.application.routes.draw do
    resources  :tweets, :users
    root 'users#index'
    #root 'tweets#index'
    #root 'tops#login_form'
    
    get 'tops/main'
    get 'tops/login'
    post 'tops/login'
    get 'tops/logout'
    #root 'top#main'
    
    get 'tweets/index', to: 'tweets#index'
    get 'tweets/new', to: 'tweets#new'
    post 'tweets', to: 'tweets#create'
    
    get 'users/index', to: 'users#index'
    get 'users/new', to: 'users#new'
    post 'users', to: 'users#create'

=begin
    get 'top/main'
    post 'top/login'
    root 'top#main'
    get 'top/logout'
=end
end
