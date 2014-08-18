class AddProficiencyToLanguages < ActiveRecord::Migration
  def change
    add_column :languages, :proficiency, :string
  end
end