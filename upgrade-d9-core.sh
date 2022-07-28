now=$(date +"%m_%d_%Y");
webroot="web"
drupal_version="9.4.0"
cp ./web/.htaccess ./backups/core/.htaccess-${now}
chmod 777 "$webroot"/sites/default
chmod 666 "$webroot"/sites/default/*settings.php
chmod 666 "$webroot"/sites/default/*services.yml
composer require drupal/core-recommended:"$drupal_version" drupal/core-composer-scaffold:"$drupal_version" drupal/core-project-message:"$drupal_version" --update-with-all-dependencies
composer update
chmod 755 "$webroot"/sites/default
chmod 644 "$webroot"/sites/default/*settings.php
chmod 644 "$webroot"/sites/default/*services.yml
