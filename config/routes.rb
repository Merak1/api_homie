Rails.application.routes.draw do
  resources :properties, only: [:index]
  resources :tennants do
    resources :properties , shallow: :true  
    
  end
end
