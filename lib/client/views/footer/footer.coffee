Template.footerChimp.replaces "layoutFooter"

Template.layoutFooter.helpers
	enabled :->
		packageData = ReactionCore.Collections.Packages.findOne({name: "reaction-mailchimp", enabled: true})
		return if packageData then packageData.settings.public.footer else false