class CreateRecommendations < ActiveRecord::Migration
  def change
    create_table :recommendations do |t|
      t.string :name
      t.string :email
      t.string :status
      t.integer :profile_id

      t.timestamps
    end
  end
end
