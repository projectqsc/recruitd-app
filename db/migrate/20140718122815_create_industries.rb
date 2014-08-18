class CreateIndustries < ActiveRecord::Migration
  def change
    create_table :industries do |t|
      t.belongs_to :profile
      t.string :name
      t.timestamps
    end
  end
end
