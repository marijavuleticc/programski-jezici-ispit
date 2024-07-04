/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

CREATE DATABASE IF NOT EXISTS `progjeziciispit` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `progjeziciispit`;

CREATE TABLE IF NOT EXISTS `book` (
  `book_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `genre_id` int(10) unsigned NOT NULL DEFAULT 1,
  `ISBN` varchar(13) NOT NULL,
  `pages` int(11) NOT NULL,
  `published_at` datetime NOT NULL,
  PRIMARY KEY (`book_id`),
  UNIQUE KEY `ISBN` (`ISBN`),
  KEY `fk_book_genre_id` (`genre_id`),
  CONSTRAINT `fk_book_genre_id` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`genre_id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `book` (`book_id`, `author`, `name`, `genre_id`, `ISBN`, `pages`, `published_at`) VALUES
	(1, 'Sarah J.Maas', 'A Court of Thorns and Roses', 1, '9781635575569', 420, '2024-07-04 12:32:35'),
	(2, 'George R.R. Martin', 'A Game of Thrones', 1, '9780553588484', 835, '2024-07-04 12:34:00'),
	(3, 'Riley Sager', 'The House Across the Lake', 1, '9780593183199', 349, '2024-07-04 12:36:29'),
	(4, 'Sarah J. Maas', 'Throne of Glass', 1, '9781639730940', 406, '2024-07-04 12:37:24'),
	(5, 'Phill Knight', 'Shoe Dog', 1, '9781501135910', 400, '0000-00-00 00:00:00');

CREATE TABLE IF NOT EXISTS `genre` (
  `genre_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`genre_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `genre` (`genre_id`, `name`) VALUES
	(1, 'Fantasy'),
	(4, 'Fiction'),
	(2, 'Memoir'),
	(3, 'Thriller');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
