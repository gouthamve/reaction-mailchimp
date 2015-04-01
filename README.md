# gouthamve:reaction-mailchimp

A Reaction wrapper for the MailChimp API.

## Dependencies

 * [node-mailchimp](https://github.com/gomfunkel/node-mailchimp) - A node.js
wrapper for the MailChimp API


## Installation

Install using Meteor:

In your Reaction shop do:

```sh
meteor add gouthamve:reaction-mailchimp
```

And comment out 
```coffeescript
Template.footer.replaces "layoutFooter"
```
in ```client/templates/layout/footer/footer.coffee```

Many thanks to [Miroslav Hibler](http://miro.hibler.me) for his meteor binding of [Mailchimp Package](https://github.com/MiroHibler/meteor-mailchimp)
