ActiveAdmin.register QuotationAsset do

  menu parent: "Quotations"

  permit_params :quotation_id, :asset_id

  filter :quotation
  filter :asset
  filter :created_at

  index do
    selectable_column
    id_column
    column :quotation
    column :asset
    column :created_at
    actions
  end

  form do |f|
    f.inputs "Associations" do
      f.input :quotation
      f.input :asset
    end

    f.actions
  end

end
