$(document).on 'turbolinks:load', ->
  visibilityCheckboxes = $('.character .visibility-switch input')
  visibilityCheckboxes.bind 'change', (e) ->
    checkbox = $(e.target)
    characterId = checkbox.closest('[data-character-id]').data('character-id')
    $.ajax
      url: "/characters/#{characterId}/#{if checkbox.prop('checked') then 'activate' else 'deactivate'}"
      method: 'put'
      success: ->
        if checkbox.prop('checked')
          notify(checkbox.closest('[data-checked-message]').data('checked-message'))
        else
          notify(checkbox.closest('[data-unchecked-message]').data('unchecked-message'))
