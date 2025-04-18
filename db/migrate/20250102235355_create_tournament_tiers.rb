class CreateTournamentTiers < ActiveRecord::Migration[7.1]
  def change
    create_table :tournament_tiers do |t|

      t.timestamps
    end
  end
end
