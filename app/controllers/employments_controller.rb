class EmploymentsController < ApplicationController
  def create
    @profile = current_user.profile
    @employments = Employment.where(:profile_id =>@profile.id).order("created_at DESC")
    @employment = @profile.employments.new(education_params)
    @employment.save
      #redirect_to edit_user_profile_path(current_user, @profile)
      render
  end
  
  def destroy
    @profile = current_user.profile
    @employments = Employment.where(:profile_id =>@profile.id).order("created_at DESC")
    @employment = Employment.find(params[:id])
    @employment.destroy
    redirect_to edit_user_profile_path(current_user, @profile)
  end

  private

  def education_params
    params.require(:employment).permit!
  end
end
