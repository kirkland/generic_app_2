Inventory::Application.routes.draw do
  resources :users, :only => ['new', 'create']
  resources :sessions, :only => ['new', 'create', 'destroy']
  resources :welcome, :only => ['welcome']

  root :to => 'welcome#index'
end
