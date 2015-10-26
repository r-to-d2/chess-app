class CreatePieces < ActiveRecord::Migration
  def change
    create_table :pieces do |t|
      t.integer :game_id
      t.integer :player_id
      t.string  :piece_type
      t.integer :current_position_x
      t.integer :current_position_y

      t.timestamps null: false
    end
    add_index :pieces, [:player_id, :game_id]
    add_index :pieces, :game_id
  end
end
