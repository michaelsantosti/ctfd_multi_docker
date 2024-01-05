# create databases
# CREATE DATABASE IF NOT EXISTS `1tdcoa`;
CREATE USER '1tdcoa'@'%' IDENTIFIED BY '1tdcoa';
GRANT ALL PRIVILEGES ON 1tdcoa.* TO '1tdcoa'@'%';
