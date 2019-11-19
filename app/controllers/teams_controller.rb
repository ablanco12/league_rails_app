class TeamsController < ApplicationController
    before_action :find_team, only:[:show, :edit, :update, :destroy]

    def index 
        @teams = Team.all 
    end 

    def show
    end 

    def new
        @team = Team.new 
    end 

    def create
        @team = Team.new(team_params)
        
        if @team.save
        redirect_to @team 
            
        else
            @errors = @team.errors.full_messages
            render :new
        end
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
        params.require(:team).permit(:name, :region, :season_wins, :season_losses)
    end 

    def find_team
        @team = Team.find(params[:id])
    end 
end