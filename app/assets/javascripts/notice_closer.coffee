$(document).on 'turbolinks:load', ->
  closers = $("[data-close-notice]")
  closers.click (e) ->
    noticeId = $(e.target).data('close-notice')
    $(noticeId).hide();
    localStorage.setItem(noticeId, "closed")

  closers.each (_i, closer) ->
    noticeId = $(closer).data('close-notice')
    if localStorage.getItem(noticeId) == "closed"
      $(noticeId).hide();
