Rails.application.routes.draw do
root 'home#index'
resources :users, except: [:new, :show, :edit]
resources :sessions, only: [:create, :destroy]

  # get '/profile', to: 'home#profile', as: 'profile'
  get '/login', to: 'sessions#new', as: 'login'
  get '/signup', to: 'users#new', as: 'signup'
  get '/:username', to: 'users#account', as: 'account'
  get '/:username/edit', to: 'users#edit', as: 'edit_user'
  # get '/about', to: 'home#about', as: 'about'
  # get '/how_it_works', to: 'home#how_it_works', as: 'how_it_works'
end
