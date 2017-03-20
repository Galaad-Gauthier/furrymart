class Quotations::InvoicesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_invoice, only: [:paid, :cancel_paid, :paypal_redirect]

  def create
    @invoice = Invoice.new(strong_params(Invoice.new))

    authorize @invoice

    if @invoice.save
      respond_to do |format|
        format.html {
          flash[:notice] = I18n.t("artists.invoices.create.success")

          redirect_back fallback_location: quotation_url(id: @invoice.quotation.id)

        }
        format.json {
          render json: { id: @invoice.id, url: quotation_invoice_url(quotation_id: @invoice.quotation.id, id: @invoice.encrypted_id, format: :pdf) }
        }
      end
    else
      render 'new'
    end
  end

  def show
    @invoice = Invoice.find(Encryptor.decrypt(params[:id]))

    @artist = @invoice.quotation.artist
    @commissioner = @invoice.quotation.commissioner

    respond_to do |format|
      format.pdf do
        render({
            pdf: "invoice_#{@invoice.invoice_reference}_#{@commissioner.name.parameterize.underscore}",
            template: "quotations/invoices/show",
            layout: false,
            encoding: "UTF-8",
            page_size: "A4",
            show_as_html: params.key?('debug')
          })
        end
      end
    end

    def paid
      transition 'paid'

      if @invoice.quotation.artist.allow_quotation_invoice_paid_notification
        NotificationMailer.invoice_paid(@invoice).deliver_later
      end
    end

    def cancel_paid
      transition 'cancel_paid'

      if @invoice.quotation.artist.allow_quotation_invoice_cancel_paid_notification
        NotificationMailer.invoice_cancelled_paid(@invoice).deliver_later
      end
    end

    def paypal_redirect
      paid

      if @invoice.quotation.waiting_payment?
        @invoice.quotation.paid!
        @invoice.quotation.create_activity key: "quotation.paid", owner: @invoice.quotation.artist, recipient: @invoice.quotation.commissioner

        if @invoice.quotation.commissioner.allow_quotation_paid_notification
          NotificationMailer.quotation_paid(@invoice.quotation).deliver_later
        end
      end
    end

    protected

    def transition(event)
      authorize @invoice
      @invoice.send("#{event}!")
      @invoice.create_activity key: "invoice.#{event}", owner: current_user, recipient: @invoice.quotation.artist

      flash[:notice] = I18n.t("invoices.#{event}.success")

      redirect_to quotation_url(@invoice.quotation)
    end

    def set_invoice
      @invoice = Invoice.find(params[:id] || params[:invoice_id])
    end
  end
