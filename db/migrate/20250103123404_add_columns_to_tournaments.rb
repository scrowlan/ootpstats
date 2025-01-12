class AddColumnsToTournaments < ActiveRecord::Migration[7.1]
  def change
    add_column :tournaments, :title, :string
    add_column :tournaments, :type, :string
    add_column :tournaments, :mode, :string
    add_column :tournaments, :entry_fee, :string
    add_column :tournaments, :dh, :string
    add_column :tournaments, :park, :string
    add_column :tournaments, :year, :integer
  end
end
