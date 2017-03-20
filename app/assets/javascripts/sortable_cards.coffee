$(document).on 'turbolinks:load', ->
  $('.sortable-cards').each (_i, sortableCardsEl) ->
    sortableCards = $(sortableCardsEl)
    return if !sortableCards.data("sortable-enabled")

    sortable = new Sortable(sortableCardsEl, {
      forceFallback: true,
      animation: 150,
      filter: ".card-filler",
      disabled: window.matchMedia("(max-width: 992px)").matches,
      onUpdate: (event) ->
        ordering = sortableCards.find('[data-sorting-id]').map (_i, child) ->
          $(child).data('sorting-id')

        payload = {}
        payload[sortableCards.data("sortable-object")] = {}
        payload[sortableCards.data("sortable-object")][sortableCards.data("sortable-field")] = ordering.get()

        $.ajax({
          method: 'put'
          url: "#{sortableCards.data('sortable-update-path')}.json"
          contentType: "application/json"
          data: JSON.stringify(payload)
          success: ->
            notify(sortableCards.data('sortable-success-message'))
        })
    });
