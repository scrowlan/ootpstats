class PlayersController < ApplicationController
  def new
  end

  def create
  end

  def import
    file = params[:file]
    return redirect_to run_environments_path, notice: 'Only CSV please' unless file.content_type == 'text/csv'
    PlayerImportService.new.call(file)
    redirect_to players_path, notice: 'CSV imported!'
  end

  def show
    @player = Player.find(params[:id])
    @tournaments = @player.tournaments
  end

  def index
    @players = Player.all
  end
end
