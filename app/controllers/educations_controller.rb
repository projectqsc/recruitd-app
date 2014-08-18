class EducationsController < ApplicationController
  def create
    @profile = current_user.profile
    @educations = Education.find(:all,:conditions=>["profile_id =?",@profile.id],:order=>"created_at DESC")
    @education = @profile.educations.new(education_params)
    if @education.save
      redirect_to edit_user_profile_path(current_user, @profile)
    end
  end
  
  def destroy
    @profile = current_user.profile
    @educations = Education.find(:all,:conditions=>["profile_id =?",@profile.id],:order=>"created_at DESC")
    @education = Education.find(params[:id])
    @education.destroy
    redirect_to edit_user_profile_path(current_user, @profile)
  end

  private

  def education_params
    params.require(:education).permit!
  end
end