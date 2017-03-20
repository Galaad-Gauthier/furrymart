ActiveAdmin.register Asset do

  permit_params :user_id, :is_deleted, :is_adult_content, :file

  filter :user
  filter :is_deleted
  filter :is_adult_content
  filter :created_at

  index do
    selectable_column
    id_column
    column :user
    column :description
    column :is_adult_content
    column :is_deleted
    column :created_at
    actions
  end

  show do
    attributes_table do
      row :id
      row :user
      row :description
      row :is_adult_content
      row :is_deleted
      row :created_at
      row :updated_at
      row :file do |asset|
        image_tag asset.file_url
      end
    end
  end

  form(:html => { :multipart => true }) do |f|
    f.inputs "Associations" do
      f.input :user
    end

    f.inputs "Asset" do
      f.input :file, as: :file
      f.input :is_adult_content
      f.input :is_deleted
    end

    f.actions
  end

end
