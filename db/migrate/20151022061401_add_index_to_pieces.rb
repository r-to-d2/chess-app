class AddIndexToPieces < ActiveRecord::Migration
  def change
    add_index(:pieces, [:player_id, :match_id])
    add_index(:pieces, :match_id)
  end
end
