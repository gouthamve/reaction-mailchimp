Template.mailchimp.helpers
  packageData: ->
    return ReactionCore.Collections.Packages.findOne(name:"reaction-mailchimp")

AutoForm.hooks "mailchimp-update-form":
  onSuccess: (operation, result, template) ->
    Alerts.removeSeen()
    Alerts.add "Mailchimp settings saved.", "success", autoHide: true

  onError: (operation, error, template) ->
    Alerts.removeSeen()
    Alerts.add "Mailchimp settings update failed. " + error, "danger"
