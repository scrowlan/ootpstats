class AddStatisticsToTournamentTier < ActiveRecord::Migration[7.1]
  def change
    add_reference :statistics, :tournament_tiers
  end
end
