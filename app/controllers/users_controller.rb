class UsersController < ApplicationController
  before_filter :set_user, only: [:show, :edit, :update,:settings,:update_settings]
  before_filter :validate_authorization_for_user, only: [:edit, :update]
  
  # GET /users/1
  def show
    user = @user
    sign_in(user, :bypass=>true)
    if current_user.profile.blank?
      @profile = Profile.create(:user_id=>current_user.id,:name=>current_user.name, :first_name => current_user.name, :last_name => current_user.last_name, :location => current_user.location ,:country => current_user.contry)
      #      Mailer.profile_created(@profile).deliver
    else
      @profile = current_user.profile  
    end
  end

  # GET /users/1/edit
  def edit
  end


  # PATCH/PUT /users/1
  def update
    binding.pry
    if params[:password].blank? 
      params.delete(:password) 
      params.delete(:password_confirmation) if params[:password_confirmation].blank? 
    end 
    update_attributes(params) 

    if @user.update_attributes(params[:user])
      redirect_to @user, notice: 'User was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def update_with_password(params={}) 
    if  params[:password].blank? 
      params.delete(:password) 
      params.delete(:password_confirmation) if params[:password_confirmation].blank? 
    end 
    update_attributes(params) 
  end
  
  
  def update_status
    @user = User.find(params[:id])
    @user.update(:verification_status => "Verified")
    
    redirect_to root_path(@user)
    flash[:notice] = "Your account has verified successfully.Please login and complete your candidate profile and submit for approval."
  end
  
  
  def settings
  end
  
  
  def update_settings
    user = @user
    if @user.update(user_params)
      sign_in(user, :bypass=>true)
      redirect_to user_path(@user), notice: 'User was successfully updated.'
      Mailer.send_changes(@user).deliver
    else
      render action: 'settings'
    end
  end
  
  
  def post_app
    @user = User.find(params[:id])
    @profile = @user.profile
    @profile.update(:profile_status => "Awaiting")
    Mailer.profile_created(@profile).deliver
  end
  
  def recommendation
    
  end
  
  
  private
  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end

  def validate_authorization_for_user
    unless @user.profile.blank?
      path = "users/#{current_user.id}"
    else
      path = root_path
    end
    redirect_to path unless @user == current_user
  end

  
  def user_params
    params.require(:user).permit!
  end
end
