Router.map ->
  @route 'mailchimp',
    controller: ShopAdminController
    path: 'dashboard/settings/mailchimp',
    template: 'mailchimp'
    waitOn: ->
      return ReactionCore.Subscriptions.Packages
