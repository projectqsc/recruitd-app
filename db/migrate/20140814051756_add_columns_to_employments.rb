class AddColumnsToEmployments < ActiveRecord::Migration
  def change
    add_column :employments, :startdate, :datetime
    add_column :employments, :enddate, :datetime
  end
end
