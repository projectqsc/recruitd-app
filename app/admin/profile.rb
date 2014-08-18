ActiveAdmin.register Profile do
  permit_params :status
  scope :awaiting, :default => true
  scope :approved
  scope :rejected
  
  config.filters=false
  actions :index
  
  index do
#    if(params[:'q[status]'] == "Approved")
      selectable_column 
#    end
    column :name
    column :email
    column :location
    column :created_at
    column :approval_date
    column :profile_type
    column :profile_status
    column :action do |profile|
      if profile.profile_status == "Awaiting"
        link_to "Approve" , [:admin, profile], :method => :put, :class => "button"
      end
    end
    column :action do |profile|
      if profile.profile_status == "Awaiting"
        link_to "Reject" , reject_admin_profile_path(profile), :method => :put, :class => "button"
      end
    end
  end
  
  batch_action :approve do |selection|
    Profile.find(selection).each do |profile|
      profile.profile_status = "Approved"
      profile.approval_date = Time.now
      profile.save
      if profile.email.present?
        Mailer.approval_email(profile).deliver
      end
    end
    redirect_to admin_profiles_path
  end
  
  
   batch_action :reject do |selection|
    Profile.find(selection).each do |profile|
      profile.profile_status = "Rejected"
      profile.approval_date = Time.now
      profile.save
      if profile.email.present?
        Mailer.approval_email(profile).deliver
      end
    end
    redirect_to admin_profiles_path
  end
  
     
  change_status = Proc.new {
    @profile = Profile.find(params[:id])
    @profile.profile_status = "Approved"
    @profile.approval_date = Time.now

    if @profile.save
      redirect_to admin_profiles_path
      if @profile.email.present?
#        Mailer.reject_email(@profile).deliver
      end
    end
  }
  
  member_action :update, :method => :put, &change_status
  
    
  member_action :reject, :method => :put do
    @profile = Profile.find(params[:id])
    @profile.profile_status = "Rejected"
    if @profile.save
      redirect_to admin_profiles_path
      if @profile.email.present?
#        Mailer.reject_email(@profile).deliver
      end
    end
  end
  
  
end