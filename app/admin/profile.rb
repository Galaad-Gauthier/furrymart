ActiveAdmin.register Profile do

  hstore_editor
  
  permit_params :avatar, :user_id, :sites, :biography

  filter :user
  filter :created_at

  index do
    selectable_column
    id_column
    column :user
    column :created_at
    actions
  end

  form(:html => { :multipart => true }) do |f|
    f.inputs "Associations" do
      f.input :user
    end

    f.inputs "Profile" do
      f.input :avatar, as: :file
      f.input :biography
      f.input :sites, as: :hstore
    end

    f.actions
  end

end
