ActiveAdmin.register QuotationComment do

  menu parent: "Quotations"

  permit_params :quotation_id, :sender_id, :body, :attachment

  filter :quotation
  filter :sender
  filter :created_at

  index do
    selectable_column
    id_column
    column :quotation
    column :sender
    
    column :body do |quotation_comment|
       truncate(quotation_comment.body, omision: "...", length: 100)
    end

    column :created_at
    actions
  end

  form(:html => { :multipart => true }) do |f|
    f.inputs "Associations" do
      f.input :quotation
      f.input :sender
    end

    f.inputs "QuotationComment" do
      f.input :body
      f.input :attachment, as: :file
    end

    f.actions
  end

end