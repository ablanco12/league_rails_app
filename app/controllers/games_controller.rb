class GamesController < ApplicationController

    before_action :find_game, only:[:show, :edit, :update, :destroy]

    def index 
        @games = Game.all 
    end 

    def show
    end 

    def new
        @game = Game.new 
    end 

    def create
        @game = Game.create(game_params)
        redirect_to @game 
    end 

    def edit
    end 

    def update
        @game.update(team_params)
        redirect_to @game 

    end 

    def destroy
        @game.destroy
        redirect_to @game 
    end 

    private 

    def game_params 
        params.require(:game).require(:team_name, :region, :s_wins, :s_losses)
    end 

    def find_params
        @game = Game.find(params[:id])
    end 
end