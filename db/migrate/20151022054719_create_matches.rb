class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.string :name
      t.integer :black_player_id
      t.integer :white_player_id
      t.integer :winner_id
      t.integer :draw_offerer_id
      t.boolean :game_active
      t.integer :num_turns
      t.boolean :black_turn

      t.timestamps null: false
    end
    add_index :matches, :black_player_id
    add_index :matches, :white_player_id
  end
end
