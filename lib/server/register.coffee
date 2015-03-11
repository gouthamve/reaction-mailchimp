ReactionCore.registerPackage
  name: 'gouthamve:reaction-mailchimp' # usually same as meteor package
  autoEnable: true # auto-enable in dashboard,transforms to enable
  registry: [
    # all options except route and template
    # are used to describe the
    # dashboard 'app card'.
    {
      provides: 'dashboard'
      label: 'Mailchimp'
      description: 'Mailchimp Subscribe'
      icon: 'fa fa-paypal'
      cycle: 3
      container: 'mailchimp'
    }
    # configures settings link for app card
    # use 'group' to link to dashboard card
    {
      route: 'mailchimp'
      provides: 'settings'
      container: 'mailchimp'
    }
     configures template for checkout
     paymentMethod dynamic template
    {
      template: 'paypalPaymentForm'
      provides: 'paymentMethod'
    }
  ]
  # array of permission objects
  permissions: [
    {
      label: 'Mailchimp Admin'
      permission: 'dashboard/email'
      group: 'Shop Settings'
    }
  ]
  #settings
  settings:[
  "private":
    "Mailchimp":
      "apiKey": "d45240174920ef6412f7cb3c784f825d-us9"
      "listId": "0396f9f327"
  ]