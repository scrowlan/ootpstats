class ChangeTournamentTierColumnName < ActiveRecord::Migration[7.1]
  def change
    remove_column :tournament_tiers, :type
    add_column :tournament_tiers, :start, :string
  end
end
