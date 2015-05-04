CREATE TABLE `bbs` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(64) NOT NULL,
	`email` VARCHAR(64),
	`subject` VARCHAR(128),
	`body` TEXT,
	`password` VARCHAR(32),
	`ip_address` VARCHAR(39),
	`datetime` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	PRIMARY KEY (`id`)
) ENGINE=MYISAM DEFAULT CHARSET=utf8;

CREATE TABLE `captcha` (
	`captcha_id` BIGINT(13) UNSIGNED NOT NULL AUTO_INCREMENT,
	`captcha_time` INT(10) UNSIGNED NOT NULL,
	`word` VARCHAR(20) NOT NULL,
	PRIMARY KEY (`captcha_id`),
	KEY (`word`)
) ENGINE=MYISAM DEFAULT CHARSET=utf8;
