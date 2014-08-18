class ProfilesController < InheritedResources::Base

  def create
    params.permit!
    @profile = current_user.profile.new(profile_params)
    if @profile.save
      #current_user.profile << @profile
      redirect_to user_profile_path(current_user,@profile)
    end
  end

  def edit
    @jobs = Job.where("is_parent =?",true)
    @locations = Location.where("is_parent =?",true)
    @profile = Profile.find(params[:id])
    @education = @profile.educations.new
    @employments = Employment.where(:profile_id => @profile.id).order("created_at DESC")
    @industries = Industry.where(:profile_id =>@profile.id).order("created_at DESC")
    @educations = Education.where(:profile_id =>@profile.id).order("created_at DESC")
    @languages = Language.where(:profile_id =>@profile.id).order("created_at DESC")
    @recommendations = Recommendation.where(:profile_id =>@profile.id).order("created_at DESC")
    @recommendation = @profile.recommendations.new
    @employment = @profile.employments.new
    if @profile.languages.blank?
      @language = @profile.languages.build
    end
    @industry = @profile.industries.new
    @recommendation = @profile.recommendations.new
    
  end

  def update
    @profile = Profile.find(params[:id])
    
    @profile.languages.destroy_all
    
    if @profile.update_attributes(profile_params)
      flash[:notice]="Profile updated successfully."
      path = edit_user_profile_path(@profile.user,@profile)
    else
      path = :back
    end
    
    redirect_to path
  end

  def add_education
  end


  private

  def profile_params
    params.require(:profile).permit(:name, :email,:location,:phone,:skills,:summary,:web_site,:blog,:stack_overflow,:dribble,:filepicker_url,:resume_url,:status,:approval_date,:profile_type,:country,:first_name,:last_name, {:languages_attributes => [:name, :profile_id, :proficiency, :_destroy]})
  end
end