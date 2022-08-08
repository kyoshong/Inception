service mysql start;

echo "CREATE DATABASE $DB_NAME;" | mysql;
echo "CREATE USER '$DB_USER'@'%' IDENTIFIED BY '$DB_PASSWORD';" | mysql;
echo "GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_USER'@'%';" | mysql;
echo "FLUSH PRIVILEGES;" | mysql;

mysql $DB_NAME -u $DB_USER -p$DB_PASSWORD < /wp_db.sql

mysqld;
