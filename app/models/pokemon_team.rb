class PokemonTeam < ApplicationRecord
    belongs_to :pokemon
    belongs_to :teams
end
