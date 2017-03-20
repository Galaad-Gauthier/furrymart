module QuotationsHelper
  def addition_illustrations
    pundit_policy_scope(current_user.assets).order(created_at: :desc) - current_user.characters_assets
  end
end
