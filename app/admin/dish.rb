ActiveAdmin.register Dish do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :name, :price, :description, :shop_id, :image
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
	    f.input :image, as: :file, :hint => image_tag(f.object.image.url(:thumb))
	    f.input :description
	    f.input :price
	    f.input :shop
	  end
	  f.actions
	end

  index do
    selectable_column
    id_column
    column :image do |dish|
      image_tag dish.image.url(:small)
    end
    column :name do |dish|
      link_to dish.name, admin_dish_path(dish)
    end
    column :description
    column :price
    column :shop
    actions
  end

	show do
	 attributes_table do
	   row :image do |dish|
	     image_tag dish.image.url(:medium)
	   end
	   row :name
	   row :description
	   row :price
	   row :shop
	 end
	 active_admin_comments
	end


end
