Rails.application.routes.draw do
  get 'workout_categories/show'
  get 'workouts/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "workouts#index"

  resources :workouts
  resources :workout_categories
end
