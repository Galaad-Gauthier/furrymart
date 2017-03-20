class InvoicePolicy < ApplicationPolicy
  def permitted_attributes
    [
      :price,
      :invoice_reference,
      :invoicing_informations,
      :invoicing_paypal_address,
      :company_id,
      :vat_number,
      :additional_informations,
      :due_date,
      :quotation_id,
      :currency_uid
    ]
  end

  def create?
    record.quotation.artist == user
  end

  def show?
    true
  end

  def paid?
    record.quotation.commissioner == user && record.waiting_payment?
  end

  def cancel_paid?
    record.quotation.commissioner == user && record.paid?
  end

  def paypal_redirect?
    paid?
  end
end
