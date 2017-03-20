App.activity = App.cable.subscriptions.create "ActivityChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    $(".notifications-link").each ->
      $(this).find(".material-icons").text("notifications")

      counter = $(this).find(".notification-count")
      value = parseInt(counter.text())
      counter.text((value || 0) + 1)
