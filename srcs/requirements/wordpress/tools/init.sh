sed -i "s/database_name_here/$DB_NAME/g" /var/www/html/wp-config.php;
sed -i "s/username_here/$DB_USER/g" /var/www/html/wp-config.php;
sed -i "s/password_here/$DB_PASSWORD/g" /var/www/html/wp-config.php;
sed -i "s/localhost/mariadb/g" /var/www/html/wp-config.php;

/usr/sbin/php-fpm7.3;
