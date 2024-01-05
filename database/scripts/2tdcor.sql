# create databases
# CREATE DATABASE IF NOT EXISTS `2tdcor`;
CREATE USER '2tdcor'@'%' IDENTIFIED BY '2tdcor';
GRANT ALL PRIVILEGES ON 2tdcor.* TO '2tdcor'@'%';
