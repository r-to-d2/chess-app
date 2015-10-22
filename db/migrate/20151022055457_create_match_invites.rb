class CreateMatchInvites < ActiveRecord::Migration
  def change
    create_table :match_invites do |t|
      t.integer :match_id
      t.integer :host_id
      t.integer :guest_id
      t.boolean :accepted
      t.boolean :guest_chose_black

      t.timestamps null: false
    end
    add_index :match_invites, :host_id
    add_index :match_invites, :guest_id
  end
end
