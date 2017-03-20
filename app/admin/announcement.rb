ActiveAdmin.register Announcement do

  permit_params :title, :body, :draft, :author

  filter :title

  index do
    selectable_column
    id_column
    column :created_at
    actions
  end

  form do |f|
    f.inputs "Announcement" do
      f.input :title
      f.input :author
      f.input :body
      f.input :draft
    end

    f.actions
  end

end
