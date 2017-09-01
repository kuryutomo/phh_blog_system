-- DB の削除と作成をする
DROP DATABASE IF EXISTS phh_blog_system;
CREATE DATABASE phh_blog_system;

USE phh_blog_system;
SET AUTOCOMMIT=0;

-- プロフィールテーブルの削除と作成をする
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
-- テストデータを挿入する
INSERT INTO `profile` (`name`, `nickname`, `blood_type_id`, `birthday`) VALUES ("両津勘吉", "両さん", 1, '1952-3-3');
COMMIT;

-- 血液型テーブルの削除と作成をする
DROP TABLE IF EXISTS `blood_type`;
CREATE TABLE `blood_type` (
       `id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
       `type` VARCHAR(8) NOT NULL
);
-- データを挿入する
INSERT INTO `blood_type` (`type`) VALUES ('Ａ型');
INSERT INTO `blood_type` (`type`) VALUES ('Ｂ型');
INSERT INTO `blood_type` (`type`) VALUES ('ＡＢ型');
INSERT INTO `blood_type` (`type`) VALUES ('Ｏ型');
COMMIT;

-- 記事エントリテーブルの削除と作成をする
DROP TABLE IF EXISTS `entry`;
CREATE TABLE `entry` (
       `id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
       `title` VARCHAR(255) NOT NULL,
       `tag_id` INT NOT NULL,
       `text` TEXT NOT NULL,
       `image` BLOB,
       `created_at` timestamp not null default current_timestamp,
       `updated_at` timestamp not null default current_timestamp on update current_timestamp       
);
-- テストデータを挿入する
INSERT INTO `entry` (`title`, `tag_id`, `text`) VALUES ("最初の記事", 1, "ドキドキするー");
INSERT INTO `entry` (`title`, `tag_id`, `text`) VALUES ("二番目の記事", 1, "ワクワクするー");
COMMIT;

-- タグテーブルの削除と作成をする
DROP TABLE IF EXISTS `tag`;
CREATE TABLE `tag` (
       `id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
       `name` VARCHAR(255) NOT NULL
);
-- データを挿入する
INSERT INTO `tag` (`name`) VALUES ('無し');
INSERT INTO `tag` (`name`) VALUES ('PHH');
INSERT INTO `tag` (`name`) VALUES ('プライベート');
COMMIT;

SET AUTOCOMMIT=1;
