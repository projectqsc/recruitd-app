ActiveAdmin.register User do
  
  config.filters=false
  
  index do
    column "First Name",:name
    column :last_name
    column :email
    column "City", :location
    column :country
    column :action do |user|
      link_to "View profile", "/users/#{user.id}", :class => "button"
    end
  end

end

ActiveAdmin.register Education do

end
#ActiveAdmin.register Profile do
#  index do
#      column :name,:email
#  end
#end
ActiveAdmin.register Job do

  permit_params :name, :parentid, :is_parent
end

ActiveAdmin.register Location do
  permit_params :name, :parentid, :is_parent
end