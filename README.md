# skeletonSocialUser

This is a skeleton application with different logins and authentication.

To get started.

1. Create a new database.
2. Import model to database from data/model.mwb
3. Execute role insert script from data/scripts/role_insert.sql
(This application uses bjyoungblood/BjyAuthorize module for authentication. You can add your own roles to match your application criterias)
4. Rename local.php.dist to local.php , doctrine.local.php.dist to doctrine.local.php and scn-social-auth.local.php.dist to scn-social-auth.local.php

For ID card and Mobile ID login BitWeb/id-services is used. You can disable/enable this logins from local.php => 'id-services'
For socal media logins SocialNick/scn-social-auth is used. You can disable/enable this logins from scn-social-auth.global.php and set secret keys in scn-social-auth.local.php

You can add additional fields to register form just setting 'registerOptions' true/false in local.php.

Update composer !
