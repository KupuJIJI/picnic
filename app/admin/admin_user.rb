ActiveAdmin.register AdminUser do
  permit_params :email, :password, :password_confirmation
  config.sort_order = 'position_asc' # assumes you are using 'position' for your acts_as_list column

  index do
    sortable_handle_column                         
    selectable_column
    id_column
    column :email
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end

  form do |f|
    f.inputs "Admin Details" do
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

end
