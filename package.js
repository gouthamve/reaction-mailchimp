Package.describe({
  name    : 'gouthamve:reaction-mailchimp',
	version : '0.1.0',
	summary : 'mailchimp integration for Reaction Commerce',
	homepage: "https://github.com/Gouthamve/meteor-mailchimp",
	author  : "Goutham Veeramachaneni",
	git     : 'https://github.com/Gouthamve/meteor-mailchimp.git',
  icon: 'fa fa-envelope'
});


Npm.depends({ 'mailchimp': '1.1.0' });

Package.onUse( function ( api, where ) {

	api.versionsFrom('METEOR@1.0');
  api.use("meteor-platform@1.2.1");
	api.use( ['templating'], 'client' );
  api.use("coffeescript");
  api.use("less");
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
		'lib/client/mailchimp.js'
	], ['client'] );

	if ( api.export ) {
		api.export( 'MailChimp', ['server', 'client'] );
	}
});

