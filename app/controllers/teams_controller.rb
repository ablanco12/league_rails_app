class TeamsController < ApplicationController
    before_action :find_team only: [:show, :edit, :update, :destroy]

    def index 
        @team = Team.all 
    end 

    def show
    end 

    def new
        @team = Team.new 
    end 

    def create
        @team = Team.create(team_params)
        redirect_to @team 
    end 

    def edit
    end 

    def update
        @team.update(team_params)
        redirect_to @team 

    end 

    def destroy
        @team.destroy
        redirect_to @team 
    end 

    private 

    def team_params 
        params.require(:team).require(:team_name, :region, :season_wins, :season_wins)
    end 

    def find_params
        @team = Team.find(params[:id])
    end 
end
