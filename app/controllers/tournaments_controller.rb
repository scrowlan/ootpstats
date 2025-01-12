class TournamentsController < ApplicationController
  def index
    @tournaments = Tournament.all
  end

  def show
    @tournament = Tournament.find(params[:id])
  end

  def new
  end

  def create
  end

  def import
    file = params[:file]
    return redirect_to tournaments_path, notice: 'Only CSV please' unless file.content_type == 'text/csv'
    TournamentImportService.new.call(file)
    redirect_to tournaments_path, notice: 'CSV imported!'
  end
end
