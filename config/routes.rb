Dmap::Application.routes.draw do
  
  get "home/index"
  get "home/about"

  resources :tenures
  resources :people
  resources :positions
  resources :bodies
  resources :agencies
  resources :jurisdictions

  root :to => "home#index"
end
