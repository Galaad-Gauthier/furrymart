require "test_helper"

class InvoiceTest < ActiveSupport::TestCase
  test "must be valid" do
    invoice = Invoice.new({
      price: 10,
      currency_uid: "USD",
      quotation: quotations(:one)
    })
    assert(invoice.valid?)
  end

  test "must be invalid" do
    invoice = Invoice.new({
      currency_uid: "USD",
      quotation: quotations(:one)
    })
    assert(invoice.invalid?)

    invoice = Invoice.new({
      price: 10,
      quotation: quotations(:one)
    })
    assert(invoice.invalid?)

    invoice = Invoice.new({
      price: 10,
      quotation: quotations(:one)
    })
    assert(invoice.invalid?)
  end

  test "transitions" do
    invoice = Invoice.new({
      price: 10,
      currency_uid: "USD",
      quotation: quotations(:one)
    })

    assert(invoice.waiting_payment?)

    invoice.paid!
    assert(invoice.paid?)

    invoice.cancel_paid!
    assert(invoice.waiting_payment?)
  end

  test "can generate encrypted_id" do
    invoice = Invoice.create!({
      price: 10,
      currency_uid: "USD",
      quotation: quotations(:one)
    })
    assert_equal(Encryptor.decrypt(invoice.encrypted_id), invoice.id)
  end
end
