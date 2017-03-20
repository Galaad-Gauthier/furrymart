module Commissioners::QuotationHelper
  def commissioner_quotation_count_by_state(user, state)
    QuotationPolicy::Scope.new(current_user, user.quotations_as_commissioner).resolve_for_commissioner.filter({state: state}).count
  end
end
