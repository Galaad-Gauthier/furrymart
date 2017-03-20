class FixCategories < ActiveRecord::Migration[5.0]

  def change

    artwork = Category.find_by_key("artwork")
    ych = Category.find_by_key("ych")
    badge = Category.find_by_key("badge")
    stickers = Category.find_by_key("stickers")
    icons = Category.find_by_key("icons")

    Proposal.update(category: artwork)

    Proposal.tagged_with("ych").find_each{ |proposal| proposal.update(category: ych)}
    Proposal.tagged_with(["stickers", "sticker", "telegram"], any: true).find_each{ |proposal| proposal.update(category: stickers)}
    Proposal.tagged_with(["icon", "icons", "avatar"], any: true).find_each{ |proposal| proposal.update(category: icons)}
    Proposal.tagged_with(["badge", "badges"], any: true).find_each{ |proposal| proposal.update(category: badge)}
  end

end
