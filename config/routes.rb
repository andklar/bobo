Rails.application.routes.draw do
  root 'seasons#index'
  
  resources :seasons do
  	resources :beers
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
