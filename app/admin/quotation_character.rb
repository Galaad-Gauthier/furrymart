ActiveAdmin.register QuotationCharacter do

  menu parent: "Quotations"

  permit_params :character_id, :quotation_id

  filter :character
  filter :quotation
  filter :created_at

  index do
    selectable_column
    id_column
    column :character
    column :quotation
    column :created_at
    actions
  end

  form  do |f|
    f.inputs "Associations" do
      f.input :character
      f.input :quotation
    end

    f.actions
  end

end