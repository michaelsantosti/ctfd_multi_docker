# create databases
# CREATE DATABASE IF NOT EXISTS `1tdcor`;
CREATE USER '1tdcor'@'%' IDENTIFIED BY '1tdcor';
GRANT ALL PRIVILEGES ON 1tdcor.* TO '1tdcor'@'%';
