class CreateCategoriesStyles < ActiveRecord::Migration[5.0]
  
  def change
    create_table :categories_styles do |t|
      t.belongs_to :category
      t.belongs_to :style
      t.timestamps
    end

    ### Cleaning old Styles ###

    Style.where(key: %w(fursuit comics badges)).destroy_all


    ### Creating new ones ###

    %w(
      accessory
      fursuit_part
      partial_fursuit
      full_fursuit
      toony
      realistic
    ).each do |key|
      Style.find_or_create_by(key: key)
    end

    ### Feeding styles to categories ###

    Category.where(key: %w(artwork badge ych adoptable refsheet comics goodies)).find_each do |category|
      category.styles = Style.where(
        key: %w(
          digital_bw
          digital_colored
          traditional_bw
          traditional_colored
          vectorial
          3D_art
          cellshading
          pixel_art
          animated
          other
        )
      )

      category.save!
    end


    Category.where(key: "fursuit").find_each do |category|
      category.styles = Style.where(key: %w(fursuit_part full_fursuit partial_fursuit accessory toony realistic))
      category.save!
    end

    ### Refresh ES indexes

    Proposal.__elasticsearch__.create_index! force: true
    Proposal.import

  end

end
