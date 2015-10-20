Rails.application.routes.draw do
root 'home#index'
resources :users, except: [:new]

  # get '/profile', to: 'home#profile', as: 'profile'
  # get '/login', to: 'home#login', as: 'login'
  get '/signup', to: 'users#new', as: 'signup'
  # get '/about', to: 'home#about', as: 'about'
  # get '/how_it_works', to: 'home#how_it_works', as: 'how_it_works'
end
