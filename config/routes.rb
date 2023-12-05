Rails.application.routes.draw do
  resources :legal_guardians
  resources :relationships
  resources :patients
  resources :languages
  resources :sexes
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "patients#index"
end
