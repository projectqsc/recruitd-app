class CreateUserPrivacies < ActiveRecord::Migration
  def change
    create_table :user_privacies do |t|
      t.string :name
      t.integer :user_id
      t.timestamps
    end
  end
end
