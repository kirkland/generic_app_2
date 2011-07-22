Inventory::Application.routes.draw do
  resources :users, :only => ['new', 'create']
  resources :sessions, :only => ['create', 'destroy']

  root :to => 'users#new'
end
