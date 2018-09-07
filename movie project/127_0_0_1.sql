-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2018 at 05:56 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movies`
--
CREATE DATABASE IF NOT EXISTS `movies` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `movies`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `email` varchar(40) DEFAULT NULL,
  `username` varchar(40) DEFAULT NULL,
  `phonenumber` int(40) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`email`, `username`, `phonenumber`, `password`) VALUES
('aditya', 'aditya', 809504546, 'aditya');

-- --------------------------------------------------------

--
-- Table structure for table `cast_details`
--

CREATE TABLE `cast_details` (
  `actor_name1` varchar(40) NOT NULL,
  `actor_name2` varchar(40) DEFAULT NULL,
  `actor_name3` varchar(40) DEFAULT NULL,
  `movie_title` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cast_details`
--

INSERT INTO `cast_details` (`actor_name1`, `actor_name2`, `actor_name3`, `movie_title`) VALUES
('CCH Pounder', 'Joel David Moore', 'Wes Studi', 'Avatar'),
('Chris Hemsworth', 'Robert Downey Jr.', 'Scarlett Johansson', 'Avengers: Age of Ultron'),
('Christopher Lee', 'Eva Green', 'Kristin Scott Thomas', 'The Golden Compass'),
('Daryl Sabara', 'Samantha Morton', 'Polly Walker', 'John Carter'),
('Giancarlo Giannini', 'Mathieu Amalric', 'Rory Kinnear', 'Quantum of Solace'),
('Henry Cavill', 'Christopher Meloni', 'Harry Lennix', 'Man of Steel'),
('J.K. Simmons', 'James Franco', 'Kirsten Dunst', 'Spider-Man 3'),
('Johnny Depp', 'Ruth Wilson', 'Tom Wilkinson', 'The Lone Ranger'),
('Kevin Spacey', 'Marlon Brando', 'Frank Langella', 'Superman Returns'),
('Mark Addy', 'William Hurt', 'Scott Grimes', 'Robin Hood'),
('Naomi Watts', 'Thomas Kretschmann', 'Evan Parke', 'King Kong'),
('Tom Hanks', 'Robert Downey Jr.', 'Scarlett Johansson', 'The Avengers'),
('Tom Hardy', 'Christian Bale', 'Joseph Gordon-Levitt', 'The Dark Knight Rises'),
('Will Smith', 'Michael Stuhlbarg', 'Nicole Scherzinger', 'Men in Black 3');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `name` varchar(40) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `subject` varchar(40) DEFAULT NULL,
  `message` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`name`, `email`, `subject`, `message`) VALUES
('arjun', 'arjun@gmail.com', 'webpage', 'nicejob');

-- --------------------------------------------------------

--
-- Table structure for table `investment_details`
--

