ActiveAdmin.register Quotation do

  menu parent: "Quotations"

  permit_params :commissioner_id, :proposal_id, :description, :tos_accepted

  filter :commissioner
  filter :proposal
  filter :state, as: :select, collection: Quotation.aasm.states.map(&:name)
  filter :created_at

  after_save do |quotation|
    event = params[:quotation][:active_admin_requested_event]

    unless event.blank?
      safe_event = (quotation.aasm.events(permitted: true).map(&:name) & [event.to_sym]).first
      raise "Forbidden event #{event} requested on instance #{quotation.id}" unless safe_event
      quotation.send("#{safe_event}!")
    end
  end

  index do
    selectable_column
    id_column
    column :artist
    column :commissioner
    column :proposal

    column :description do |quotation|
       truncate(quotation.description, omision: "...", length: 100)
    end

    column :state
    column :created_at
    actions
  end

  form do |f|
    f.inputs "States" do
      f.input :state, input_html: { disabled: true }, label: 'Current state'
      f.input :active_admin_requested_event, label: 'Change state', as: :select, collection: f.object.aasm.events(permitted: true).map(&:name)
    end

    f.inputs "Associations" do
      f.input :commissioner
      f.input :proposal
    end

    f.inputs "Quotation" do
      f.input :description
      f.input :tos_accepted
    end

    f.actions
  end

end
