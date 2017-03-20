# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on 'turbolinks:load', ->
  $(document).on 'change', '.asset .visibility-switch input', (e) ->
    checkbox = $(e.target)
    assetUrl = checkbox.closest('[data-asset-url]').data('asset-url')
    $.ajax
      url: assetUrl
      method: 'put'
      data:
        asset:
          is_adult_content: checkbox.prop('checked')
      success: ->
        if checkbox.prop('checked')
          notify(checkbox.closest('[data-checked-message]').data('checked-message'))
        else
          notify(checkbox.closest('[data-unchecked-message]').data('unchecked-message'))
        $(document).trigger("ajax:success")

  $(document).on 'ajax:success', '.edit-asset-modal', (e, data, status, xhr) ->
    Materialize.toast($(e.target).data("success"), 4000)

  $(document).on 'change', '.assets-visibility-switch input', (e) ->
    checkbox = $(e.target)
    userUrl = checkbox.closest('[data-user-url]').data('user-url')
    $.ajax
      url: userUrl
      method: 'put'
      data:
        user:
          are_assets_public: checkbox.prop('checked')
      success: ->
        if checkbox.prop('checked')
          notify(checkbox.closest('[data-checked-message]').data('checked-message'))
        else
          notify(checkbox.closest('[data-unchecked-message]').data('unchecked-message'))
        $(document).trigger("ajax:success")
