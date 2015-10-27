Rails.application.routes.draw do
  root 'home#index'

  #account activations
  resources :account_activations, only: [:edit]

  #charges
  resources :charges

  #home
  get '/about', to: 'home#about', as: 'about'
  get '/how_it_works', to: 'home#how_it_works', as: 'how_it_works'

  #organizations
  resources :organizations, only: [:create, :update, :new, :index]
  get '/organizations/:name/edit', to: 'organizations#edit', as: 'edit_organization'

  #projects
  resources :projects, except: [:show, :edit]
  get '/projects/:title/:id', to: 'projects#show', as: 'show_project'
  get '/projects/:title/:id/edit', to: 'projects#edit', as: 'edit_project'
  get '/account/:username/projects', to: 'projects#my_projects', as: 'my_projects'

  #sessions
  resources :sessions, only: [:create, :destroy]
  get '/login', to: 'sessions#new', as: 'login'

  #users
  resources :users, except: [:new, :show, :edit]
  get '/signup', to: 'users#new', as: 'signup'
  get '/account/:username', to: 'users#account', as: 'account'
  get '/account/:username/edit', to: 'users#edit', as: 'edit_user'
  get '/account/:username/delete', to: 'users#delete', as: 'delete_user'

  #volunteers
  resources :volunteers, only: [:create, :update, :new, :index]
  get '/volunteer/pending_projects', to: 'volunteers#pending_projects', as: 'pending_projects'
  get '/volunteer/:user_name/edit', to: 'volunteers#edit', as: 'edit_volunteer'
end
