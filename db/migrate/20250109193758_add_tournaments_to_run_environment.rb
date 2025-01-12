class AddTournamentsToRunEnvironment < ActiveRecord::Migration[7.1]
  def change
    add_foreign_key :tournaments, :run_environments, column: :year, primary_key: "year"
  end
end
