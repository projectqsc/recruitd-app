class Language < ActiveRecord::Base
	belongs_to :profile
  
  validates :name, :uniqueness => {:scope => :profile_id, :message => " already exists, try another language name"}

end