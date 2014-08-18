class AddCountryColumnToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :country, :string
  end
end
