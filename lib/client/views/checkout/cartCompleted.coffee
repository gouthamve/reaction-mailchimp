Template.cartCompleted.events
  'click .add-mailchimp': (event, template) ->
    email = template.find("input[name=email]").value
    opt_in = template.find("input[name=opt-in]").checked
    if opt_in 
      mailChimp = new MailChimp();
      mailChimp.call 'lists', 'subscribe', id: null, email: email: email, (err, result) ->
        return
  "change .add-mailchimp2 input": (event) ->
    mailchimp = new MailChimp();
    if event.target.checked
      mailchimp.call 'lists', 'subscribe', id: null, email: email: @.email, (err, result) ->
        return
    else
      mailchimp.call 'lists', 'unsubscribe', id: null, email: email: @.email, (err, result) ->
        return
Template.cartCompleted.helpers
  'enabled': ->
    packageData = ReactionCore.Collections.Packages.findOne({name: "reaction-mailchimp", enabled: true})
    return if packageData then packageData.settings.public.checkout else false
Template.cartCompleted2.replaces "cartCompleted"