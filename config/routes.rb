Solarsystem::Application.routes.draw do

  resources :orbiters
  root "pages#home"

  get "/home", to: "pages#home", as: "home"
  get "/raw", to: "pages#raw", as: "raw"
  
end
