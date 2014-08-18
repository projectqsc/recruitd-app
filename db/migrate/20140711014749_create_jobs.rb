class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :name
      t.boolean :is_parent
      t.integer :parentid
      t.timestamps
    end
  end

end
