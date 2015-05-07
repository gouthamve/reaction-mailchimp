Template.cartCompleted.events
  'click .add-mailchimp': (event, template) ->
    console.log @.email
    email = template.find("input[name=email]").value
    opt_in = template.find("input[name=opt-in]").checked
    if opt_in 
      mailChimp = new MailChimp();
      mailChimp.call 'lists', 'subscribe', id: null, email: email: email, (err, result) ->
        return
Template.cartCompleted2.replaces "cartCompleted"