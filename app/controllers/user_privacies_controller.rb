class UserPrivaciesController < ApplicationController
  before_filter :authenticate_user!
  
  
  def new
    @user_privacy = UserPrivacy.new
    @profile = current_user.profile
    @employments = @profile.employments
#    @user_privacies = UserPrivacy.where(:user_id => current_user.id)
  end
  
  def create
    @user_privacy = UserPrivacy.new(:user_id =>  current_user.id, :name => params[:user_privacy][:name])
    @profile = current_user.profile
    @employments = @profile.employments
#    @user_privacies = UserPrivacy.where(:user_id => current_user.id)
    @user_privacy.save
    render
  end
  
  def destroy
    @profile = current_user.profile
    @employments = @profile.employments
    @user_privacy.destroy
    redirect_to :back
  end
  
  
  private
  
  def user_privacy_params
    params.require(:user_privacy).permit!
  end
end
