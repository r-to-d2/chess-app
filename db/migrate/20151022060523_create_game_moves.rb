class CreateGameMoves < ActiveRecord::Migration
  def change
    create_table :game_moves do |t|
      t.integer :match_id
      t.string :piece_name
      t.boolean :black_piece
      t.integer :from_coord_x
      t.integer :from_coord_y
      t.integer :to_coord_x
      t.integer :to_coord_y
      t.string :algebraic_notation
      t.string :captured_piece
      t.boolean :castled
      t.string :promotion_choice
      t.boolean :en_passant

      t.timestamps null: false
    end
    add_index :game_moves, :match_id
  end
end
