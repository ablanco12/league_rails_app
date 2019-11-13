class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :region
      t.integer :season_wins
      t.integer :season_losses
      
      t.timestamps
    end
  end
end