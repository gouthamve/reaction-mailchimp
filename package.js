Package.describe({
  name    : 'gouthamve:reaction-mailchimp',
	version : '0.7.1',
	summary : 'mailchimp integration for Reaction Commerce',
	homepage: "https://github.com/Gouthamve/reaction-mailchimp",
	author  : "Goutham Veeramachaneni",
	git     : 'https://github.com/Gouthamve/reaction-mailchimp.git',
  icon: 'fa fa-envelope'
});


Npm.depends({ 'mailchimp': '1.1.0' });

Package.onUse( function ( api, where ) {

	api.versionsFrom('METEOR@1.0');
  api.use("meteor-platform@1.2.1");
	api.use( ['templating'], 'client' );
  api.use("coffeescript");
  api.use("reactioncommerce:core@0.4.1");

  api.addFiles("lib/server/register.coffee",['server']);
	api.addFiles( 'lib/server/mailchimp.js', ['server'] );

  api.addFiles([
    'lib/common/routing.coffee',
    'lib/common/collections.coffee'
  ], ['client', 'server'])

	api.addFiles([
    'lib/client/dashboard/mailchimp.html',
    'lib/client/dashboard/mailchimp.coffee',
		'lib/client/views/subscribe/subscribe.html',
		'lib/client/views/subscribe/subscribe.js',
		'lib/client/mailchimp.js',
    'lib/client/views/footer/footer.html',
    'lib/client/views/footer/footer.css',
    'lib/client/views/footer/footer.coffee',
    'lib/client/views/checkout/cartCompleted.html',
    'lib/client/views/checkout/cartCompleted.coffee'
	], ['client'] );

	if ( api.export ) {
		api.export( 'MailChimp', ['server', 'client'] );
	}
});

