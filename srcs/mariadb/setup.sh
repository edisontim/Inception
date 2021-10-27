#/bin/sh

service mysql start;

chown -R mysql:mysql /var/lib/mysql/

chmod 777 /var/lib/mysql/

echo "CREATE USER 'rootTCP'@'%' IDENTIFIED BY 'root';" | mysql -u root --password=root;
# echo "CREATE DATABASE wordpress;" | mysql -u root --skip-password;
echo "ALTER DATABASE wordpress CHARACTER SET = 'utf8mb4' COLLATE = 'utf8mb4_general_ci';" | mysql -u root --password=root;
echo "GRANT ALL PRIVILEGES ON *.* TO 'rootTCP'@'%' IDENTIFIED BY 'root' WITH GRANT OPTION;" |  mysql -u root --password=root;
echo "FLUSH PRIVILEGES;" |  mysql -u root --password=root;

service mysql stop;

# launching mysql as active process in the foreground
mysqld_safe;

