ActiveAdmin.register UserPrivacy do

  
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end
  
  index do
    column :name
    column :status
    column :action do |user_privacy|
      if user_privacy.status == "Awaiting"
        link_to "Approve" , [:admin, user_privacy], :method => :put, :class => "button"
      end
    end
  end
  
  change_status = Proc.new {
    @user_privacy = UserPrivacy.find(params[:id])
    @user_privacy.status = "Approved"

    if @user_privacy.save
      redirect_to admin_user_privacies_path
      @user = @user_privacy.user.email
      Mailer.approval_email_privacy(@user).deliver
    end
  }
  member_action :update, :method => :put, &change_status
  
end