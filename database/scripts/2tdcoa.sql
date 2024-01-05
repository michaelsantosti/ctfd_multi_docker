# create databases
# CREATE DATABASE IF NOT EXISTS `2tdcoa`;
CREATE USER '2tdcoa'@'%' IDENTIFIED BY '2tdcoa';
GRANT ALL PRIVILEGES ON 2tdcoa.* TO '2tdcoa'@'%';