CREATE TABLE `investment_details` (
  `movie_title` varchar(40) DEFAULT NULL,
  `budget` int(40) DEFAULT NULL,
  `gross` int(40) DEFAULT NULL,
  `year` int(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `investment_details`
--

INSERT INTO `investment_details` (`movie_title`, `budget`, `gross`, `year`) VALUES
('Robin Hood', 2220000, 105219735, 2001),
('Spider-Man 3', 2580000, 336530303, 2002),
('King Kong', 2070000, 218051260, 2005),
('Superman Returns', 2090000, 200069408, 2006),
('The Golden Compass', 1800000, 70083519, 2007),
('Quantum of Solace', 2000000, 168368427, 2008),
('Avatar', 2370000, 760505847, 2009),
('Men in Black 3', 2260000, 179020854, 2010),
('The Avengers', 2200000, 623279547, 2011),
('The Dark Knight Rises', 2500000, 448130642, 2012),
('John Carter', 2637000, 73058679, 2013),
('The Lone Ranger', 2150000, 89289910, 2014),
('Avengers: Age of Ultron', 2400000, 458991599, 2015),
('Man of Steel', 2250000, 291021565, 2016);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `email` varchar(40) DEFAULT NULL,
  `username` varchar(40) DEFAULT NULL,
  `phonenumber` int(40) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`email`, `username`, `phonenumber`, `password`) VALUES
('verma@gmail.com', 'verma', 987789987, 'verma');

-- --------------------------------------------------------

--
-- Table structure for table `movie_details`
--

CREATE TABLE `movie_details` (
  `movie_title` varchar(40) NOT NULL,
  `director_name` varchar(40) DEFAULT NULL,
  `actor_name1` varchar(40) DEFAULT NULL,
  `genre` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movie_details`
--

INSERT INTO `movie_details` (`movie_title`, `director_name`, `actor_name1`, `genre`) VALUES
('Avatar', 'James Cameron', 'CCH Pounder', 'Action|Adventure|Fantasy'),
('Avengers: Age of Ultron', 'Joss Whedon', 'Chris Hemsworth', 'Action|Adventure|Sci-Fi'),
('John Carter', 'Andrew Stanton', 'Daryl Sabara', 'Action|Adventure|Sci-Fi'),
('King Kong', 'Peter Jackson', 'Naomi Watts', 'Action|Adventure|Drama'),
('Man of Steel', 'Zack Snyder', 'Henry Cavill', 'Action|Adventure|Fantasy'),
('Men in Black 3', 'Barry Sonnenfeld', 'Will Smith', 'Action|Adventure|Comedy'),
('Quantum of Solace', 'Marc Forster', 'Giancarlo Giannini', 'Action|Adventure'),
('Robin Hood', 'Ridley Scott', 'Mark Addy', 'Action|Adventure|Drama'),
('Spider-Man 3', 'Sam Raimi', 'J.K. Simmons', 'Action|Adventure|Romance'),
('Superman Returns', 'Bryan Singer', 'Kevin Spacey', 'Action|Adventure|Sci-Fi'),
('The Avengers', 'Joss Whedon', 'Tom Hanks', 'Action|Adventure|Sci-Fi'),
('The Dark Knight Rises', 'Christopher Nolan', 'Tom Hardy', 'Action|Thriller'),
('The Golden Compass', 'Chris Weitz', 'Christopher Lee', 'Adventure|Family|Fantasy'),
('The Lone Ranger', 'Gore Verbinski', 'Johnny Depp', 'Action|Adventure|Western');

-- --------------------------------------------------------

--
-- Table structure for table `others`
--

CREATE TABLE `others` (
  `country` varchar(40) DEFAULT NULL,
  `language` varchar(40) DEFAULT NULL,
  `plot` varchar(40) NOT NULL,
  `imdb_score` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `others`
--

INSERT INTO `others` (`country`, `language`, `plot`, `imdb_score`) VALUES
('USA', 'English', 'alien|american civil war', 6),
('USA', 'English', 'artificial intelligence|superhero', 4),
('USA', 'English', 'avatar|future|marine', 7),
('USA', 'English', 'deception|imprisonment', 8),
('USA', 'English', 'sandman|symbiote', 5);

-- --------------------------------------------------------

--
-- Table structure for table `popular`
--

CREATE TABLE `popular` (
  `director_name` varchar(40) NOT NULL,
  `tot_usr` int(40) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `popular`
--

INSERT INTO `popular` (`director_name`, `tot_usr`) VALUES
('James Cameron', 3777),
('Christopher Nolan', 3514),
('Andrew Stanton', 1200),
('Sam Raimi', 2294),
('Joss Whedon', 1752),
('Bryan Singer', 0),
('Marc Forster', 0),
('Gore Verbinski', 0),
('Zack Snyder', 0),
('Joss Whedon', 1752),
('Barry Sonnenfeld', 0),
('Ridley Scott', 0),
('Chris Weitz', 0),
('Peter Jackson', 0);

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `director_name` varchar(40) NOT NULL,
  `num_user` int(40) NOT NULL,
  `num_critic` int(40) DEFAULT NULL,
  `imdb_score` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`director_name`, `num_user`, `num_critic`, `imdb_score`) VALUES
('Joss Whedon', 1117, 635, 4),
('Sam Raimi', 1902, 392, 5),
('Andrew Stanton', 738, 462, 6),
('James Cameron', 3054, 723, 7),
('Christopher Nolan', 2701, 813, 8);

--
-- Triggers `review`
--
DELIMITER $$
CREATE TRIGGER `Trig2` AFTER INSERT ON `review` FOR EACH ROW BEGIN
CALL popularp(new.director_name, new.num_user,new.num_critic);
END
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cast_details`
--
ALTER TABLE `cast_details`
  ADD PRIMARY KEY (`actor_name1`),
  ADD KEY `fk_movnam` (`movie_title`);

--
-- Indexes for table `investment_details`
--
ALTER TABLE `investment_details`
  ADD PRIMARY KEY (`year`),
  ADD KEY `fk_movna` (`movie_title`);

--
-- Indexes for table `movie_details`
--
ALTER TABLE `movie_details`
  ADD PRIMARY KEY (`movie_title`);

--
-- Indexes for table `others`
--
ALTER TABLE `others`
  ADD PRIMARY KEY (`plot`),
  ADD KEY `fk_imdbbd` (`imdb_score`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`imdb_score`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cast_details`
--
ALTER TABLE `cast_details`
  ADD CONSTRAINT `fk_movnam` FOREIGN KEY (`movie_title`) REFERENCES `movie_details` (`movie_title`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `investment_details`
--
ALTER TABLE `investment_details`
  ADD CONSTRAINT `fk_movna` FOREIGN KEY (`movie_title`) REFERENCES `movie_details` (`movie_title`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `others`
--
ALTER TABLE `others`
  ADD CONSTRAINT `fk_imdbbd` FOREIGN KEY (`imdb_score`) REFERENCES `review` (`imdb_score`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"movies\",\"table\":\"investment_details\"},{\"db\":\"movies\",\"table\":\"review\"},{\"db\":\"movies\",\"table\":\"others\"},{\"db\":\"movies\",\"table\":\"login\"},{\"db\":\"movies\",\"table\":\"popular\"},{\"db\":\"movies\",\"table\":\"cast_details\"},{\"db\":\"movies\",\"table\":\"movie_details\"},{\"db\":\"movies\",\"table\":\"contact\"},{\"db\":\"movies\",\"table\":\"admin\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2017-11-18 12:15:17', '{\"collation_connection\":\"utf8mb4_unicode_ci\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
