ActiveAdmin.register Report do

  permit_params :body, :user_id, :reporter_id

  filter :user_id
  filter :reporter_id

  index do
    selectable_column
    id_column
    column :user_id
    column :reporter_id
    column :body
    column :created_at
    column :updated_at
    actions
  end

  form do |f|
    f.inputs "Associations" do
      f.input :user
      f.input :reporter
    end

    f.actions
  end

end
