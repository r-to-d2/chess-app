class CreatePieces < ActiveRecord::Migration
  def change
    create_table :pieces do |t|
      t.integer :match_id
      t.integer :player_id
      t.string  :piece_type
      t.integer :num_moves
      t.boolean :captured
      t.boolean :fromPawn
      t.integer :current_position_x
      t.integer :current_position_y

      t.timestamps null: false
    end
  end
end
