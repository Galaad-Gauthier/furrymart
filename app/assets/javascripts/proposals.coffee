$(document).on 'turbolinks:load', ->
  pwywCheckbox = $("#pwyw-switch input[type='checkbox']")
  togglePrice = ->
    isPriceDisabled = pwywCheckbox.prop('checked')

    $("#proposal_price").prop('disabled', isPriceDisabled);

    $("#proposal_currency_uid_select_wrapper .select-dropdown").prop('disabled', isPriceDisabled);
    $("#proposal_currency_uid_select_wrapper .caret").toggleClass('disabled', isPriceDisabled);

  pwywCheckbox.bind 'change', togglePrice
  setTimeout togglePrice

$(document).on 'turbolinks:load', ->
  visibilityCheckboxes = $('.proposal .visibility-switch input')
  visibilityCheckboxes.bind 'change', (e) ->
    checkbox = $(e.target)
    proposalId = checkbox.closest('[data-proposal-id]').data('proposal-id')
    $.ajax
      url: "/proposals/#{proposalId}/#{if checkbox.prop('checked') then 'activate' else 'deactivate'}.js"
      method: 'put'
      success: ->
        if checkbox.prop('checked')
          notify(checkbox.closest('[data-checked-message]').data('checked-message'))
        else
          notify(checkbox.closest('[data-unchecked-message]').data('unchecked-message'))

$(document).on 'turbolinks:load', ->
  displayStyle = (categoryId) ->
    styleSelect = $("#proposal_style_id").empty()
    styles = $("#proposal_category_id option[value='#{categoryId}']").data("styles")
    return unless styles

    if styles.length == 0
      styleSelect.append($("<option>").prop("selected", true).text("N/A"))
    else
      for style in styles
        styleSelect.append($("<option>").val(style["id"]).text(style["name"]).prop('selected', style["selected"]))
    styleSelect.material_select();

  $("#proposal_category_id").change (e) ->
    displayStyle(e.target.value)

  displayStyle($("#proposal_category_id").val())

$(document).on 'turbolinks:load', ->
  $("#nav-search-wrapper").on "submit", (e) ->
    Turbolinks.visit("/proposals?#{$(e.target).serialize()}")
    e.preventDefault();
