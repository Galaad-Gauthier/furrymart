ActiveAdmin.register ProposalAsset do

  menu parent: "Proposals"

  permit_params :proposal_id, :asset_id

  filter :proposal
  filter :asset
  filter :created_at

  index do
    selectable_column
    id_column
    column :proposal
    column :asset
    column :created_at
    actions
  end

  form do |f|
    f.inputs "Associations" do
      f.input :proposal
      f.input :asset
    end

    f.actions
  end

end
