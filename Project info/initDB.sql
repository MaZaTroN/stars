CREATE TABLE `users` (
	`id`  int NOT NULL AUTO_INCREMENT ,
	`email`  varchar(255) NULL ,
	`password`  varchar(255) NULL ,
	`accept_date`  datetime NULL ,
	`profile_id`  int NULL ,
    `stars`  int NULL DEFAULT 0,
	`role`  varchar(255) NULL ,
	PRIMARY KEY (`id`)
);

CREATE TABLE `exchanges` (
	`id`  int NOT NULL AUTO_INCREMENT ,
	`from_uid`  int NULL ,
	`to_uid`  int NULL ,
	`comment`  varchar(255) NULL ,
	`stars`  int NULL ,
	`date`  datetime NULL ,
	PRIMARY KEY (`id`)
);

CREATE TABLE `level_system` (
	`id`  int NOT NULL AUTO_INCREMENT ,
	`work_time`  int NULL ,
	`stars`  int NULL ,
	PRIMARY KEY (`id`)
);

CREATE TABLE `profiles` (
	`id`  int NOT NULL AUTO_INCREMENT ,
	`user_id`  int NULL ,
	`name`  varchar(255) NULL ,
	`surname`  varchar(255) NULL ,
	`phone`  varchar(255) NULL ,
	`about`  varchar(255) NULL ,
	PRIMARY KEY (`id`)
);

INSERT INTO users VALUES (1, 'root@mail.com', 'f11536bee899541aa233f5c0aa98f625', NOW(), NULL, 0,'admin'); /* Password "rootpass"*/