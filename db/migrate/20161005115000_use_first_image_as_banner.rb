class UseFirstImageAsBanner < ActiveRecord::Migration[5.0]
  def change
    Proposal.find_each do |proposal|
      if proposal.pictures.any?
        proposal.banner = proposal.pictures.first
        proposal.save!
      end
    end

    Character.find_each do |character|
      if character.pictures.any?
        character.banner = character.pictures.first
        character.save!
      end
    end
  end
end
