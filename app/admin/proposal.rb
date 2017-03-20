ActiveAdmin.register Proposal do

  menu parent: "Proposals"

  permit_params :title, :description, :banner, :tos, :visible, :price, :delay_id, :style_id, :category_id, :artist_id, :can_pay_what_you_want, :tag_list

  filter :artist
  filter :visible
  filter :title
  filter :slug
  filter :created_at
  filter :can_pay_what_you_want

  index do
    selectable_column
    id_column
    column :title
    column :artist
    column :visible
    column :can_pay_what_you_want
    column :created_at
    actions
  end

  form(:html => { :multipart => true }) do |f|
    f.inputs "Associations" do
      f.input :artist
    end

    f.inputs "Proposal" do
      f.input :title
      f.input :description
      f.input :category, as: :select, collection: Category.all
      f.input :delay, as: :select, collection: Delay.all
      f.input :style, as: :select, collection: Style.all
      f.input :price
      f.input :tos
      f.input :banner, as: :file
      f.input :visible
      f.input :can_pay_what_you_want
      f.input :tag_list, input_html: { value: f.object.tag_list.join(', ') }
    end

    f.actions
  end

end
