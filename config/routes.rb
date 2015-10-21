Rails.application.routes.draw do
root 'home#index'
resources :users, except: [:new, :show, :edit]
resources :sessions, only: [:create, :destroy]
resources :volunteers, except: [:edit, :show]

  get '/login', to: 'sessions#new', as: 'login'
  get '/signup', to: 'users#new', as: 'signup'
  get 'account/:username', to: 'users#account', as: 'account'
  get 'account/:username/edit', to: 'users#edit', as: 'edit_user'
  get '/volunteer/:user_name/edit', to: 'volunteers#edit', as: 'edit_volunteer'
  get 'organizations/:name/edit', to: 'organizations#edit', as: 'edit_organization'
  # get '/about', to: 'home#about', as: 'about'
  # get '/how_it_works', to: 'home#how_it_works', as: 'how_it_works'
end
