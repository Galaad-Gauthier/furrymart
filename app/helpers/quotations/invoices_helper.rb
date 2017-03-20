module Quotations::InvoicesHelper
  def build_paypal_me_link(invoice)
    _, username, price, currency_uid = URI.parse(invoice.invoicing_paypal_address).path.match(/\/([^\/]*)\/?([0-9]*)?(.*)?/).to_a

    price = invoice.price if price.blank?
    currency_uid = invoice.currency_uid if currency_uid.blank?

    "https://paypal.me/#{username}/#{price}#{currency_uid}"
  end
end
