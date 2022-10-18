Rails.application.routes.draw do
    resources :users
    resources :tweets
    resources :likes
    post'top/login'
    get 'top/logout'
    
    root 'tweets#index'
end
