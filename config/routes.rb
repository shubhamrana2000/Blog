Rails.application.routes.draw do
  devise_for :users,controllers:{
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  
  get 'pages/home', to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")

  resources :posts do 
    resources :comments
  end
  
  get 'about', to: "pages#about"
  get 'myblog', to: "posts#myblog"

  root "posts#index"
end
