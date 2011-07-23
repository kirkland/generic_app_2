Inventory::Application.routes.draw do
  resources :users, :only => ['new', 'create']
  resources :sessions, :only => ['new', 'create', 'destroy']
  resources :welcome, :only => ['index']

  get 'sign_in' => 'sessions#new', :as => :sign_in
  get 'sign_out' => 'sessions#destroy', :as => :sign_out

  root :to => 'welcome#index'
end
