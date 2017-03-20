class CreateStyles < ActiveRecord::Migration[5.0]

  def change
    create_table :styles do |t|
      t.string :key
      t.timestamps
    end

    add_column :proposals, :style_id, :integer

    %w(
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
    ).each{ |key| Style.find_or_create_by(key: key) }
  end

end
