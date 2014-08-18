class CreateEmployments < ActiveRecord::Migration
  def change
    create_table :employments do |t|
            t.string :company
            t.string :position
            t.string :start_date
            t.string :end_date
            t.boolean :is_present
            t.text :description
            t.integer :profile_id
            t.timestamps
          end
  end
end
