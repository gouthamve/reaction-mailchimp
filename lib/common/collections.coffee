ReactionCore.Schemas.MailchimpPackageConfig = new SimpleSchema([
  ReactionCore.Schemas.PackageConfig
  {
    "settings.apiKey":
      type: String
      label: "API Key"
    "settings.listId":
      type: String
      label: "List Id"
    "settings.footer":
      type: Boolean
      defaultValue: false
    "settings.checkout":
      type: Boolean
      defaultValue: false
  }
])
