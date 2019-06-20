class PokemonsController < ApplicationController

    def index
        @pokemons = Pokemon.all
        render json: @pokemons
    end

    def show
        @pokemon = Pokemon.find(params[:id])
        render json: @pokemon
    end

    def update

        @pokemon = Pokemon.find(params[:id])
        @pokemon.update(pokemon_params)
        if @pokemon.save
          render json: @pokemon, status: :accepted
        else
          render json: { errors: @pokemon.errors.full_messages }, status: :unprocessible_entity
        end
      end
  
private
    def pokemon_params
        params.permit(:id, :name, :type, :sprite, :weight, :height, :likes)
    end
end
