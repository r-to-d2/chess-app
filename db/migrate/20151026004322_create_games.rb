class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :game_name
      t.integer :black_player_id
      t.integer :white_player_id
      t.integer :winner_id
      t.integer :current_turn

      t.timestamps null: false
    end
    
    add_index :games, :black_player_id
    add_index :games, :white_player_id
  end
end
