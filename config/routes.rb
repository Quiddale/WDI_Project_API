Rails.application.routes.draw do
  scope :api do
    resources :worlds
    resources :users
    resources :pokemons
    resources :spots
    post "/register", to: "authentications#register"
    post "/login", to: "authentications#login"
  end
end
