class Profile < ActiveRecord::Base
  attr_accessor :_destroy
  
  belongs_to :user
  has_many :educations
  has_many :employments
  has_many :recommendations
  has_many :languages
  has_many :industries
  #has_many :jobs, through: :profile_jobs
  #has_many :profile_jobs
  accepts_nested_attributes_for :educations
  accepts_nested_attributes_for :languages, :allow_destroy => true, :reject_if => :all_blank

  #attr_accessible :name, :email, :location ,:phone,:skills
  
  scope :awaiting, where(:profile_status => "Awaiting")
  scope :approved, where(:profile_status => "Approved")
  scope :rejected, where(:profile_status => "Rejected")
end