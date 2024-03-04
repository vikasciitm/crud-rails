Rails.application.routes.draw do
  root "home#index"
  resources :students do
    collection do
      get :add
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :teachers
end
