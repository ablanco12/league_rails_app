class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string :team_name
      t.string :region
      t.integer :s_wins
      t.integer :s_losses

      t.timestamps
    end
  end
end
