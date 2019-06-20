Rails.application.routes.draw do
  resources :trainers
  resources :pokemon_teams
  resources :teams
  resources :pokemons
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
