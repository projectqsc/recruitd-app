class CreateLanguages < ActiveRecord::Migration
  def change
    create_table :languages do |t|
      t.belongs_to :profile
      t.string :name
      t.timestamps
    end
  end
end