class AddStatisticsToPlayer < ActiveRecord::Migration[7.1]
  def change
    add_foreign_key :statistics, :players, column: :cid, primary_key: "cid"
  end
end
