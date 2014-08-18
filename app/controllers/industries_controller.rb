class IndustriesController < ApplicationController
  def create
    @profile = current_user.profile
    @industries = Industry.find(:all,:conditions=>["profile_id =?",@profile.id],:order=>"created_at DESC")
    @industry = @profile.industries.new(industry_params)
    if @industry.save
      redirect_to edit_user_profile_path(current_user, @profile)
    end
  end
  
  def destroy
    @profile = current_user.profile
    @industries = Industry.find(:all,:conditions=>["profile_id =?",@profile.id],:order=>"created_at DESC")
    @industry = Industry.find(params[:id])
    @industry.destroy
    redirect_to edit_user_profile_path(current_user, @profile)
  end

  private

  def industry_params
    params.require(:industry).permit!
  end
end
