$(document).on 'turbolinks:load ajax:success', ->
  $("[data-role='wish-trigger']").click (e) ->
    proposalId = $(this).data('proposal-id')
    userId = $(this).data('user-id')
    wishId = $(this).data("wish-id")
    related = $("[data-role='wish-trigger'][data-proposal-id=#{proposalId}]")

    unless userId
      notify("You need to sign in or sign up to create your wishlist.")
    else
      if wishId
        $.ajax
          url: "/users/#{userId}/wishes/#{wishId}"
          method: 'delete'
          success: =>
            related.removeData("wish-id")
            related.removeAttr("data-wish-id")
        	  if $(this).data('content-add')
        	    $(this).text($(this).data('content-add'))

            notify($(this).data("message-destroy"))

      else
        $.ajax
          url: "/users/#{userId}/wishes"
          method: 'post'
          data:
            wish:
              proposal_id: proposalId
          success: (body) =>
            related.data("wish-id", body.id)
            related.attr("data-wish-id", body.id)
        	  if $(this).data('content-remove')
        	    $(this).text($(this).data('content-remove'))

            notify($(this).data("message-create"))
