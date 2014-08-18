class AddColumnsProfile < ActiveRecord::Migration
  def change
  	add_column :profiles , :picture_url, :string
  	add_column :profiles , :first_name, :string
  	add_column :profiles , :last_name, :string
  	add_column :profiles , :title , :string
  	add_column :profiles , :summary , :text
  	add_column :profiles , :small_picture_url , :string
  end
end
