class Trainer < ApplicationRecord
    has_many :teams
    has_many :pokemons, through: :teams 

end
