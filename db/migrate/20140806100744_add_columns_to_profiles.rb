class AddColumnsToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :status, :string, :default => "Awaiting"
    add_column :profiles, :approval_date, :datetime
    add_column :profiles, :profile_type, :string
  end
end
