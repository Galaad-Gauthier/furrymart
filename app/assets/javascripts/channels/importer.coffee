App.importer = App.cable.subscriptions.create "ImporterChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    $("#assets").prepend(data.body);
    $("#assets-empty").hide();
    $(document).trigger("ajax:success")
