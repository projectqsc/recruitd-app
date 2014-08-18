class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session
  before_filter :configure_permitted_parameters, if: :devise_controller?
  
    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) {|u| u.permit(:email, :name,:location,:password, :password_confirmation,:email_confirmation,:verification_status,:status,:submission_date,:approval_date,:last_name,:contry)}
    end
    
#    def after_sign_in_path_for(resource_or_scope)
#      if resource_or_scope.is_a?(User)
#        if current_user.verification_status == "Unverified"
#          sign_out current_user
#          flash[:alert] = "You are not allowed to login"
#          root_path
#        else
#          root_path
#        end
#      end
#    end 
    
  end