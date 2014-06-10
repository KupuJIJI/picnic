ActiveAdmin.register Test do
  permit_params :email, :password, :password_confirmation
  config.sort_order = 'position_asc' # assumes you are using 'position' for your acts_as_list column

  index do
    sortable_handle_column                         
    selectable_column
    id_column
    column :text
    actions
  end

  form do |f|
    f.inputs "Admin Details" do
      f.input :text, as: :text, input_html: {rows: 12, id: "content", class: "redactor" }, wrap_html: "redactor_wrap"
    end
    f.actions
  end

end
