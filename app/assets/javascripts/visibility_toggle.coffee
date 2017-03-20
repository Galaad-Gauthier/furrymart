$(document).on 'turbolinks:load', ->
  toggleVisibilityCheckbox = (checkbox) ->
    invisibleLabel = checkbox.siblings('.invisible-label')
    visibleLabel = checkbox.siblings('.visible-label')
    if checkbox.prop('checked')
      visibleLabel.addClass('selected')
      invisibleLabel.removeClass('selected')
    else
      invisibleLabel.addClass('selected')
      visibleLabel.removeClass('selected')

  visibilityCheckboxes = $('.visibility-switch input')
  visibilityCheckboxes.bind 'change', (e) ->
    checkbox = $(e.target)
    toggleVisibilityCheckbox(checkbox)

  for checkbox in visibilityCheckboxes
    toggleVisibilityCheckbox($(checkbox))
