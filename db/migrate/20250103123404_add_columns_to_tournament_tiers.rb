class AddColumnsToTournamentTiers < ActiveRecord::Migration[7.1]
  def change
    add_column :tournament_tiers, :title, :string
    add_column :tournament_tiers, :type, :string
    add_column :tournament_tiers, :mode, :string
    add_column :tournament_tiers, :entry_fee, :string
    add_column :tournament_tiers, :dh, :string
    add_column :tournament_tiers, :park, :string
    add_column :tournament_tiers, :year, :integer
    add_column :tournament_tiers, :cap, :integer
    add_column :tournament_tiers, :variant_limit, :integer 
  end
end
