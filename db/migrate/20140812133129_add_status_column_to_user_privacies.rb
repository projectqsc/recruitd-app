class AddStatusColumnToUserPrivacies < ActiveRecord::Migration
  def change
    add_column :user_privacies, :status, :string, :default => "Awaiting"
  end
end
