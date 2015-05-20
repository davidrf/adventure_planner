class CreateAdventureMemberships < ActiveRecord::Migration
  def change
    create_table :adventure_memberships do |t|
      t.integer :adventure_id, null: false
      t.integer :user_id, null: false
      t.boolean :host, null: false, default: false

      t.index :adventure_id
      t.index :user_id
      t.index [:adventure_id, :user_id], unique: true
    end
  end
end
