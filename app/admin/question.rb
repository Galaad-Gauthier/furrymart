ActiveAdmin.register Question do

  permit_params :body, :sender_id, :recipient_id, :response

  filter :sender_id
  filter :recipient_id

  index do
    selectable_column
    id_column
    column :sender_id
    column :recipient_id

    column :body do |question|
      truncate(question.body, length: 80)
    end

    column :created_at
    column :updated_at
    actions
  end

  form do |f|
    f.inputs "Associations" do
      f.input :sender
      f.input :recipient
    end

    f.inputs "Question" do
      f.input :body
      f.input :response
    end

    f.actions
  end

end