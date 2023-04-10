Rails.application.routes.draw do
  get 'search', to: "search#index"

  devise_for :users,controllers:{
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  
  get 'home', to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")

  resources :posts do 
    resources :comments
  end
  
  get 'about', to: "pages#about"
  get 'myblog', to: "posts#myblog"

  # get 'root', to: "posts#index"

  root "posts#index"
end
