class AddStatusColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :verification_status, :string, :default => "Unverified"
    add_column :users, :status, :string, :default => "Registered"
    add_column :users, :submission_date, :datetime
    add_column :users, :approval_date, :datetime
  end
end
