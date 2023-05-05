Rails.application.routes.draw do
  resources :posts do
    member do
      get 'like'
      delete 'dislike'
    end
  end
  # root "articles#index"
  resources :events
  resources :authors
  get 'regiter_details/index', action: :index, controller: :'register_details'

  resources :faculties
  resources :students
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
end
