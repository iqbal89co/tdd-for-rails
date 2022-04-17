Rails.application.routes.draw do
  get 'foods/index'
  resources :foods, :path => 'foods'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
