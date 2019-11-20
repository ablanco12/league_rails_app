class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.integer :team_id
      t.integer :player_id
      t.integer :game_number
      t.string :date

      t.timestamps
    end
  end
end