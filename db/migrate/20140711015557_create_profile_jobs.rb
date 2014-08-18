class CreateProfileJobs < ActiveRecord::Migration
  def change
    create_table :profile_jobs do |t|
      t.belongs_to :profile
      t.belongs_to :job
    end
  end
end
