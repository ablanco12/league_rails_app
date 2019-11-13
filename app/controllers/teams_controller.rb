class TeamsController < ApplicationController
    before_action :find_team only: [:show, :edit, :update, :destroy]

    def index 
        

    end 

    def show

    end 

    def new

    end 

    def create

    end 

    def edit

    end 

    def update

    end 

    def destroy

    end 

    private 

    def team_params 
        params.require(:team).require(:team_name, :region, :season_wins, :season_wins)
    end 

    def find_params
        @team = Team.find(params[:id])
    end 
end
