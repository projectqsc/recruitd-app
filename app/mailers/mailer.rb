class Mailer < ActionMailer::Base
  default from: "no-reply@recruitd.com"
  
  include SendGrid
  default from: "no-reply@recruitd.com"
  sendgrid_category :use_subject_lines
  sendgrid_enable   :ganalytics, :opentrack
  
  
  def profile_created(profile)
    @profile = profile
    mail(:to => "admin@recruitd.com", :subject => "New Profile Created.")
  end
  
  
  def update_status(user,id)
    @user = user
    @user_id = id
    mail(:to => @user, :subject => "Complete your Profile.")
  end
  
  
  def approval_email(profile)
    @profile = profile
    mail(:to => @profile.email, :subject => "Approved.")
  end
  
  
  def send_changes(user)
    @user = user
    mail(:to => @user.email, :subject => "Information Changes ")
  end
  
  def approval_email_privacy(user)
   @user = user
   mail(:to => @user, :subject => "Approved.")
  end
  
  def send_invitation(recommendation, profile)
    @recommendation = recommendation
    @user = profile
    mail(:to => @recommendation.email, :subject => "Invitation to Join in Recuitd")
  end
  
end