gravities =
  [
    [ "northwest", "north", "northeast"],
    [ "west", "center", "east"],
    [ "southwest", "south", "southeast"],
  ]

$(document).on 'turbolinks:load ajax:success', ->
  $('.set-gravity-modal').each (_i, modalEl) ->
    modal = $(modalEl)
    displayedImg = modal.find("img");
    hint = modal.find(".gravity-hint");
    gravityXField = modal.find("[name='asset[gravity_x]']")
    gravityYField = modal.find("[name='asset[gravity_y]']")
    gravityField = modal.find("[name='asset[gravity]']")

    img = new Image()
    img.onload = ->
      width = parseFloat(this.width)
      height = parseFloat(this.height)

      gravityX = gravityXField.val() || width / 2
      gravityY = gravityYField.val() || height / 2

      setHint = (gravityX, gravityY)=>
        positionX = (gravityX / width * 100)
        positionY = (gravityY / height * 100)

        hint.css({ left: "#{positionX}%", top: "#{positionY}%" })

      setHint(gravityX, gravityY)

      displayedImg.click (e) ->
        posX = e.pageX - $(this).offset().left
        posY = e.pageY - $(this).offset().top

        containerWidth = displayedImg.width()
        containerHeight = displayedImg.height()

        if width >= height
          scale = height / containerHeight
        else
          scale = width / containerWidth

        gravityX = posX * scale
        gravityXField.val(gravityX)

        gravityY = posY * scale
        gravityYField.val(gravityY)

        gravityField.val(gravities[parseInt(gravityY / (height / 3))][parseInt(gravityX / (width / 3))]);

        setHint(gravityX, gravityY)

    img.src = displayedImg.prop('src')
