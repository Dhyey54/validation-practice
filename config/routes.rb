Rails.application.routes.draw do
  resources :posts
  # root "articles#index"
  resources :events
  resources :authors
  get 'regiter_details/index', action: :index, controller: :'register_details'

  resources :faculties
  resources :students
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
end
