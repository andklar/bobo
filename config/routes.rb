Rails.application.routes.draw do
  resources :seasons
  root 'beers#index'
  
  resources :beers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
