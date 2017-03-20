$(document).on 'turbolinks:load', ->
  chatbox = $("#chatbox .collection")
  chatbox.scrollTop(chatbox.prop("scrollHeight"))
