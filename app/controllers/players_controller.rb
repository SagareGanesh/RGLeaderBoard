class PlayersController < ApplicationController
  def new
    @team = Team.find(params[:team_id])
   @player = @team.players.new
  end

  def create
    @team = Team.find(params[:team_id])
    @player = @team.players.new(player_params)

    respond_to do |format|
      if @player.save
        format.html { redirect_to @team, notice: 'Team was successfully created.' }
        format.json { render :show, status: :created, location: @player }
      else
        format.html { render :new }
        format.json { render json: @player.errors, status: :unprocessable_entity }
      end
    end
  end

private
  def player_params
    params.require(:player).permit(:name, :college_name)
  end
end
