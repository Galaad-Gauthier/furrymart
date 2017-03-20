ActiveAdmin.register Feedback do

  permit_params :body, :user_id

  filter :user

  index do
    selectable_column
    id_column
    column :user
    column :created_at
    actions
  end

  form do |f|
    f.inputs "Associations" do
      f.input :user
    end

    f.inputs "Feedback" do
      f.input :body
    end

    f.actions
  end

end
