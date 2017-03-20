$(document).on 'turbolinks:load', ->
  $("#nav-search-wrapper input").focus (e) ->
    $(e.target).parents(".nav-wrapper").addClass("focused")
  $("#nav-search-wrapper input").blur (e) ->
    $(e.target).parents(".nav-wrapper").removeClass("focused")

$(document).on 'turbolinks:load', ->
  toggleStyle = (key) ->
    allSelects = $("[data-category]")
    allSelects.hide()
    allSelects.find("select").attr("form", "")

    selected = $("[data-category='#{key}']")
    selected.show()
    selected.find("select").attr("form", "nav-search-wrapper")

  select = $("select[name='category']")
  select.change (e) ->
    toggleStyle($(e.target).val() || "all")
  toggleStyle(select.val() || "all")

$(document).on 'turbolinks:load', ->
  $("#search-form").on "click", ".collapsible-header", (e) ->
    setTimeout ->
      if $("#search-form .collapsible-header:not(.active)").length > 0
        $("#search-form input, #search-form select").val('')
        $("#nav-search-wrapper").submit()
    , 10
