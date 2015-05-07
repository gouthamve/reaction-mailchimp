Template.footerChimp.replaces "layoutFooter"

Template.layoutFooter.helpers
	enabled :->
		return ReactionCore.Collections.Packages.findOne({name: "reaction-mailchimp", enabled: true})