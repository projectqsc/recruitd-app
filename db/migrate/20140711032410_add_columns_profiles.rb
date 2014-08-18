class AddColumnsProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :web_site, :string
    add_column :profiles, :blog, :string
    add_column :profiles, :stack_overflow, :string
    add_column :profiles, :dribble, :string
  end
end
