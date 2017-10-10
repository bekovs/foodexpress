ActiveAdmin.register User do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :name, :email, :phone_number, :adress, :password, :photo
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

	form do |f|
	  f.inputs do
	    f.input :name
	    f.input :photo, as: :file
	    f.input :email
	    f.input :phone_number
	    f.input :adress
	    f.input :password
	    f.input :password_confirmation
	  end
	  f.actions
	end

  index do
    selectable_column
    id_column
    column :photo do |user|
      image_tag user.photo.url(:small)
    end
    column :name do |user|
      link_to user.name, admin_user_path(user)
    end
    column :email
    column :phone_number
    column :adress
    actions
  end

	show do
	 attributes_table do
	   row :photo do |user|
	     image_tag user.photo.url(:medium)
	   end
	   row :name
	   row :email
	   row :phone_number
	   row :adress
	 end
	 active_admin_comments
	end


end
