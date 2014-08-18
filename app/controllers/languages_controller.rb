class LanguagesController < ApplicationController
  def create
    @profile = current_user.profile
    @languages = Language.find(:all,:conditions=>["profile_id =?",@profile.id],:order=>"created_at DESC")
    @education = @profile.languages.new(education_params)
    if @education.save
      redirect_to edit_user_profile_path(current_user, @profile)
    else
      redirect_to :back
    end
  end
  
  def destroy
    @profile = current_user.profile
    @languages = Language.find(:all,:conditions=>["profile_id =?",@profile.id],:order=>"created_at DESC")
    @language = Language.find(params[:id])
    @language.destroy
    redirect_to edit_user_profile_path(current_user, @profile)
  end

  private

  def education_params
    params.require(:language).permit!
  end
end