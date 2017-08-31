DROP DATABASE IF EXISTS phh_blog_system;
CREATE DATABASE phh_blog_system;

USE phh_blog_system;
SET AUTOCOMMIT=0;

DROP TABLE IF EXISTS `profile`;
CREATE TABLE `profile` (
       `id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
       `name` VARCHAR(32),
       `nickname` VARCHAR(32),
       `blood_type_id` INT,
       `birthday` DATE,
       `image` BLOB,
       `updated_at` timestamp not null default current_timestamp on update current_timestamp       
);
COMMIT;

DROP TABLE IF EXISTS `blood_type`;
CREATE TABLE `blood_type` (
       `id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
       `type` VARCHAR(8) NOT NULL
);
INSERT INTO `blood_type` (`type`) VALUES ('Ａ型');
INSERT INTO `blood_type` (`type`) VALUES ('Ｂ型');
INSERT INTO `blood_type` (`type`) VALUES ('ＡＢ型');
INSERT INTO `blood_type` (`type`) VALUES ('Ｏ型');
COMMIT;

DROP TABLE IF EXISTS `entry`;
CREATE TABLE `entry` (
       `id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
       `title` VARCHAR(255) NOT NULL,
       `tag_id` INT NOT NULL,
       `text` TEXT NOT NULL,
       `created_at` timestamp not null default current_timestamp,
       `updated_at` timestamp not null default current_timestamp on update current_timestamp       
);
COMMIT;

DROP TABLE IF EXISTS `tag`;
CREATE TABLE `tag` (
       `id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
       `name` VARCHAR(255) NOT NULL
);
INSERT INTO `tag` (`name`) VALUES ('無し');
INSERT INTO `tag` (`name`) VALUES ('学校');
INSERT INTO `tag` (`name`) VALUES ('プライベート');
COMMIT;

SET AUTOCOMMIT=1;
