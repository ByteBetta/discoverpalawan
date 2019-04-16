<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>

ERROR - 2019-04-16 04:56:06 --> Severity: Warning --> mysqli::real_connect(): (HY000/1045): Access denied for user 'zeroafmn_zerobstacle'@'localhost' (using password: YES) C:\xampp\htdocs\discoverpalawan\system\database\drivers\mysqli\mysqli_driver.php 201
ERROR - 2019-04-16 04:56:06 --> Unable to connect to the database
ERROR - 2019-04-16 04:56:06 --> Severity: Warning --> mysqli::real_connect(): (HY000/1045): Access denied for user 'zeroafmn_zerobstacle'@'localhost' (using password: YES) C:\xampp\htdocs\discoverpalawan\system\database\drivers\mysqli\mysqli_driver.php 201
ERROR - 2019-04-16 04:56:06 --> Unable to connect to the database
ERROR - 2019-04-16 04:56:06 --> Query error: Access denied for user 'zeroafmn_zerobstacle'@'localhost' (using password: YES) - Invalid query: CREATE TABLE IF NOT EXISTS `modules` (
	`module_name` VARCHAR(60) NOT NULL,
	`version_code` INT NOT NULL,
	`version_name` VARCHAR(60) NOT NULL,
	`_enabled` INT NOT NULL,
	`_order` INT NOT NULL,
	`updated_at` DATETIME NOT NULL,
	`created_at` DATETIME NOT NULL,
	CONSTRAINT `pk_modules` PRIMARY KEY(`module_name`)
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8 COLLATE = utf8_general_ci
ERROR - 2019-04-16 04:56:06 --> Severity: Error --> Call to a member function real_escape_string() on a non-object C:\xampp\htdocs\discoverpalawan\system\database\drivers\mysqli\mysqli_driver.php 391
