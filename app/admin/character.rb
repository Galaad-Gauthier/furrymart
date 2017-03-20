ActiveAdmin.register Character do

  permit_params :name, :species, :user_id, :description

  filter :user
  filter :name
  filter :species
  filter :created_at

  index do
    selectable_column
    id_column
    column :user
    column :name
    column :species
    column :quotations do |character|
      character.quotations.count
    end
    column :created_at
    actions
  end

  form  do |f|
    f.inputs "Associations" do
      f.input :user
    end

    f.inputs "Character" do 
      f.input :name
      f.input :species
      f.input :description
    end

    f.actions
  end

end