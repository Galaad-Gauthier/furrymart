$(document).on 'turbolinks:load', ->
  visibilityCheckboxes = $('.quotation .visibility-switch input')
  visibilityCheckboxes.bind 'change', (e) ->
    checkbox = $(e.target)
    quotationId = checkbox.closest('[data-quotation-id]').data('quotation-id')

    $.ajax
      url: "quotations/#{quotationId}/#{if checkbox.prop('checked') then 'publish' else 'unpublish'}"
      method: 'put'
      success: ->
        if checkbox.prop('checked')
          notify(checkbox.closest('[data-checked-message]').data('checked-message'))
        else
          notify(checkbox.closest('[data-unchecked-message]').data('unchecked-message'))

  $("#invoicing-modal form").submit (e) ->
    e.preventDefault()

    $.ajax
      url: $(this).prop('action')
      method: $(this).prop('method')
      data: $(this).serialize()
      success: (result) =>
        invoiceName = "Invoice #{$('#invoice_invoice_reference').val()}"
        chip = $("<div>").addClass("chip").text(invoiceName)
        chipClose = $("<i>").addClass("close material-icons").text("close")
        chipUrlField = $("<input>").prop('type', 'hidden').prop('name', 'quotation_comment[attachments_attributes][][file_url]').val(result.url)
        chipNameField = $("<input>").prop('type', 'hidden').prop('name', 'quotation_comment[attachments_attributes][][original_filename]').val(invoiceName)
        chipSubjectIdField = $("<input>").prop('type', 'hidden').prop('name', 'quotation_comment[attachments_attributes][][subject_id]').val(result.id)
        chipSubjectTypeField = $("<input>").prop('type', 'hidden').prop('name', 'quotation_comment[attachments_attributes][][subject_type]').val("Invoice")
        $(".files-to-upload").append(chip.append(chipClose).append(chipUrlField).append(chipNameField).append(chipSubjectIdField).append(chipSubjectTypeField))
        notify($(this).data("success"))
