# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on 'turbolinks:load', ->
  $(".watchers-modal-trigger").bind 'click', (e) ->
    $.ajax
      url: "/users/#{$(e.target).data('artist-id')}/watchers.js",
      success: (html) ->
        $("#watchers-modal").html(html)

  $(".watching-modal-trigger").bind 'click', (e) ->
    $.ajax
      url: "/users/#{$(e.target).data('artist-id')}/watching.js",
      success: (html) ->
        $("#watching-modal").html(html)
