class CreateRunEnvironments < ActiveRecord::Migration[7.1]
  def change
    create_table :run_environments, id: false, primary_key: :year do |t|
      t.integer :year, index: { unique: true }
      t.float :contact
      t.float :gap_power
      t.float :hr_power
      t.float :eye
      t.float :avoid_k
      t.float :stuff
      t.float :movement
      t.float :control
      t.float :speed
      t.float :fielding

      t.timestamps
    end
  end
end
