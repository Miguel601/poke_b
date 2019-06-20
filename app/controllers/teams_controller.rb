class TeamsController < ApplicationController

    def index
        @teams = Teams.all
        render json: @teams
    end

    def show
        @team = Teams.find(params[:id])
        render json: @team
    end

    def new
       @team = Teams.new
    end

    def create
        @team = Teams.new(team_params)
    end




    private
    def team_params
        params.permit(:name, :trainer_id)
    end
end
