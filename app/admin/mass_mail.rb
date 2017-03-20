ActiveAdmin.register MassMail do

  permit_params :title, :body, :recipients

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
      f.input :body
      f.input :recipients
    end

    f.actions
  end

end
