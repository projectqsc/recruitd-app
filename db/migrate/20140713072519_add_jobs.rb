class AddJobs < ActiveRecord::Migration
  def change
    
  	@job = Job.create :name=>"Banking and Finance",:is_parent=>true
  	Job.create :name=>"Audit",:is_parent=>false,:parentid=>@job.id
  	Job.create :name=>"Claims Management",:is_parent=>false,:parentid=>@job.id
  	Job.create :name=>"Administration",:is_parent=>false,:parentid=>@job.id
  	Job.create :name=>"CS",:is_parent=>false,:parentid=>@job.id

  	@job = Job.create :name=>"Management and Strategy",:is_parent=>true
  	Job.create :name=>"Strategy Analyst",:is_parent=>false,:parentid=>@job.id
  	Job.create :name=>"Management Executive",:is_parent=>false,:parentid=>@job.id
  	Job.create :name=>"Logistics Manager",:is_parent=>false,:parentid=>@job.id
  	
  	@job = Job.create :name=>"Sales",:is_parent=>true
  	@job = Job.create :name=>"Marketing",:is_parent=>true

    @location = Location.create :name=>"UAE",:is_parent=>true
    Location.create :name=>"Dubai",:is_parent=>false,:parentid=>@location.id
    Location.create :name=>"Abu-Dhabi",:is_parent=>false,:parentid=>@location.id

    @location = Location.create :name=>"Saudi Arabia",:is_parent=>true
    Location.create :name=>"Riyadh",:is_parent=>false,:parentid=>@location.id
    Location.create :name=>"Jeddah",:is_parent=>false,:parentid=>@location.id
    Location.create :name=>"Makkah",:is_parent=>false,:parentid=>@location.id
    Location.create :name=>"Madina",:is_parent=>false,:parentid=>@location.id

    @location = Location.create :name=>"Oman",:is_parent=>true
    @location = Location.create :name=>"Qatar",:is_parent=>true
    @location = Location.create :name=>"Lebanon",:is_parent=>true

  end
end
