class TournamentTiersController < ApplicationController
  def index
    @tournament_tiers = TournamentTier.all
  end

  def show
    @tournament_tier = TournamentTier.find(params[:id])
  end

  def new
  end

  def create
  end

  def import
    file = params[:file]
    return redirect_to tournament_tiers_path, notice: 'Only CSV please' unless file.content_type == 'text/csv'
    TournamentTierImportService.new.call(file)
    redirect_to tournament_tiers_path, notice: 'CSV imported!'
  end
end
