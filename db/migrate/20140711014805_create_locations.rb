class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.boolean :is_parent
      t.integer :parentid
      t.timestamps
    end
  end
end
