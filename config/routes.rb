Rails.application.routes.draw do
  # get 'employes/index'
  get 'employes/show'
  # get 'employes/edit' 
  get '/new_employe_path', to: 'employes#new'
  root 'employes#index'
  # get 'home/show'
  # get 'home/edit'
  # get 'home/new'
  resources :employes 
#  get "/articles", to: "articles#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
