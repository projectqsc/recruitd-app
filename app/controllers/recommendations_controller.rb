class RecommendationsController < ApplicationController
  def create
    @profile = current_user.profile
    @recommendations = Recommendation.find(:all,:conditions=>["profile_id =?",@profile.id],:order=>"created_at DESC")
    @recommendation = @profile.recommendations.new(education_params)
    @recommendation.status = "sent"
    if @recommendation.save
      Mailer.send_invitation(@recommendation, @profile).deliver
      redirect_to edit_user_profile_path(current_user, @profile)
    end
  end
  
  def destroy
    @profile = current_user.profile
    @recommendations = Recommendation.find(:all,:conditions=>["profile_id =?",@profile.id],:order=>"created_at DESC")
    @recommendation = Recommendation.find(params[:id])
    @recommendation.destroy
    redirect_to edit_user_profile_path(current_user, @profile)
  end

  private
  def education_params
    params.require(:recommendation).permit!
  end
end
