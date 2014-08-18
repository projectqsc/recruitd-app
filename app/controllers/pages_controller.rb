class PagesController < ApplicationController
  def terms
  end

  def welcome
  end

  def landing
  	if current_user
      redirect_to user_path(current_user) 
    else
      redirect_to new_user_session_path
    end
  end
end
