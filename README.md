# skeletonSocialUser

This is a skeleton application with different logins and authentication and with different language support.
This application is just a starting point to build your own application - it's not ready product.

Using SB Admin 2 template for layout http://startbootstrap.com/template-overviews/sb-admin-2

To get started.

1. Create a new database.
2. Import model to database from data/model.mwb
3. Execute role insert script from data/scripts/role_insert.sql
(
This application uses bjyoungblood/BjyAuthorize module for authentication. You can add your own roles to match your application criterias.
config is in Application/config/user/bjyauthorize.config.php.
Look https://github.com/bjyoungblood/BjyAuthorize to see what options are available;
)

This application also uses zfc-user module its global config is overwritten in Application/config/user/bjyauthorize.config.php
and some of its routes, forms and controllers are also overwritten in Application/config/user/module.config.php


4. Rename local.php.dist to local.php , doctrine.local.php.dist to doctrine.local.php and scn-social-auth.local.php.dist to scn-social-auth.local.php and add your own parameters.

For ID card and Mobile ID login BitWeb/id-services is used. You can disable/enable this logins from local.php => 'id-services'
For social media logins SocialNick/scn-social-auth is used. You can disable/enable this logins from scn-social-auth.global.php and set secret keys in scn-social-auth.local.php
For visual purpose there are different social media logins enabled but you cant use them if you do not set secret keys in scn-social-auth.local.php

There ara two lines in public/id-card/index.php you should remove in production - these are for testing purpose.
And also uncomment lines in public/id-card/.htaccess if in production.
Mobile id test numbers and personal codes are here http://www.id.ee/index.php?id=36381.
For more info about BitWeb/id-services see https://github.com/BitWeb/id-services.

You can add additional fields to register form just setting 'registerOptions' true/false in local.php.

For language support edit .po file properties (set right source paths etc).
In global.php set your own values in 'languages' array.

To handle social logins I have made new Class Application\Authentication\Adapter\HybridAuth that extends \ScnSocialAuth\Authentication\Adapter\HybridAuth.
So modify this class methods to match your application criterias.

Make folders data/DoctrineORMModule/Proxy and data/logs writable.

Update composer !

If all set right You must see login form with all login options you have set in configs and links to register form and forgot password form.
There are basic js validation for all forms.
After you have created user by registration form you can test also forgot password form and reset password form.

