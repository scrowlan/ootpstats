class AddStatisticsToTournament < ActiveRecord::Migration[7.1]
  def change
    add_reference :statistics, :tournament
  end
end
