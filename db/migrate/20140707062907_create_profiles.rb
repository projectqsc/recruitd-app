class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :email
      t.string :location
      t.string :phone
      t.text :skills
      t.integer :user_id

      t.timestamps
    end
  end
end
