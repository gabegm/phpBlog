-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2014 at 09:17 AM
-- Server version: 5.6.11
-- PHP Version: 5.5.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `gabrielgaucimaistre2ed6`
--
CREATE DATABASE IF NOT EXISTS `gabrielgaucimaistre2ed6` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `gabrielgaucimaistre2ed6`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_articles`
--

CREATE TABLE IF NOT EXISTS `tbl_articles` (
  `articleId` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL,
  `content` text NOT NULL,
  `imgPath` varchar(100) NOT NULL,
  `dateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`articleId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tbl_articles`
--

INSERT INTO `tbl_articles` (`articleId`, `title`, `content`, `imgPath`, `dateTime`) VALUES
(1, 'Lorem Ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ac felis vel lorem dapibus varius. Mauris semper purus quis viverra ullamcorper. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In aliquet, erat at porttitor porta, nulla sem vulputate metus, et fringilla diam lacus id odio. Donec elementum lorem vitae nisl feugiat, ut laoreet leo aliquet. Quisque erat ipsum, vulputate eget pulvinar vel, varius vitae orci. Maecenas vitae turpis non dolor interdum porta. Fusce ornare arcu non molestie porta. Phasellus ac eleifend neque. Integer facilisis consectetur lectus nec volutpat. Duis in scelerisque leo, non placerat purus. Donec tincidunt vitae ipsum sed viverra. Proin vel urna sit amet sem egestas malesuada. Etiam sed pellentesque neque.\r\n\r\nInteger id lobortis dui. Sed sit amet massa pharetra, euismod neque vel, condimentum tellus. Maecenas dictum sagittis mattis. Integer eros neque, hendrerit et mi et, varius blandit mauris. Sed sed condimentum purus. Nam iaculis, metus id imperdiet volutpat, nibh metus fermentum purus, ut scelerisque ligula nibh vulputate elit. Morbi auctor in risus quis gravida. Vestibulum lobortis purus quis commodo condimentum. Nulla magna tortor, commodo a suscipit a, gravida at nulla. Donec in auctor lectus. Duis euismod purus ut eros consequat, quis scelerisque lorem eleifend.\r\n\r\nSed fringilla massa nec massa sagittis, vehicula eleifend massa pellentesque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec fringilla quam mi, quis sollicitudin tellus adipiscing sit amet. Fusce ac blandit nisl, in varius lectus. Sed interdum leo eu vulputate fringilla. Integer tristique, odio non ornare scelerisque, justo urna porta urna, semper luctus neque est et neque. Aliquam pellentesque auctor enim, at cursus augue volutpat in. Ut et dui sed ante laoreet dignissim. Sed quis nisl porttitor, vehicula erat ac, dictum quam. Ut eu tempus ligula. Etiam sollicitudin justo sit amet aliquam euismod. Cras a nunc vel turpis rhoncus bibendum eu fringilla turpis. Curabitur tincidunt nulla et molestie semper. Nunc tincidunt enim lacus, in lobortis diam iaculis nec. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent id leo cursus ligula accumsan auctor et at turpis.\r\n\r\nAenean varius, leo ut mattis condimentum, orci lorem placerat dolor, ac vulputate diam mi eu nisi. Suspendisse potenti. Aliquam aliquet blandit volutpat. Nam lacinia nec nulla non condimentum. Nulla lobortis nunc non risus vulputate, varius tristique nunc ornare. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi quis laoreet ligula. Cras a tellus eros. Duis non blandit diam, ac lobortis est. Suspendisse in turpis ut quam facilisis condimentum. Nam mi eros, ultricies non sem vel, dignissim ullamcorper est.\r\n\r\nNullam porttitor, libero eu dignissim ultrices, ligula turpis lobortis orci, ut interdum nibh dui hendrerit nunc. Proin lobortis tincidunt tellus id congue. In congue cursus eleifend. Morbi fermentum erat quis erat mollis, sit amet laoreet est molestie. Quisque eleifend lorem sapien, faucibus posuere mi bibendum ut. Nam non aliquam augue. Suspendisse adipiscing dapibus feugiat. Integer sollicitudin et ante ac hendrerit. Integer tincidunt dui nec erat molestie, non commodo felis interdum. Nullam viverra ante nisl, eget porta justo pretium in. Fusce urna velit, scelerisque ac mollis congue, fringilla sit amet justo.', 'images/64550.original-8409.jpg', '2014-06-08 14:57:50'),
(2, 'Lorem Ipsum 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ac felis vel lorem dapibus varius. Mauris semper purus quis viverra ullamcorper. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In aliquet, erat at porttitor porta, nulla sem vulputate metus, et fringilla diam lacus id odio. Donec elementum lorem vitae nisl feugiat, ut laoreet leo aliquet. Quisque erat ipsum, vulputate eget pulvinar vel, varius vitae orci. Maecenas vitae turpis non dolor interdum porta. Fusce ornare arcu non molestie porta. Phasellus ac eleifend neque. Integer facilisis consectetur lectus nec volutpat. Duis in scelerisque leo, non placerat purus. Donec tincidunt vitae ipsum sed viverra. Proin vel urna sit amet sem egestas malesuada. Etiam sed pellentesque neque.\r\n\r\nInteger id lobortis dui. Sed sit amet massa pharetra, euismod neque vel, condimentum tellus. Maecenas dictum sagittis mattis. Integer eros neque, hendrerit et mi et, varius blandit mauris. Sed sed condimentum purus. Nam iaculis, metus id imperdiet volutpat, nibh metus fermentum purus, ut scelerisque ligula nibh vulputate elit. Morbi auctor in risus quis gravida. Vestibulum lobortis purus quis commodo condimentum. Nulla magna tortor, commodo a suscipit a, gravida at nulla. Donec in auctor lectus. Duis euismod purus ut eros consequat, quis scelerisque lorem eleifend.\r\n\r\nSed fringilla massa nec massa sagittis, vehicula eleifend massa pellentesque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec fringilla quam mi, quis sollicitudin tellus adipiscing sit amet. Fusce ac blandit nisl, in varius lectus. Sed interdum leo eu vulputate fringilla. Integer tristique, odio non ornare scelerisque, justo urna porta urna, semper luctus neque est et neque. Aliquam pellentesque auctor enim, at cursus augue volutpat in. Ut et dui sed ante laoreet dignissim. Sed quis nisl porttitor, vehicula erat ac, dictum quam. Ut eu tempus ligula. Etiam sollicitudin justo sit amet aliquam euismod. Cras a nunc vel turpis rhoncus bibendum eu fringilla turpis. Curabitur tincidunt nulla et molestie semper. Nunc tincidunt enim lacus, in lobortis diam iaculis nec. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent id leo cursus ligula accumsan auctor et at turpis.\r\n\r\nAenean varius, leo ut mattis condimentum, orci lorem placerat dolor, ac vulputate diam mi eu nisi. Suspendisse potenti. Aliquam aliquet blandit volutpat. Nam lacinia nec nulla non condimentum. Nulla lobortis nunc non risus vulputate, varius tristique nunc ornare. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi quis laoreet ligula. Cras a tellus eros. Duis non blandit diam, ac lobortis est. Suspendisse in turpis ut quam facilisis condimentum. Nam mi eros, ultricies non sem vel, dignissim ullamcorper est.\r\n\r\nNullam porttitor, libero eu dignissim ultrices, ligula turpis lobortis orci, ut interdum nibh dui hendrerit nunc. Proin lobortis tincidunt tellus id congue. In congue cursus eleifend. Morbi fermentum erat quis erat mollis, sit amet laoreet est molestie. Quisque eleifend lorem sapien, faucibus posuere mi bibendum ut. Nam non aliquam augue. Suspendisse adipiscing dapibus feugiat. Integer sollicitudin et ante ac hendrerit. Integer tincidunt dui nec erat molestie, non commodo felis interdum. Nullam viverra ante nisl, eget porta justo pretium in. Fusce urna velit, scelerisque ac mollis congue, fringilla sit amet justo.', 'images/64550.original-8409.jpg', '2014-06-08 14:57:45'),
(3, 'Lorem Ipsum 3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ac felis vel lorem dapibus varius. Mauris semper purus quis viverra ullamcorper. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In aliquet, erat at porttitor porta, nulla sem vulputate metus, et fringilla diam lacus id odio. Donec elementum lorem vitae nisl feugiat, ut laoreet leo aliquet. Quisque erat ipsum, vulputate eget pulvinar vel, varius vitae orci. Maecenas vitae turpis non dolor interdum porta. Fusce ornare arcu non molestie porta. Phasellus ac eleifend neque. Integer facilisis consectetur lectus nec volutpat. Duis in scelerisque leo, non placerat purus. Donec tincidunt vitae ipsum sed viverra. Proin vel urna sit amet sem egestas malesuada. Etiam sed pellentesque neque.\r\n\r\nInteger id lobortis dui. Sed sit amet massa pharetra, euismod neque vel, condimentum tellus. Maecenas dictum sagittis mattis. Integer eros neque, hendrerit et mi et, varius blandit mauris. Sed sed condimentum purus. Nam iaculis, metus id imperdiet volutpat, nibh metus fermentum purus, ut scelerisque ligula nibh vulputate elit. Morbi auctor in risus quis gravida. Vestibulum lobortis purus quis commodo condimentum. Nulla magna tortor, commodo a suscipit a, gravida at nulla. Donec in auctor lectus. Duis euismod purus ut eros consequat, quis scelerisque lorem eleifend.\r\n\r\nSed fringilla massa nec massa sagittis, vehicula eleifend massa pellentesque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec fringilla quam mi, quis sollicitudin tellus adipiscing sit amet. Fusce ac blandit nisl, in varius lectus. Sed interdum leo eu vulputate fringilla. Integer tristique, odio non ornare scelerisque, justo urna porta urna, semper luctus neque est et neque. Aliquam pellentesque auctor enim, at cursus augue volutpat in. Ut et dui sed ante laoreet dignissim. Sed quis nisl porttitor, vehicula erat ac, dictum quam. Ut eu tempus ligula. Etiam sollicitudin justo sit amet aliquam euismod. Cras a nunc vel turpis rhoncus bibendum eu fringilla turpis. Curabitur tincidunt nulla et molestie semper. Nunc tincidunt enim lacus, in lobortis diam iaculis nec. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent id leo cursus ligula accumsan auctor et at turpis.\r\n\r\nAenean varius, leo ut mattis condimentum, orci lorem placerat dolor, ac vulputate diam mi eu nisi. Suspendisse potenti. Aliquam aliquet blandit volutpat. Nam lacinia nec nulla non condimentum. Nulla lobortis nunc non risus vulputate, varius tristique nunc ornare. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi quis laoreet ligula. Cras a tellus eros. Duis non blandit diam, ac lobortis est. Suspendisse in turpis ut quam facilisis condimentum. Nam mi eros, ultricies non sem vel, dignissim ullamcorper est.\r\n\r\nNullam porttitor, libero eu dignissim ultrices, ligula turpis lobortis orci, ut interdum nibh dui hendrerit nunc. Proin lobortis tincidunt tellus id congue. In congue cursus eleifend. Morbi fermentum erat quis erat mollis, sit amet laoreet est molestie. Quisque eleifend lorem sapien, faucibus posuere mi bibendum ut. Nam non aliquam augue. Suspendisse adipiscing dapibus feugiat. Integer sollicitudin et ante ac hendrerit. Integer tincidunt dui nec erat molestie, non commodo felis interdum. Nullam viverra ante nisl, eget porta justo pretium in. Fusce urna velit, scelerisque ac mollis congue, fringilla sit amet justo.', 'images/64550.original-8409.jpg', '2014-06-08 14:57:39');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comments`
--

CREATE TABLE IF NOT EXISTS `tbl_comments` (
  `commentId` int(11) NOT NULL AUTO_INCREMENT,
  `comment` varchar(255) NOT NULL,
  `articleId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `dateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`commentId`),
  KEY `userId` (`userId`),
  KEY `articleId` (`articleId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `tbl_comments`
