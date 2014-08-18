class AddProfileStatusColumnToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :profile_status, :string, :default => "Registered"
  end
end
