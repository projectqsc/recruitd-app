class AddNameOfAttrForFilepickerUrlToProfile < ActiveRecord::Migration
  def up
    add_column :profiles, :filepicker_url, :string
    add_column :profiles, :resume_url, :string
  end

  def down
    remove_column :profiles, :filepicker_url
    remove_column :profiles, :resume_url
  end
end