--

INSERT INTO `tbl_comments` (`commentId`, `comment`, `articleId`, `userId`, `dateTime`) VALUES
(4, 'test', 1, 4, '2014-06-01 09:50:46'),
(5, 'test', 1, 4, '2014-06-01 09:56:01'),
(6, 'test', 1, 4, '2014-06-01 09:57:24'),
(8, 'test', 1, 4, '2014-06-01 10:39:57'),
(9, 'test', 1, 4, '2014-06-01 10:47:06'),
(10, 'test', 1, 4, '2014-06-01 13:01:47'),
(11, 'test', 1, 4, '2014-06-01 20:07:10'),
(12, 'Hello World!', 11, 4, '2014-06-05 17:06:57'),
(13, '<p>Hello World!</p>\r\n', 15, 4, '2014-06-19 10:07:30'),
(14, '<p>test</p>\r\n', 0, 1, '2014-06-19 23:40:57'),
(15, '<p>test</p>\r\n', 0, 1, '2014-06-19 23:42:26'),
(16, '<p>test</p>\r\n', 0, 1, '2014-06-19 23:44:31'),
(17, '<p>test</p>\r\n', 15, 1, '2014-06-19 23:49:00'),
(18, '<p>test2</p>\r\n', 15, 1, '2014-06-19 23:49:45'),
(19, '<p>test3</p>\r\n', 15, 1, '2014-06-19 23:50:02'),
(20, '<p>test 4</p>\r\n', 0, 1, '2014-06-19 23:50:38'),
(21, '<p>test4</p>\r\n', 0, 1, '2014-06-19 23:51:01'),
(22, '<p>test5</p>\r\n', 15, 1, '2014-06-19 23:53:53'),
(23, '<p>test6</p>\r\n', 15, 1, '2014-06-19 23:54:09'),
(24, 'test', 2, 1, '2014-06-20 00:02:19'),
(25, '<p>test</p>\r\n', 1, 1, '2014-06-20 07:13:03'),
(26, '<p>test</p>\r\n', 2, 1, '2014-06-20 07:13:11'),
(27, '<p>test</p>\r\n', 3, 1, '2014-06-20 07:13:25');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_logs`
--

CREATE TABLE IF NOT EXISTS `tbl_logs` (
  `logId` int(11) NOT NULL AUTO_INCREMENT,
  `remoteAddress` varchar(100) NOT NULL,
  `requestUri` varchar(100) NOT NULL,
  `logComment` varchar(255) NOT NULL,
  `dateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`logId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=316 ;

--
-- Dumping data for table `tbl_logs`
--

INSERT INTO `tbl_logs` (`logId`, `remoteAddress`, `requestUri`, `logComment`, `dateTime`) VALUES
(1, '::1', '/AS2/logout.php', 'User successfully logged out!', '2014-06-01 10:54:44'),
(2, '::1', '/AS2/login.php', 'User successfully logged in!', '2014-06-01 10:55:10'),
(3, '::1', '/AS2/logout.php', 'User successfully logged out!', '2014-06-01 10:58:34'),
(4, '::1', '/AS2/login.php', 'Admin successfully logged in!', '2014-06-01 10:58:37'),
(5, '::1', '/AS2/logout.php', 'User successfully logged out!', '2014-06-01 10:58:50'),
(6, '::1', '/AS2/login.php', 'Admin successfully logged in!', '2014-06-01 12:06:46'),
(7, '::1', '/AS2/logout.php', 'Admin successfully logged out!', '2014-06-01 12:06:52'),
(8, '::1', '/AS2/login.php', 'Admin successfully logged in!', '2014-06-01 12:06:55'),
(9, '::1', '/AS2/logout.php', 'Admin successfully logged out!', '2014-06-01 13:01:32'),
(10, '::1', '/AS2/login.php', 'User successfully logged in!', '2014-06-01 13:01:39'),
(11, '::1', '/AS2/comment.php', 'User successfully posted a comment!', '2014-06-01 13:01:47'),
(12, '::1', '/AS2/logout.php', 'Admin successfully logged out!', '2014-06-01 13:31:05'),
(13, '::1', '/AS2/login.php', 'Admin successfully logged in!', '2014-06-01 13:31:13'),
(14, '::1', '/AS2/logout.php', 'Admin successfully logged out!', '2014-06-01 14:02:03'),
(15, '::1', '/AS2/login.php', 'Admin successfully logged in!', '2014-06-01 14:02:08'),
(16, '::1', '/AS2/logout.php', 'Admin successfully logged out!', '2014-06-01 14:03:42'),
(17, '::1', '/AS2/login.php', 'User successfully logged in!', '2014-06-01 15:18:25'),
(18, '::1', '/AS2/logout.php', 'Admin successfully logged out!', '2014-06-01 15:53:27'),
(19, '::1', '/AS2/login.php', 'User successfully logged in!', '2014-06-01 15:53:34'),
(20, '::1', '/AS2/logout.php', 'Admin successfully logged out!', '2014-06-01 17:43:17'),
(21, '::1', '/AS2/login.php', 'Admin successfully logged in!', '2014-06-01 17:51:13'),
(22, '::1', '/AS2/logout.php', 'Admin successfully logged out!', '2014-06-01 18:36:37'),
(23, '::1', '/AS2/login.php', 'Admin successfully logged in!', '2014-06-01 18:36:44'),
(24, '::1', '/AS2/logout.php', 'Admin successfully logged out!', '2014-06-01 19:00:08'),
(25, '::1', '/AS2/login.php', 'User successfully logged in!', '2014-06-01 19:00:25'),
(26, '::1', '/AS2/logout.php', 'Admin successfully logged out!', '2014-06-01 19:03:17'),
(27, '::1', '/AS2/login.php', 'Admin successfully logged in!', '2014-06-01 19:03:21'),
(28, '::1', '/AS2/logout.php', 'Admin successfully logged out!', '2014-06-01 19:11:50'),
(29, '::1', '/AS2/login.php', 'Admin successfully logged in!', '2014-06-01 19:12:52'),
(30, '::1', '/AS2/logout.php', 'Admin successfully logged out!', '2014-06-01 19:14:54'),
(31, '::1', '/AS2/login.php', 'Admin successfully logged in!', '2014-06-01 19:21:25'),
(32, '::1', '/AS2/logout.php', 'Admin successfully logged out!', '2014-06-01 20:05:58'),
(33, '::1', '/AS2/login.php', 'User successfully logged in!', '2014-06-01 20:06:07'),
(34, '::1', '/AS2/article-comment.php', 'User successfully posted a comment!', '2014-06-01 20:07:10'),
(35, '::1', '/AS2/logout.php', 'Admin successfully logged out!', '2014-06-01 20:22:26'),
(36, '::1', '/AS2/login.php', 'Admin successfully logged in!', '2014-06-01 20:22:31'),
(37, '::1', '/AS2/logout.php', 'Admin successfully logged out!', '2014-06-01 20:22:45'),
(38, '::1', '/AS2/login.php', 'User successfully logged in!', '2014-06-01 20:22:49'),
(39, '::1', '/AS2/logout.php', 'Admin successfully logged out!', '2014-06-02 09:10:47'),
(40, '::1', '/AS2/login.php', 'Admin successfully logged in!', '2014-06-02 09:11:20'),
(41, '::1', '/AS2/logout.php', 'Admin successfully logged out!', '2014-06-02 11:08:20'),
(42, '::1', '/AS2/login.php', 'Admin successfully logged in!', '2014-06-02 21:33:18'),
(43, '::1', '/AS2/quick-post.php', 'Upload: logo_large.png', '2014-06-04 15:51:03'),
(44, '::1', '/AS2/quick-post.php', 'Type: image/png', '2014-06-04 15:51:06'),
(45, '::1', '/AS2/quick-post.php', 'Size: 21.4619140625', '2014-06-04 15:51:07'),
(46, '::1', '/AS2/quick-post.php', 'Stored in: G:\\xampp\\tmp\\phpB06B.tmp', '2014-06-04 15:51:07'),
(47, '::1', '/AS2/quick-post.php', 'Upload: 64550.original-8409.jpg', '2014-06-04 16:13:40'),
(48, '::1', '/AS2/quick-post.php', 'Type: image/jpeg', '2014-06-04 16:13:45'),
(49, '::1', '/AS2/quick-post.php', 'Size: 53.8125', '2014-06-04 16:13:45'),
(50, '::1', '/AS2/quick-post.php', 'Stored in: G:\\xampp\\tmp\\php5D06.tmp', '2014-06-04 16:13:45'),
(51, '::1', '/AS2/quick-post.php', 'Upload: 64550.original-8409.jpg', '2014-06-04 16:15:27'),
(52, '::1', '/AS2/quick-post.php', 'Type: image/jpeg', '2014-06-04 16:15:27'),
(53, '::1', '/AS2/quick-post.php', 'Size: 53.8125', '2014-06-04 16:15:27'),
(54, '::1', '/AS2/quick-post.php', 'Stored in: G:\\xampp\\tmp\\phpFF9B.tmp', '2014-06-04 16:15:27'),
(55, '::1', '/AS2/quick-post.php', 'Upload: 64550.original-8409.jpg', '2014-06-04 18:20:58'),
(56, '::1', '/AS2/quick-post.php', 'Type: image/jpeg', '2014-06-04 18:20:58'),
(57, '::1', '/AS2/quick-post.php', 'Size: 53.8125', '2014-06-04 18:20:58'),
(58, '::1', '/AS2/quick-post.php', 'Stored in: G:\\xampp\\tmp\\phpF02C.tmp', '2014-06-04 18:20:58'),
(59, '::1', '/AS2/quick-post.php', 'Upload: 64550.original-8409.jpg', '2014-06-04 18:25:22'),
(60, '::1', '/AS2/quick-post.php', 'Type: image/jpeg', '2014-06-04 18:25:22'),
(61, '::1', '/AS2/quick-post.php', 'Size: 53.8125', '2014-06-04 18:25:22'),
(62, '::1', '/AS2/quick-post.php', 'Stored in: G:\\xampp\\tmp\\phpEC70.tmp', '2014-06-04 18:25:23'),
(63, '::1', '/AS2/quick-post.php', 'Upload: 64550.original-8409.jpg', '2014-06-04 18:26:17'),
(64, '::1', '/AS2/quick-post.php', 'Type: image/jpeg', '2014-06-04 18:26:17'),
(65, '::1', '/AS2/quick-post.php', 'Size: 53.8125', '2014-06-04 18:26:17'),
(66, '::1', '/AS2/quick-post.php', 'Stored in: G:\\xampp\\tmp\\phpC6F3.tmp', '2014-06-04 18:26:17'),
(67, '::1', '/AS2/quick-post.php', 'Upload: 64550.original-8409.jpg', '2014-06-04 18:26:43'),
(68, '::1', '/AS2/quick-post.php', 'Type: image/jpeg', '2014-06-04 18:26:43'),
(69, '::1', '/AS2/quick-post.php', 'Size: 53.8125', '2014-06-04 18:26:43'),
(70, '::1', '/AS2/quick-post.php', 'Stored in: G:\\xampp\\tmp\\php2DFB.tmp', '2014-06-04 18:26:43'),
(71, '::1', '/AS2/quick-post.php', 'Upload: 64550.original-8409.jpg', '2014-06-04 18:26:57'),
(72, '::1', '/AS2/quick-post.php', 'Type: image/jpeg', '2014-06-04 18:26:57'),
(73, '::1', '/AS2/quick-post.php', 'Size: 53.8125', '2014-06-04 18:26:57'),
(74, '::1', '/AS2/quick-post.php', 'Stored in: G:\\xampp\\tmp\\php66AF.tmp', '2014-06-04 18:26:57'),
(75, '::1', '/AS2/quick-post.php', 'Upload: 64550.original-8409.jpg', '2014-06-04 18:27:13'),
(76, '::1', '/AS2/quick-post.php', 'Type: image/jpeg', '2014-06-04 18:27:13'),
(77, '::1', '/AS2/quick-post.php', 'Size: 53.8125', '2014-06-04 18:27:13'),
(78, '::1', '/AS2/quick-post.php', 'Stored in: G:\\xampp\\tmp\\phpA2FE.tmp', '2014-06-04 18:27:13'),
(79, '::1', '/AS2/quick-post.php', 'Upload: 64550.original-8409.jpg', '2014-06-04 18:27:37'),
(80, '::1', '/AS2/quick-post.php', 'Type: image/jpeg', '2014-06-04 18:27:41'),
(81, '::1', '/AS2/quick-post.php', 'Size: 53.8125', '2014-06-04 18:27:41'),
(82, '::1', '/AS2/quick-post.php', 'Stored in: G:\\xampp\\tmp\\php207.tmp', '2014-06-04 18:27:41'),
(83, '::1', '/AS2/quick-post.php', 'Upload: 64550.original-8409.jpg', '2014-06-04 18:28:06'),
(84, '::1', '/AS2/quick-post.php', 'Type: image/jpeg', '2014-06-04 18:28:06'),
(85, '::1', '/AS2/quick-post.php', 'Size: 53.8125', '2014-06-04 18:28:06'),
(86, '::1', '/AS2/quick-post.php', 'Stored in: G:\\xampp\\tmp\\php739E.tmp', '2014-06-04 18:28:06'),
(87, '::1', '/AS2/quick-post.php', 'Upload: 64550.original-8409.jpg', '2014-06-04 18:28:28'),
(88, '::1', '/AS2/quick-post.php', 'Type: image/jpeg', '2014-06-04 18:28:28'),
(89, '::1', '/AS2/quick-post.php', 'Size: 53.8125', '2014-06-04 18:28:28'),
(90, '::1', '/AS2/quick-post.php', 'Stored in: G:\\xampp\\tmp\\phpB711.tmp', '2014-06-04 18:28:28'),
(91, '::1', '/AS2/quick-post.php', 'Upload: 64550.original-8409.jpg', '2014-06-04 18:28:52'),
(92, '::1', '/AS2/quick-post.php', 'Type: image/jpeg', '2014-06-04 18:28:52'),
(93, '::1', '/AS2/quick-post.php', 'Size: 53.8125', '2014-06-04 18:28:52'),
(94, '::1', '/AS2/quick-post.php', 'Stored in: G:\\xampp\\tmp\\php2740.tmp', '2014-06-04 18:28:52'),
(95, '::1', '/AS2/logout.php', 'Admin successfully logged out!', '2014-06-04 18:40:06'),
(96, '::1', '/AS2/login.php', 'Admin successfully logged in!', '2014-06-04 18:40:09'),
(97, '::1', '/AS2/quick-post.php', 'Upload: 64550.original-8409.jpg', '2014-06-04 22:22:57'),
(98, '::1', '/AS2/quick-post.php', 'Type: image/jpeg', '2014-06-04 22:22:58'),
(99, '::1', '/AS2/quick-post.php', 'Size: 53.8125', '2014-06-04 22:22:58'),
(100, '::1', '/AS2/quick-post.php', 'Stored in: G:\\xampp\\tmp\\php7E98.tmp', '2014-06-04 22:22:58'),
(101, '::1', '/AS2/logout.php', 'Admin successfully logged out!', '2014-06-04 22:32:57'),
(102, '::1', '/AS2/login.php', 'Admin successfully logged in!', '2014-06-04 22:33:06'),
(103, '::1', '/AS2/quick-post.php', 'Upload: 64550.original-8409.jpg', '2014-06-04 22:33:41'),
(104, '::1', '/AS2/quick-post.php', 'Type: image/jpeg', '2014-06-04 22:33:43'),
(105, '::1', '/AS2/quick-post.php', 'Size: 53.8125', '2014-06-04 22:33:44'),
(106, '::1', '/AS2/quick-post.php', 'Stored in: G:\\xampp\\tmp\\php4122.tmp', '2014-06-04 22:33:44'),
(107, '::1', '/AS2/quick-post.php', 'Upload: 64550.original-8409.jpg', '2014-06-04 22:42:43'),
(108, '::1', '/AS2/quick-post.php', 'Type: image/jpeg', '2014-06-04 22:42:43'),
(109, '::1', '/AS2/quick-post.php', 'Size: 53.8125', '2014-06-04 22:42:43'),
(110, '::1', '/AS2/quick-post.php', 'Stored in: G:\\xampp\\tmp\\php8F2C.tmp', '2014-06-04 22:42:43'),
(111, '::1', '/AS2/quick-post.php', 'Upload: 64550.original-8409.jpg', '2014-06-04 22:44:03'),
(112, '::1', '/AS2/quick-post.php', 'Type: image/jpeg', '2014-06-04 22:44:05'),
(113, '::1', '/AS2/quick-post.php', 'Size: 53.8125', '2014-06-04 22:44:09'),
(114, '::1', '/AS2/quick-post.php', 'Stored in: G:\\xampp\\tmp\\phpC711.tmp', '2014-06-04 22:44:09'),
(115, '::1', '/AS2/quick-post.php', 'Upload: 64550.original-8409.jpg', '2014-06-04 22:51:27'),
(116, '::1', '/AS2/quick-post.php', 'Type: image/jpeg', '2014-06-04 22:51:27'),
(117, '::1', '/AS2/quick-post.php', 'Size: 53.8125', '2014-06-04 22:51:27'),
(118, '::1', '/AS2/quick-post.php', 'Stored in: G:\\xampp\\tmp\\php8E6C.tmp', '2014-06-04 22:51:27'),
(119, '::1', '/AS2/quick-post.php', 'Upload: 64550.original-8409.jpg', '2014-06-04 22:57:54'),
(120, '::1', '/AS2/quick-post.php', 'Type: image/jpeg', '2014-06-04 22:57:55'),
(121, '::1', '/AS2/quick-post.php', 'Size: 53.8125', '2014-06-04 22:58:01'),
(122, '::1', '/AS2/quick-post.php', 'Stored in: G:\\xampp\\tmp\\php7376.tmp', '2014-06-04 22:58:01'),
(123, '::1', '/AS2/quick-post.php', 'Upload: 64550.original-8409.jpg', '2014-06-04 23:00:11'),
(124, '::1', '/AS2/quick-post.php', 'Type: image/jpeg', '2014-06-04 23:00:11'),
(125, '::1', '/AS2/quick-post.php', 'Size: 53.8125', '2014-06-04 23:00:11'),
(126, '::1', '/AS2/quick-post.php', 'Stored in: G:\\xampp\\tmp\\php8DCB.tmp', '2014-06-04 23:00:11'),
(127, '::1', '/AS2/quick-post.php', 'Upload: 64550.original-8409.jpg', '2014-06-04 23:01:10'),
(128, '::1', '/AS2/quick-post.php', 'Type: image/jpeg', '2014-06-04 23:01:10'),
(129, '::1', '/AS2/quick-post.php', 'Size: 53.8125', '2014-06-04 23:01:10'),
(130, '::1', '/AS2/quick-post.php', 'Stored in: G:\\xampp\\tmp\\php7250.tmp', '2014-06-04 23:01:10'),
(131, '::1', '/AS2/quick-post.php', 'Upload: 64550.original-8409.jpg', '2014-06-04 23:05:44'),
(132, '::1', '/AS2/quick-post.php', 'Type: image/jpeg', '2014-06-04 23:05:44'),
(133, '::1', '/AS2/quick-post.php', 'Size: 53.8125', '2014-06-04 23:05:44'),
(134, '::1', '/AS2/quick-post.php', 'Stored in: G:\\xampp\\tmp\\phpA6AC.tmp', '2014-06-04 23:05:44'),
(135, '::1', '/AS2/quick-post.php', 'Upload: 64550.original-8409.jpg', '2014-06-04 23:09:57'),
(136, '::1', '/AS2/quick-post.php', 'Type: image/jpeg', '2014-06-04 23:09:57'),
(137, '::1', '/AS2/quick-post.php', 'Size: 53.8125', '2014-06-04 23:09:57'),
(138, '::1', '/AS2/quick-post.php', 'Stored in: G:\\xampp\\tmp\\php8344.tmp', '2014-06-04 23:09:57'),
(139, '::1', '/AS2/quick-post.php', 'Upload: 64550.original-8409.jpg', '2014-06-04 23:12:00'),
(140, '::1', '/AS2/quick-post.php', 'Type: image/jpeg', '2014-06-04 23:12:02'),
(141, '::1', '/AS2/quick-post.php', 'Size: 53.8125', '2014-06-04 23:12:05'),
(142, '::1', '/AS2/quick-post.php', 'Stored in: G:\\xampp\\tmp\\php6459.tmp', '2014-06-04 23:12:05'),
(143, '::1', '/AS2/logout.php', 'Admin successfully logged out!', '2014-06-04 23:34:12'),
(144, '::1', '/AS2/login.php', 'Admin successfully logged in!', '2014-06-04 23:34:54'),
(145, '::1', '/AS2/logout.php', 'Admin successfully logged out!', '2014-06-04 23:35:35'),
(146, '::1', '/AS2/login.php', 'Admin successfully logged in!', '2014-06-04 23:39:13'),
(147, '::1', '/AS2/logout.php', 'Admin successfully logged out!', '2014-06-04 23:55:22'),
(148, '::1', '/AS2/login.php', 'admin successfully logged in!', '2014-06-05 00:24:43'),
(149, '::1', '/AS2/logout.php', 'Admin successfully logged out!', '2014-06-05 14:54:39'),
(150, '::1', '/AS2/login.php', 'admin successfully logged in!', '2014-06-05 14:54:50'),
(151, '::1', '/AS2/logout.php', 'Admin successfully logged out!', '2014-06-05 14:55:37'),
(152, '::1', '/AS2/login.php', 'admin successfully logged in!', '2014-06-05 14:55:40'),
(153, '::1', '/AS2/logout.php', 'Admin successfully logged out!', '2014-06-05 14:55:51'),
(154, '::1', '/AS2/login.php', 'Login failed!', '2014-06-05 14:55:57'),
(155, '::1', '/AS2/login.php', 'admin successfully logged in!', '2014-06-05 14:56:07'),
(156, '::1', '/AS2/logout.php', 'Admin successfully logged out!', '2014-06-05 17:06:38'),
(157, '::1', '/AS2/login.php', 'gabegm successfully logged in!', '2014-06-05 17:06:49'),
(158, '::1', '/AS2/article-comment.php', 'User successfully posted a comment!', '2014-06-05 17:06:57'),
(159, '::1', '/AS2/logout.php', 'Admin successfully logged out!', '2014-06-05 20:50:13'),
(160, '::1', '/AS2/login.php', 'Login failed!', '2014-06-05 21:07:11'),
(161, '::1', '/AS2/login.php', 'admin successfully logged in!', '2014-06-05 21:39:20'),
(162, '::1', '/AS2/logout.php', 'Admin successfully logged out!', '2014-06-05 21:48:11'),
(163, '::1', '/AS2/login.php', 'admin successfully logged in!', '2014-06-05 21:48:26'),
(164, '::1', '/as2/logout.php', 'Admin successfully logged out!', '2014-06-08 14:40:50'),
(165, '::1', '/as2/login.php', 'admin successfully logged in!', '2014-06-08 14:42:15'),
(166, '::1', '/as2/logout.php', 'admin successfully logged out!', '2014-06-08 17:38:00'),
(167, '::1', '/as2/login.php', 'admin successfully logged in!', '2014-06-08 17:39:03'),
(168, '::1', '/as2/logout.php', 'admin successfully logged out!', '2014-06-08 17:39:14'),
(169, '::1', '/as2/login.php', 'admin successfully logged in!', '2014-06-08 17:45:56'),
(170, '127.0.0.1', '/as2/login.php', 'admin successfully logged in!', '2014-06-13 09:37:42'),
(171, '::1', '/AS2/page-delete.php?artId=11', 'admin successfully deleted an article!', '2014-06-13 22:43:28'),
(172, '::1', '/AS2/logout.php', 'admin successfully logged out!', '2014-06-14 15:09:50'),
(173, '::1', '/AS2/login.php', 'admin successfully logged in!', '2014-06-14 20:12:52'),
(174, '::1', '/AS2/quick-post.php', 'Upload: 64550.original-8409.jpg', '2014-06-14 21:37:20'),
(175, '::1', '/AS2/quick-post.php', 'Type: image/jpeg', '2014-06-14 21:37:20'),
(176, '::1', '/AS2/quick-post.php', 'Size: 53.8125', '2014-06-14 21:37:20'),
(177, '::1', '/AS2/quick-post.php', 'Stored in: G:\\xampp\\tmp\\php7D49.tmp', '2014-06-14 21:37:20'),
(178, '::1', '/AS2/page-delete.php?artId=12', 'admin successfully deleted an article!', '2014-06-14 21:37:30'),
(179, '::1', '/AS2/quick-post.php', 'Upload: 64550.original-8409.jpg', '2014-06-15 12:13:08'),
(180, '::1', '/AS2/quick-post.php', 'Type: image/jpeg', '2014-06-15 12:13:10'),
(181, '::1', '/AS2/quick-post.php', 'Size: 53.8125', '2014-06-15 12:13:14'),
(182, '::1', '/AS2/quick-post.php', 'Stored in: G:\\xampp\\tmp\\php4FC5.tmp', '2014-06-15 12:13:14'),
(183, '::1', '/AS2/page-delete.php?artId=13', 'admin successfully deleted an article!', '2014-06-15 12:13:54'),
(184, '::1', '/AS2/quick-post.php', 'Upload: 64550.original-8409.jpg', '2014-06-15 12:16:11'),
(185, '::1', '/AS2/quick-post.php', 'Type: image/jpeg', '2014-06-15 12:16:11'),
(186, '::1', '/AS2/quick-post.php', 'Size: 53.8125', '2014-06-15 12:16:11'),
(187, '::1', '/AS2/quick-post.php', 'Stored in: G:\\xampp\\tmp\\php184C.tmp', '2014-06-15 12:16:11'),
(188, '::1', '/AS2/page-delete.php?artId=14', 'admin successfully deleted an article!', '2014-06-15 12:16:22'),
(189, '::1', '/AS2/quick-post.php', 'Upload: 64550.original-8409.jpg', '2014-06-15 12:16:56'),
(190, '::1', '/AS2/quick-post.php', 'Type: image/jpeg', '2014-06-15 12:16:56'),
(191, '::1', '/AS2/quick-post.php', 'Size: 53.8125', '2014-06-15 12:16:56'),
(192, '::1', '/AS2/quick-post.php', 'Stored in: G:\\xampp\\tmp\\phpC815.tmp', '2014-06-15 12:16:56'),
(193, '::1', '/as2/login.php', 'admin successfully logged in!', '2014-06-16 12:49:54'),
(194, '::1', '/as2/logout.php', 'admin successfully logged out!', '2014-06-16 12:50:03'),
(195, '::1', '/as2/login.php', 'admin successfully logged in!', '2014-06-16 12:51:01'),
(196, '::1', '/as2/logout.php', 'admin successfully logged out!', '2014-06-16 12:52:16'),
(197, '::1', '/as2/register.php', 'Registeration successful!', '2014-06-16 12:53:56'),
(198, '::1', '/as2/login.php', 'gabe successfully logged in!', '2014-06-16 12:54:23'),
(199, '::1', '/as2/logout.php', 'gabe successfully logged out!', '2014-06-16 12:54:35'),
(200, '::1', '/as2/login.php', 'admin successfully logged in!', '2014-06-16 12:54:39'),
(201, '::1', '/as2/login.php', 'admin successfully logged in!', '2014-06-16 12:54:45'),
(202, '::1', '/as2/logout.php', 'admin successfully logged out!', '2014-06-16 12:55:52'),
(203, '::1', '/as2/register.php', 'Registration successful!', '2014-06-16 12:56:19'),
(204, '::1', '/as2/login.php', 'admin successfully logged in!', '2014-06-16 12:56:25'),
(205, '::1', '/as2/logout.php', 'admin successfully logged out!', '2014-06-16 13:00:08'),
(206, '::1', '/as2/register.php', 'Registration unsuccessful!', '2014-06-16 13:00:59'),
(207, '::1', '/as2/login.php', 'admin successfully logged in!', '2014-06-16 13:01:43'),
(208, '::1', '/as2/logout.php', 'admin successfully logged out!', '2014-06-16 13:01:57'),
(209, '::1', '/as2/register.php', 'Registration successful!', '2014-06-16 13:33:04'),
(210, '127.0.0.1', '/as2/login.php', 'admin successfully logged in!', '2014-06-17 08:52:32'),
(211, '::1', '/as2/login.php', 'gabegm successfully logged in!', '2014-06-17 09:20:15'),
(212, '::1', '/as2/logout.php', 'gabegm successfully logged out!', '2014-06-17 09:23:50'),
(213, '127.0.0.1', '/as2/login.php', 'gabegm successfully logged in!', '2014-06-17 09:36:21'),
(214, '127.0.0.1', '/as2/login.php', 'gabegm successfully logged in!', '2014-06-19 09:57:56'),
(215, '127.0.0.1', '/as2/article-comment.php', 'User successfully posted a comment!', '2014-06-19 10:07:30'),
(216, '127.0.0.1', '/as2/logout.php', 'gabegm successfully logged out!', '2014-06-19 10:47:28'),
(217, '127.0.0.1', '/as2/register.php', 'Registration successful!', '2014-06-19 10:52:26'),
(218, '127.0.0.1', '/as2/login.php', 'gabetest successfully logged in!', '2014-06-19 10:52:34'),
(219, '127.0.0.1', '/as2/logout.php', 'gabetest successfully logged out!', '2014-06-19 10:59:05'),
(220, '127.0.0.1', '/as2/login.php', 'admin successfully logged in!', '2014-06-19 11:07:51'),
(221, '::1', '/as2/login.php', 'admin successfully logged in!', '2014-06-19 17:28:08'),
(222, '::1', '/as2/quick-post.php', 'Upload: gtavgrass.jpg', '2014-06-19 17:28:42'),
(223, '::1', '/as2/quick-post.php', 'Type: image/jpeg', '2014-06-19 17:28:42'),
(224, '::1', '/as2/quick-post.php', 'Size: 463.04296875', '2014-06-19 17:28:42'),
(225, '::1', '/as2/quick-post.php', 'Stored in: G:\\xampp\\tmp\\phpF0E9.tmp', '2014-06-19 17:28:42'),
(226, '::1', '/as2/page-update.php', 'Upload: gtavgrass.jpg', '2014-06-19 17:29:31'),
(227, '::1', '/as2/page-update.php', 'Type: image/jpeg', '2014-06-19 17:29:33'),
(228, '::1', '/as2/page-update.php', 'Size: 463.04296875', '2014-06-19 17:29:34'),
(229, '::1', '/as2/page-update.php', 'Stored in: G:\\xampp\\tmp\\phpB0FE.tmp', '2014-06-19 17:29:35'),
(230, '::1', '/as2/page-update.php', 'Upload: gtavgrass.jpg', '2014-06-19 17:47:21'),
(231, '::1', '/as2/page-update.php', 'Type: image/jpeg', '2014-06-19 17:47:23'),
(232, '::1', '/as2/page-update.php', 'Size: 463.04296875', '2014-06-19 17:47:23'),
(233, '::1', '/as2/page-update.php', 'Stored in: G:\\xampp\\tmp\\php142F.tmp', '2014-06-19 17:47:23'),
(234, '::1', '/as2/page-update.php', 'Upload: gtavgrass.jpg', '2014-06-19 17:47:56'),
(235, '::1', '/as2/page-update.php', 'Type: image/jpeg', '2014-06-19 17:47:56'),
(236, '::1', '/as2/page-update.php', 'Size: 463.04296875', '2014-06-19 17:47:56'),
(237, '::1', '/as2/page-update.php', 'Stored in: G:\\xampp\\tmp\\php8EBF.tmp', '2014-06-19 17:47:56'),
(238, '::1', '/as2/page-update.php', 'Upload: gtavgrass.jpg', '2014-06-19 17:52:29'),
(239, '::1', '/as2/page-update.php', 'Type: image/jpeg', '2014-06-19 17:52:31'),
(240, '::1', '/as2/page-update.php', 'Size: 463.04296875', '2014-06-19 17:52:31'),
(241, '::1', '/as2/page-update.php', 'Stored in: G:\\xampp\\tmp\\phpC86B.tmp', '2014-06-19 17:52:31'),
(242, '::1', '/as2/page-update.php', 'Upload: gtavgrass.jpg', '2014-06-19 21:36:28'),
(243, '::1', '/as2/page-update.php', 'Type: image/jpeg', '2014-06-19 21:36:28'),
(244, '::1', '/as2/page-update.php', 'Size: 463.04296875', '2014-06-19 21:36:28'),
(245, '::1', '/as2/page-update.php', 'Stored in: G:\\xampp\\tmp\\phpD8A3.tmp', '2014-06-19 21:36:28'),
(246, '::1', '/as2/page-update.php', 'Upload: gtavgrass.jpg', '2014-06-19 21:38:47'),
(247, '::1', '/as2/page-update.php', 'Type: image/jpeg', '2014-06-19 21:38:49'),
(248, '::1', '/as2/page-update.php', 'Size: 463.04296875', '2014-06-19 21:38:49'),
(249, '::1', '/as2/page-update.php', 'Stored in: G:\\xampp\\tmp\\phpF74E.tmp', '2014-06-19 21:38:49'),
(250, '::1', '/as2/page-update.php', 'Upload: gtavgrass.jpg', '2014-06-19 21:39:50'),
(251, '::1', '/as2/page-update.php', 'Type: image/jpeg', '2014-06-19 21:39:52'),
(252, '::1', '/as2/page-update.php', 'Size: 463.04296875', '2014-06-19 21:39:55'),
(253, '::1', '/as2/page-update.php', 'Stored in: G:\\xampp\\tmp\\phpDD88.tmp', '2014-06-19 21:39:55'),
(254, '::1', '/as2/page-update.php', 'Upload: gtavgrass.jpg', '2014-06-19 21:40:31'),
(255, '::1', '/as2/page-update.php', 'Type: image/jpeg', '2014-06-19 21:40:31'),
(256, '::1', '/as2/page-update.php', 'Size: 463.04296875', '2014-06-19 21:40:31'),
(257, '::1', '/as2/page-update.php', 'Stored in: G:\\xampp\\tmp\\php836E.tmp', '2014-06-19 21:40:31'),
(258, '::1', '/as2/page-update.php', 'Upload: gtavgrass.jpg', '2014-06-19 21:41:08'),
(259, '::1', '/as2/page-update.php', 'Type: image/jpeg', '2014-06-19 21:41:09'),
(260, '::1', '/as2/page-update.php', 'Size: 463.04296875', '2014-06-19 21:41:13'),
(261, '::1', '/as2/page-update.php', 'Stored in: G:\\xampp\\tmp\\php1BB7.tmp', '2014-06-19 21:41:13'),
(262, '::1', '/as2/page-delete.php?artId=16', 'admin successfully deleted an article!', '2014-06-19 21:52:01'),
(263, '::1', '/as2/page-update.php', 'Upload: fiat_punto_3rd_f_hatchback3d-2385.jpg', '2014-06-19 21:52:30'),
(264, '::1', '/as2/page-update.php', 'Type: image/jpeg', '2014-06-19 21:52:31'),
(265, '::1', '/as2/page-update.php', 'Size: 1958.7978515625', '2014-06-19 21:52:35'),
(266, '::1', '/as2/page-update.php', 'Stored in: G:\\xampp\\tmp\\php7477.tmp', '2014-06-19 21:52:35'),
(267, '::1', '/as2/page-update.php', 'Upload: gtavgrass.jpg', '2014-06-19 21:56:20'),
(268, '::1', '/as2/page-update.php', 'Type: image/jpeg', '2014-06-19 21:56:22'),
(269, '::1', '/as2/page-update.php', 'Size: 463.04296875', '2014-06-19 21:56:25'),
(270, '::1', '/as2/page-update.php', 'Stored in: G:\\xampp\\tmp\\php6F5.tmp', '2014-06-19 21:56:25'),
(271, '::1', '/as2/page-update.php', 'Upload: gtavgrass.jpg', '2014-06-19 22:04:40'),
(272, '::1', '/as2/page-update.php', 'Type: image/jpeg', '2014-06-19 22:04:42'),
(273, '::1', '/as2/page-update.php', 'Size: 463.04296875', '2014-06-19 22:04:45'),
(274, '::1', '/as2/page-update.php', 'Stored in: G:\\xampp\\tmp\\phpA121.tmp', '2014-06-19 22:04:45'),
(275, '::1', '/as2/page-update.php', 'Upload: gtavgrass.jpg', '2014-06-19 22:06:40'),
(276, '::1', '/as2/page-update.php', 'Type: image/jpeg', '2014-06-19 22:06:42'),
(277, '::1', '/as2/page-update.php', 'Size: 463.04296875', '2014-06-19 22:06:46'),
(278, '::1', '/as2/page-update.php', 'Stored in: G:\\xampp\\tmp\\php77A7.tmp', '2014-06-19 22:06:46'),
(279, '::1', '/as2/page-update.php', 'Upload: gtavgrass.jpg', '2014-06-19 22:07:41'),
(280, '::1', '/as2/page-update.php', 'Type: image/jpeg', '2014-06-19 22:07:43'),
(281, '::1', '/as2/page-update.php', 'Size: 463.04296875', '2014-06-19 22:07:47'),
(282, '::1', '/as2/page-update.php', 'Stored in: G:\\xampp\\tmp\\php662E.tmp', '2014-06-19 22:07:47'),
(283, '::1', '/as2/page-update.php', 'Upload: gtavgrass.jpg', '2014-06-19 22:08:45'),
(284, '::1', '/as2/page-update.php', 'Type: image/jpeg', '2014-06-19 22:08:46'),
(285, '::1', '/as2/page-update.php', 'Size: 463.04296875', '2014-06-19 22:08:50'),
(286, '::1', '/as2/page-update.php', 'Stored in: G:\\xampp\\tmp\\php6417.tmp', '2014-06-19 22:08:50'),
(287, '::1', '/as2/page-update.php', 'Upload: gtavgrass.jpg', '2014-06-19 22:12:23'),
(288, '::1', '/as2/page-update.php', 'Type: image/jpeg', '2014-06-19 22:12:25'),
(289, '::1', '/as2/page-update.php', 'Size: 463.04296875', '2014-06-19 22:12:29'),
(290, '::1', '/as2/page-update.php', 'Stored in: G:\\xampp\\tmp\\phpB353.tmp', '2014-06-19 22:12:29'),
(291, '::1', '/as2/page-update.php?artId=15', 'Upload: gtavgrass.jpg', '2014-06-19 22:15:20'),
(292, '::1', '/as2/page-update.php?artId=15', 'Type: image/jpeg', '2014-06-19 22:15:21'),
(293, '::1', '/as2/page-update.php?artId=15', 'Size: 463.04296875', '2014-06-19 22:15:25'),
(294, '::1', '/as2/page-update.php?artId=15', 'Stored in: G:\\xampp\\tmp\\php5CD9.tmp', '2014-06-19 22:15:25'),
(295, '::1', '/as2/logout.php', 'admin successfully logged out!', '2014-06-19 23:22:02'),
(296, '::1', '/as2/login.php', 'admin successfully logged in!', '2014-06-19 23:23:12'),
(297, '::1', '/as2/logout.php', 'admin successfully logged out!', '2014-06-19 23:23:15'),
(298, '::1', '/as2/login.php', 'admin successfully logged in!', '2014-06-19 23:28:14'),
(299, '::1', '/as2/logout.php', 'admin successfully logged out!', '2014-06-19 23:28:32'),
(300, '::1', '/as2/login.php', 'admin successfully logged in!', '2014-06-19 23:37:16'),
(301, '::1', '/as2/article-comment.php', 'User successfully posted a comment!', '2014-06-19 23:40:58'),
(302, '::1', '/as2/article-comment.php?artId=15', 'User successfully posted a comment!', '2014-06-19 23:42:26'),
(303, '::1', '/as2/article-comment.php?artId=15', 'User successfully posted a comment!', '2014-06-19 23:44:31'),
(304, '::1', '/as2/article-comment.php?artId=15', 'User successfully posted a comment!', '2014-06-19 23:49:00'),
(305, '::1', '/as2/article-comment.php?artId=15', 'User successfully posted a comment!', '2014-06-19 23:49:45'),
(306, '::1', '/as2/article-comment.php?artId=15', 'User successfully posted a comment!', '2014-06-19 23:50:02'),
(307, '::1', '/as2/article-comment.php?artId=%3Cbr%20/%3E%3Cb%3ENotice%3C/b%3E:%20%20Undefined%20variable:%20artic', 'User successfully posted a comment!', '2014-06-19 23:50:38'),
(308, '::1', '/as2/article-comment.php?artId=%3Cbr%20/%3E%3Cb%3ENotice%3C/b%3E:%20%20Undefined%20variable:%20artic', 'User successfully posted a comment!', '2014-06-19 23:51:01'),
(309, '::1', '/as2/article-comment-main.php?artId=15', 'User successfully posted a comment!', '2014-06-19 23:53:53'),
(310, '::1', '/as2/article-comment.php?artId=%3Cbr%20/%3E%3Cb%3ENotice%3C/b%3E:%20%20Undefined%20variable:%20artic', 'User successfully posted a comment!', '2014-06-19 23:54:09'),
(311, '::1', '/as2/page-delete.php?artId=15', 'admin successfully deleted an article!', '2014-06-19 23:57:33'),
(312, '::1', '/as2/article-comment-main.php?artId=2', 'User successfully posted a comment!', '2014-06-20 00:02:19'),
(313, '::1', '/as2/article-comment-main.php?artId=1', 'User successfully posted a comment!', '2014-06-20 07:13:03'),
(314, '::1', '/as2/article-comment-main.php?artId=2', 'User successfully posted a comment!', '2014-06-20 07:13:11'),
(315, '::1', '/as2/article-comment-main.php?artId=3', 'User successfully posted a comment!', '2014-06-20 07:13:25');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE IF NOT EXISTS `tbl_users` (
  `userId` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` varchar(100) NOT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`userId`, `username`, `email`, `password`, `role`) VALUES
(1, 'admin', '', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'admin'),
(4, 'gabegm', 'gabriel@gaucimaistre.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'registered'),
(5, 'gabe', 'gabriel@gaucimaistre.com', '7c222fb2927d828af22f592134e8932480637c0d', 'registered'),
(6, 'jocelyn', 'jocelyndaja@gmail.com', '7c222fb2927d828af22f592134e8932480637c0d', 'registered'),
(7, 'test', 'admin@admin.com', '7c222fb2927d828af22f592134e8932480637c0d', 'registered'),
(8, 'gabetest', 'test@test.com', '7c222fb2927d828af22f592134e8932480637c0d', 'registered');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
