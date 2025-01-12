class ChangeTournamentColumnName < ActiveRecord::Migration[7.1]
  def change
    remove_column :tournaments, :type
    add_column :tournaments, :start, :string
  end
end
