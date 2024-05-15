Rails.application.routes.draw do
  resources :meal_logs
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "sites#index"
end
