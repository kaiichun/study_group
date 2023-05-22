-- Adminer 4.8.0 MySQL 5.5.5-10.5.17-MariaDB-1:10.5.17+maria~ubu2004 dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `contact_us`;
CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `contact_us` (`id`, `name`, `email`, `message`, `added_on`) VALUES
(5,	'David Perry',	'samuelo73@hotmail.com',	'hello i am David Perry!!\r\n',	'2023-05-22 07:06:36'),
(7,	'Shawn Moore',	'steviewhite98@hotmail.com',	'Hi Shawn Moore here,  nice to meet you!',	'2023-05-22 07:30:38'),
(8,	'Tomas Carter',	'Tomas.Carter@hotmail.com',	'Tomas Carter here, contact me to know more\r\n',	'2023-05-22 07:36:41');

-- 2023-05-22 07:37:14
