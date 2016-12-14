#!/bin/bash
# This script removes checks from mysqldump files to speed up the restore process.
# http://serverfault.com/a/568465/100604

MYSQL_DUMP_FILE=$1

echo "Removing checks for $MYSQL_DUMP_FILE..."

# Add to beginning of file
sed -i '1s/^/SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, AUTOCOMMIT = 0;SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS = 0;SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS = 0;\n/' $MYSQL_DUMP_FILE

# Add to end of file
echo 'SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;SET AUTOCOMMIT = @OLD_AUTOCOMMIT;COMMIT;' >> $MYSQL_DUMP_FILE

echo "Done."
