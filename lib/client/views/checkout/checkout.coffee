Template.cartCompleted2.replaces "cartCompleted"

Template.cartCompleted2.events
  "change input": (event)->
    console.log(event)
    target = event.target