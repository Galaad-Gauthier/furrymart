module Artists::QuotationsHelper
  def artist_quotation_count_by_state(user, state)
    QuotationPolicy::Scope.new(current_user, user.quotations_as_artist).resolve_for_artist.filter({state: state}).count
  end
end
