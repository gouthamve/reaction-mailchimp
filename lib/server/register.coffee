ReactionCore.registerPackage
  name: 'reaction-mailchimp' # usually same as meteor package
  autoEnable: false # auto-enable in dashboard,transforms to enable
  #settings
  settings:
    apiKey: "d45240174920ef6412f7cb3c784f825d-us9"
    listId: "0396f9f327"
    footer: false
    checkout: false

  registry: [
    # all options except route and template
    # are used to describe the
    # dashboard 'app card'.
    {
      provides: 'dashboard'
      label: 'Mailchimp'
      description: 'Mailchimp Subscribe'
      icon: 'fa fa-envelope'
      cycle: 3
      container: 'reaction-mailchimp'
    }
    # configures settings link for app card
    # use 'group' to link to dashboard card
    {
      route: 'mailchimp'
      provides: 'settings'
      container: 'reaction-mailchimp'
    }
  ]
  # array of permission objects
  permissions: [
    {
      label: 'Mailchimp Admin'
      permission: 'dashboard/settings/mailchimp'
      group: 'Shop Settings'
    }
  ]
