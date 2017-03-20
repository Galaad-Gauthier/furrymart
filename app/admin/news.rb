ActiveAdmin.register News do

  permit_params :body

  index do
    selectable_column
    id_column

    column :body do |news|
      truncate(news.body, length: 80)
    end

    column :created_at
    column :updated_at
    actions
  end

  form do |f|
    f.input :body
    f.actions
  end

end
