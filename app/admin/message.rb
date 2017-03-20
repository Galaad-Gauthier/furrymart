ActiveAdmin.register Message do

  permit_params :body, :recipient_id, :sender_id, :read

  filter :recipient
  filter :sender
  filter :read

  index do
    selectable_column
    id_column
    column :sender
    column :recipient
    column :read
    column :created_at
    actions
  end

end
