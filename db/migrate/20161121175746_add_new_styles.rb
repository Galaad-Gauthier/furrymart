class AddNewStyles < ActiveRecord::Migration[5.0]

  def change
    %w(
      fursuit
      comics
      badges
    ).each{ |key| Style.find_or_create_by(key: key) }
  end

end


