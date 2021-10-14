Rails.application.routes.draw do
    get 'tweets/index', to: 'tweets#index'
    root 'tweets#index'
    get 'tweets/new', to: 'tweets#new'
    post 'tweets', to: 'tweets#create'
    delete 'tweets/:id', to: 'tweets#destroy'
    get 'tweets/:id', to: 'tweets#show'
    get 'tweets/:id/edit', to: 'tweets#edit'
    patch 'tweets/:id', to: 'tweets#update'
    
    
    
    get 'users/index', to: 'users#index'
    root 'users#index'
    get 'users/new', to: 'users#new'
    post 'users', to: 'users#create'
    delete 'users/:id', to: 'users#destroy'
end
