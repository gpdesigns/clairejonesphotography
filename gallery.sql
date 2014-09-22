
-- phpMyAdmin SQL Dump
-- version 2.11.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 22, 2014 at 02:27 PM
-- Server version: 5.1.57
-- PHP Version: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `a1995269_gallery`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` VALUES('a3b2ff089b7b27986a3ae546082c256c', '50.152.84.120', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_4) AppleWebKit/537.77.4 (KHTML, like Gecko) Version/1.0 Safari/1', 1405060483, '');
INSERT INTO `ci_sessions` VALUES('2f81c8366398da84c92ce0bb201217c2', '50.152.84.120', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.74.9 (KHTML, like Gecko) Version/1.0 Safari/1', 1394062881, '');
INSERT INTO `ci_sessions` VALUES('19053cb8940e99bf325b73526ed63b10', '174.49.188.82', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_1) AppleWebKit/537.73.11 (KHTML, like Gecko) Version/1.0 Safari/1', 1387347149, '');
INSERT INTO `ci_sessions` VALUES('d5fd007266fe0faab673df9140265942', '96.252.139.128', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7; rv:25.0) Gecko/20100101 Firefox/25.0', 1386518810, '');
INSERT INTO `ci_sessions` VALUES('acbd43612564c90ca234723f6a34b9e1', '74.129.27.40', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8; rv:25.0) Gecko/20100101 Firefox/25.0', 1385614543, '');
INSERT INTO `ci_sessions` VALUES('779b12efb75fd78fe27b97032a743645', '37.157.144.44', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/30.0.1599.66 Safari/537.36', 1385385430, '');
INSERT INTO `ci_sessions` VALUES('59577662e10d4642bff74fc78a97d2f3', '96.252.139.128', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7; rv:25.0) Gecko/20100101 Firefox/25.0', 1385329362, '');
INSERT INTO `ci_sessions` VALUES('dcf4275b211cd8941f5ff6308cea1a92', '96.252.139.128', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7; rv:25.0) Gecko/20100101 Firefox/25.0', 1385315227, 'a:1:{s:9:"logged_in";a:2:{s:2:"id";s:3:"135";s:8:"username";s:5:"admin";}}');
INSERT INTO `ci_sessions` VALUES('d9c90d4082843843f16afad94094511f', '71.122.43.240', 'Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.2; Trident/6.0; Xbox; Xbox One)', 1385174011, 'a:1:{s:9:"user_data";s:0:"";}');
INSERT INTO `ci_sessions` VALUES('6d8348707fae73c5fd648d11228c4842', '96.252.139.128', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_0_4 like Mac OS X) AppleWebKit/537.51.1 (KHTML, like Gecko) Version/7.0 Mobile/11B5', 1385223288, '');
INSERT INTO `ci_sessions` VALUES('44f92415af12c1f77eeaf8570f4301b7', '96.243.232.21', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7; rv:30.0) Gecko/20100101 Firefox/30.0', 1405851100, '');
INSERT INTO `ci_sessions` VALUES('92ad99e7d363b20edea16b48b7a4d804', '96.243.232.21', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/534.57.7 (KHTML, like Gecko) Paparazzi!/0.6.6 (like Safari)', 1405851165, '');
INSERT INTO `ci_sessions` VALUES('cb2be92ead02ef026c21cffb0ec64e4e', '96.243.232.21', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/534.57.7 (KHTML, like Gecko) Paparazzi!/0.6.6 (like Safari)', 1405851165, '');
INSERT INTO `ci_sessions` VALUES('165e365433612d4d55d57d71e7ac782c', '71.180.36.28', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7; rv:32.0) Gecko/20100101 Firefox/32.0', 1410881845, '');

-- --------------------------------------------------------

--
-- Table structure for table `gallery_name`
--

CREATE TABLE `gallery_name` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `gallery_name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `gallery_name`
--

INSERT INTO `gallery_name` VALUES(1, 'nature');
INSERT INTO `gallery_name` VALUES(2, 'wildlife');
INSERT INTO `gallery_name` VALUES(4, 'portraits');
INSERT INTO `gallery_name` VALUES(5, 'landscape');
INSERT INTO `gallery_name` VALUES(3, 'wedding');

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `thumb_url` varchar(200) NOT NULL DEFAULT '',
  `photo_url` varchar(200) NOT NULL DEFAULT '',
  `gallery_name` varchar(200) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=89 ;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` VALUES(1, '/clairejonesphotography/files/gallery_thumbs/nature/nature1_sm.jpg', '/clairejonesphotography/files/gallery_photos/nature/nature1.jpg', 'nature', 'Orange Balloon Flower', 'Orange Flower capture 2012');
INSERT INTO `photos` VALUES(2, '/clairejonesphotography/files/gallery_thumbs/nature/nature2_sm.jpg', '/clairejonesphotography/files/gallery_photos/nature/nature2.jpg', 'nature', 'Red Dandilions', 'Red Dandillion 2012');
INSERT INTO `photos` VALUES(3, '/clairejonesphotography/files/gallery_thumbs/nature/nature3_sm.jpg', '/clairejonesphotography/files/gallery_photos/nature/nature3.jpg', 'nature', 'Sunflower', 'Sunflower in the field that caught my eye');
INSERT INTO `photos` VALUES(4, '/clairejonesphotography/files/gallery_thumbs/nature/nature4_sm.jpg', '/clairejonesphotography/files/gallery_photos/nature/nature4.jpg', 'nature', 'Lilacs in the field', 'Lilacs, Purple Beauty');
INSERT INTO `photos` VALUES(5, '/clairejonesphotography/files/gallery_thumbs/nature/nature5_sm.jpg', '/clairejonesphotography/files/gallery_photos/nature/nature5.jpg', 'nature', 'A Sleepy Hollow', 'Makes me sleepy when looking into the hollow');
INSERT INTO `photos` VALUES(6, '/clairejonesphotography/files/gallery_thumbs/nature/nature6_sm.jpg', '/clairejonesphotography/files/gallery_photos/nature/nature6.jpg', 'nature', 'Sunshine through the trees', 'Shining right into your and my life');
INSERT INTO `photos` VALUES(7, '/clairejonesphotography/files/gallery_thumbs/nature/nature7_sm.jpg', '/clairejonesphotography/files/gallery_photos/nature/nature7.jpg', 'nature', 'Boquet in the wind', 'Wind blowing the boquet all about');
INSERT INTO `photos` VALUES(8, '/clairejonesphotography/files/gallery_thumbs/nature/nature8_sm.jpg', '/clairejonesphotography/files/gallery_photos/nature/nature8.jpg', 'nature', 'Lily', 'Lilly 2009');
INSERT INTO `photos` VALUES(44, '/clairejonesphotography/files/gallery_thumbs/nature/nature8_sm.jpg', '/clairejonesphotography/files/gallery_photos/nature/nature9.jpg', 'nature', 'Cherry on the top', 'Cherry picking in the fall');
INSERT INTO `photos` VALUES(45, '/clairejonesphotography/files/gallery_thumbs/wildlife/wildlife1_sm.jpg', '/clairejonesphotography/files/gallery_photos/wild/wildlife1.jpg', 'wildlife', 'Cats Eyes', 'Beautiful and mysterious creatures');
INSERT INTO `photos` VALUES(46, '/clairejonesphotography/files/gallery_thumbs/wildlife/wildlife2_sm.jpg', '/clairejonesphotography/files/gallery_photos/wild/wildlife2.jpg', 'wildlife', 'Dog', 'Mans best friend');
INSERT INTO `photos` VALUES(47, '/clairejonesphotography/files/gallery_thumbs/wildlife/wildlife3_sm.jpg', '/clairejonesphotography/files/gallery_photos/wild/wildlife3.jpg', 'wildlife', 'Dragon Fly', 'Amazing capture from my walk with chester');
INSERT INTO `photos` VALUES(48, '/clairejonesphotography/files/gallery_thumbs/wildlife/wildlife4_sm.jpg', '/clairejonesphotography/files/gallery_photos/wild/wildlife4.jpg', 'wildlife', 'Turtle', 'From the zoo a turtle I couldn''t resist');
INSERT INTO `photos` VALUES(49, '/clairejonesphotography/files/gallery_thumbs/wildlife/wildlife5_sm.jpg', '/clairejonesphotography/files/gallery_photos/wild/wildlife5.jpg', 'wildlife', 'Snapper', 'Watch it when he''s hungry!');
INSERT INTO `photos` VALUES(50, '/clairejonesphotography/files/gallery_thumbs/wildlife/wildlife6_sm.jpg', '/clairejonesphotography/files/gallery_photos/wild/wildlife6.jpg', 'wildlife', 'Cardinal', 'First cardinal of the season');
INSERT INTO `photos` VALUES(51, '/clairejonesphotography/files/gallery_thumbs/wildlife/wildlife7_sm.jpg', '/clairejonesphotography/files/gallery_photos/wild/wildlife7.jpg', 'wildlife', 'Duck', 'From the park where the ducks flock from all the children feeding them');
INSERT INTO `photos` VALUES(52, '/clairejonesphotography/files/gallery_thumbs/wildlife/wildlife8_sm.jpg', '/clairejonesphotography/files/gallery_photos/wild/wildlife8.jpg', 'wildlife', 'Bambi', 'Bambi looking scared and into a whole new world');
INSERT INTO `photos` VALUES(53, '/clairejonesphotography/files/gallery_thumbs/wildlife/wildlife9_sm.jpg', '/clairejonesphotography/files/gallery_photos/wild/wildlife9.jpg', 'wildlife', 'Tiger', 'Majestic, Powerful and Awesome');
INSERT INTO `photos` VALUES(54, '/clairejonesphotography/files/gallery_thumbs/wildlife/wildlife1_sm.jpg', '/clairejonesphotography/files/gallery_photos/wild/wildlife1.jpg', 'wildlife', 'Cats Eyes', 'Beautiful and mysterious creatures');
INSERT INTO `photos` VALUES(55, '/clairejonesphotography/files/gallery_thumbs/wildlife/wildlife1_sm.jpg', '/clairejonesphotography/files/gallery_photos/wild/wildlife1.jpg', 'wildlife', 'Cats Eyes', 'Beautiful and mysterious creatures');
INSERT INTO `photos` VALUES(56, '/clairejonesphotography/files/gallery_thumbs/nature/nature8_sm.jpg', '/clairejonesphotography/files/gallery_photos/nature/nature8.jpg', 'nature', 'Lily', 'Lilly 2009');
INSERT INTO `photos` VALUES(57, '/clairejonesphotography/files/gallery_thumbs/wildlife/wildlife1_sm.jpg', '/clairejonesphotography/files/gallery_photos/wild/wildlife1.jpg', 'wildlife', 'Cats Eyes', 'Beautiful and mysterious creatures');
INSERT INTO `photos` VALUES(58, '/clairejonesphotography/files/gallery_thumbs/nature/nature8_sm.jpg', '/clairejonesphotography/files/gallery_photos/nature/nature8.jpg', 'nature', 'Lily', 'Lilly 2009');
INSERT INTO `photos` VALUES(59, '/clairejonesphotography/files/gallery_thumbs/wedding/wedding1_sm.jpg', '/clairejonesphotography/files/gallery_photos/wedding/wedding1.jpg', 'wedding', 'Wedding', 'Jill and Bob''s Wedding cake');
INSERT INTO `photos` VALUES(60, '/clairejonesphotography/files/gallery_thumbs/wedding/wedding2_sm.jpg', '/clairejonesphotography/files/gallery_photos/wedding/wedding2.jpg', 'wedding', 'WEdding', 'Please hand the rings over');
INSERT INTO `photos` VALUES(61, '/clairejonesphotography/files/gallery_thumbs/wedding/wedding3_sm.jpg', '/clairejonesphotography/files/gallery_photos/wedding/wedding3.jpg', 'wedding', 'Wedding', 'Beautiful Roses for the bride to be');
INSERT INTO `photos` VALUES(62, '/clairejonesphotography/files/gallery_thumbs/wedding/wedding4_sm.jpg', '/clairejonesphotography/files/gallery_photos/wedding/wedding4.jpg', 'wedding', 'Wedding', 'Kelly and Greg slicing their cake');
INSERT INTO `photos` VALUES(63, '/clairejonesphotography/files/gallery_thumbs/wedding/wedding5_sm.jpg', '/clairejonesphotography/files/gallery_photos/wedding/wedding5.jpg', 'wedding', 'Wedding', 'Beautiful buquet from Sarah''s wedding');
INSERT INTO `photos` VALUES(64, '/clairejonesphotography/files/gallery_thumbs/wedding/wedding6_sm.jpg', '/clairejonesphotography/files/gallery_photos/wedding/wedding6.jpg', 'wedding', 'Wedding', 'John and Carol exiting the church');
INSERT INTO `photos` VALUES(65, '/clairejonesphotography/files/gallery_thumbs/wedding/wedding7_sm.jpg', '/clairejonesphotography/files/gallery_photos/wedding/wedding7.jpg', 'wedding', 'Wedding', 'In France a beautiful setting for this special occasion');
INSERT INTO `photos` VALUES(66, '/clairejonesphotography/files/gallery_thumbs/wedding/wedding8_sm.jpg', '/clairejonesphotography/files/gallery_photos/wedding/wedding8.jpg', 'wedding', 'Wedding', 'I caught this beautiful shot right before the toast');
INSERT INTO `photos` VALUES(67, '/clairejonesphotography/files/gallery_thumbs/wedding/wedding9_sm.jpg', '/clairejonesphotography/files/gallery_photos/wedding/wedding9.jpg', 'wedding', 'Wedding', 'Fun loving Debby in a field after getting hitched');
INSERT INTO `photos` VALUES(68, '/clairejonesphotography/files/gallery_thumbs/portraits/portrait1_sm.jpg', '/clairejonesphotography/files/gallery_photos/portrait/portrait1.jpg', 'portrait', 'Portrait', 'Shelly looking too cute in the park');
INSERT INTO `photos` VALUES(69, '/clairejonesphotography/files/gallery_thumbs/portraits/portrait2_sm.jpg', '/clairejonesphotography/files/gallery_photos/portrait/portrait2.jpg', 'portrait', 'Portrait', 'While on vacation in Pakistan, their looks priceless');
INSERT INTO `photos` VALUES(70, '/clairejonesphotography/files/gallery_thumbs/portraits/portrait3_sm.jpg', '/clairejonesphotography/files/gallery_photos/portrait/portrait3.jpg', 'portrait', 'Portrait', 'Another shot in Pakistan, a village girl that wanted her photo taken');
INSERT INTO `photos` VALUES(71, '/clairejonesphotography/files/gallery_thumbs/portraits/portrait4_sm.jpg', '/clairejonesphotography/files/gallery_photos/portrait/portrait4.jpg', 'portrait', 'Portrait', 'Senior Prom is a special time');
INSERT INTO `photos` VALUES(72, '/clairejonesphotography/files/gallery_thumbs/portraits/portrait5_sm.jpg', '/clairejonesphotography/files/gallery_photos/portrait/portrait5.jpg', 'portrait', 'Portrait', 'Brian sitting and pondering life as it goes by his window');
INSERT INTO `photos` VALUES(73, '/clairejonesphotography/files/gallery_thumbs/portraits/portrait6_sm.jpg', '/clairejonesphotography/files/gallery_photos/portrait/portrait6.jpg', 'portrait', 'Portrait', 'A child in the village');
INSERT INTO `photos` VALUES(74, '/clairejonesphotography/files/gallery_thumbs/portraits/portrait7_sm.jpg', '/clairejonesphotography/files/gallery_photos/portrait/portrait7.jpg', 'portrait', 'Portrait', 'A self of me taking a picture in Time Square');
INSERT INTO `photos` VALUES(75, '/clairejonesphotography/files/gallery_thumbs/portraits/portrait8_sm.jpg', '/clairejonesphotography/files/gallery_photos/portrait/portrait8.jpg', 'portrait', 'Portrait', 'Don''t be shy I''m not going to bite');
INSERT INTO `photos` VALUES(76, '/clairejonesphotography/files/gallery_thumbs/portraits/portrait9_sm.jpg', '/clairejonesphotography/files/gallery_photos/portrait/portrait9.jpg', 'portrait', 'Portrait', 'Jerry on his photoshoot to the beach');
INSERT INTO `photos` VALUES(77, '/clairejonesphotography/files/gallery_thumbs/landscape/landscape1_sm.jpg', '/clairejonesphotography/files/gallery_photos/landscape/landscape1.jpg', 'landscape', 'Grand View', 'Shot from the plane on my way home from vacation in Europe');
INSERT INTO `photos` VALUES(78, '/clairejonesphotography/files/gallery_thumbs/landscape/landscape2_sm.jpg', '/clairejonesphotography/files/gallery_photos/landscape/landscape2.jpg', 'landscape', 'Grand View', 'From the resort in Greece, Hello Morning Waters!');
INSERT INTO `photos` VALUES(79, '/clairejonesphotography/files/gallery_thumbs/landscape/landscape3_sm.jpg', '/clairejonesphotography/files/gallery_photos/landscape/landscape3.jpg', 'landscape', 'Grand View', 'The sun has gone down in greece');
INSERT INTO `photos` VALUES(80, '/clairejonesphotography/files/gallery_thumbs/landscape/landscape4_sm.jpg', '/clairejonesphotography/files/gallery_photos/landscape/landscape4.jpg', 'landscape', 'Grand View', 'Great sky captured in Nevada');
INSERT INTO `photos` VALUES(81, '/clairejonesphotography/files/gallery_thumbs/landscape/landscape5_sm.jpg', '/clairejonesphotography/files/gallery_photos/landscape/landscape5.jpg', 'landscape', 'Grand View', 'In Rome the ancient building are spectacular');
INSERT INTO `photos` VALUES(82, '/clairejonesphotography/files/gallery_thumbs/landscape/landscape6_sm.jpg', '/clairejonesphotography/files/gallery_photos/landscape/landscape6.jpg', 'landscape', 'Grand View', 'Red Rocks in Nevada');
INSERT INTO `photos` VALUES(83, '/clairejonesphotography/files/gallery_thumbs/landscape/landscape7_sm.jpg', '/clairejonesphotography/files/gallery_photos/landscape/landscape7.jpg', 'landscape', 'Grand View', 'A helicopter ride for the ages');
INSERT INTO `photos` VALUES(84, '/clairejonesphotography/files/gallery_thumbs/landscape/landscape8_sm.jpg', '/clairejonesphotography/files/gallery_photos/landscape/landscape8.jpg', 'landscape', 'Grand View', 'Misty morning hop ');
INSERT INTO `photos` VALUES(85, '/clairejonesphotography/files/gallery_thumbs/landscape/landscape9_sm.jpg', '/clairejonesphotography/files/gallery_photos/landscape/landscape9.jpg', 'landscape', 'Grand View', 'Cactus in the desert');
INSERT INTO `photos` VALUES(86, '', '', 'ddd', '', '');
INSERT INTO `photos` VALUES(87, '', '', 'Lifestyle', '', '');
INSERT INTO `photos` VALUES(88, '', '', 'Lifestyle', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `thumbnails`
--

CREATE TABLE `thumbnails` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `thumb_url` varchar(200) NOT NULL DEFAULT '',
  `photo_url` varchar(200) NOT NULL DEFAULT '',
  `category` varchar(200) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=139 ;

--
-- Dumping data for table `thumbnails`
--

INSERT INTO `thumbnails` VALUES(2, '/clairejonesphotography/files/gallery_thumbs/nature/nature2_sm.jpg', '/clairejonesphotography/files/gallery_photos/nature/nature2.jpg', '1', 'Red Dandilions', 'Red Dandillion 2012');
INSERT INTO `thumbnails` VALUES(3, '/clairejonesphotography/files/gallery_thumbs/nature/nature3_sm.jpg', '/clairejonesphotography/files/gallery_photos/nature/nature3.jpg', '1', 'Sunflower', 'Sunflower in the field that caught my eye');
INSERT INTO `thumbnails` VALUES(4, '/clairejonesphotography/files/gallery_thumbs/nature/nature4_sm.jpg', '/clairejonesphotography/files/gallery_photos/nature/nature4.jpg', '1', 'Lilacs in the field', 'Lilacs, Purple Beauty');
INSERT INTO `thumbnails` VALUES(5, '/clairejonesphotography/files/gallery_thumbs/nature/nature5_sm.jpg', '/clairejonesphotography/files/gallery_photos/nature/nature5.jpg', '1', 'A Sleepy Hollow', 'Makes me sleepy when looking into the hollow');
INSERT INTO `thumbnails` VALUES(6, '/clairejonesphotography/files/gallery_thumbs/nature/nature6_sm.jpg', '/clairejonesphotography/files/gallery_photos/nature/nature6.jpg', '1', 'Sunshine through the trees', 'Shining right into your and my life');
INSERT INTO `thumbnails` VALUES(7, '/clairejonesphotography/files/gallery_thumbs/nature/nature7_sm.jpg', '/clairejonesphotography/files/gallery_photos/nature/nature7.jpg', '1', 'Boquet in the wind', 'Wind blowing the boquet all about');
INSERT INTO `thumbnails` VALUES(8, '/clairejonesphotography/files/gallery_thumbs/nature/nature8_sm.jpg', '/clairejonesphotography/files/gallery_photos/nature/nature8.jpg', '1', 'Lily', 'Lilly 2009');
INSERT INTO `thumbnails` VALUES(44, '/clairejonesphotography/files/gallery_thumbs/nature/nature9_sm.jpg', '/clairejonesphotography/files/gallery_photos/nature/nature9.jpg', '1', 'Cherry on the top', 'Cherry picking in the fall');
INSERT INTO `thumbnails` VALUES(45, '/clairejonesphotography/files/gallery_thumbs/wildlife/wildlife1_sm.jpg', '/clairejonesphotography/files/gallery_photos/wildlife/wildlife1.jpg', '2', 'Cats Eyes', 'Beautiful and mysterious creatures');
INSERT INTO `thumbnails` VALUES(46, '/clairejonesphotography/files/gallery_thumbs/wildlife/wildlife2_sm.jpg', '/clairejonesphotography/files/gallery_photos/wildlife/wildlife2.jpg', '2', 'Dog', 'Mans best friend');
INSERT INTO `thumbnails` VALUES(47, '/clairejonesphotography/files/gallery_thumbs/wildlife/wildlife3_sm.jpg', '/clairejonesphotography/files/gallery_photos/wildlife/wildlife3.jpg', '2', 'Dragon Fly', 'Amazing capture from my walk with chester');
INSERT INTO `thumbnails` VALUES(48, '/clairejonesphotography/files/gallery_thumbs/wildlife/wildlife4_sm.jpg', '/clairejonesphotography/files/gallery_photos/wildlife/wildlife4.jpg', '2', 'Turtle', 'From the zoo a turtle I couldn''t resist');
INSERT INTO `thumbnails` VALUES(49, '/clairejonesphotography/files/gallery_thumbs/wildlife/wildlife5_sm.jpg', '/clairejonesphotography/files/gallery_photos/wildlife/wildlife5.jpg', '2', 'Snapper', 'Watch it when he''s hungry!');
INSERT INTO `thumbnails` VALUES(50, '/clairejonesphotography/files/gallery_thumbs/wildlife/wildlife6_sm.jpg', '/clairejonesphotography/files/gallery_photos/wildlife/wildlife6.jpg', '2', 'Cardinal', 'First cardinal of the season');
INSERT INTO `thumbnails` VALUES(51, '/clairejonesphotography/files/gallery_thumbs/wildlife/wildlife7_sm.jpg', '/clairejonesphotography/files/gallery_photos/wildlife/wildlife7.jpg', '2', 'Duck', 'From the park where the ducks flock from all the children feeding them');
INSERT INTO `thumbnails` VALUES(52, '/clairejonesphotography/files/gallery_thumbs/wildlife/wildlife8_sm.jpg', '/clairejonesphotography/files/gallery_photos/wildlife/wildlife8.jpg', '2', 'Bambi', 'Bambi looking scared and into a whole new world');
INSERT INTO `thumbnails` VALUES(53, '/clairejonesphotography/files/gallery_thumbs/wildlife/wildlife9_sm.jpg', '/clairejonesphotography/files/gallery_photos/wildlife/wildlife9.jpg', '2', 'Tiger', 'Majestic, Powerful and Awesome');
INSERT INTO `thumbnails` VALUES(54, '/clairejonesphotography/files/gallery_thumbs/wildlife/wildlife1_sm.jpg', '/clairejonesphotography/files/gallery_photos/wildlife/wildlife1.jpg', '2', 'Cats Eyes', 'Beautiful and mysterious creatures');
INSERT INTO `thumbnails` VALUES(55, '/clairejonesphotography/files/gallery_thumbs/wildlife/wildlife1_sm.jpg', '/clairejonesphotography/files/gallery_photos/wildlife/wildlife1.jpg', '2', 'Cats Eyes', 'Beautiful and mysterious creatures');
INSERT INTO `thumbnails` VALUES(56, '/clairejonesphotography/files/gallery_thumbs/nature/nature8_sm.jpg', '/clairejonesphotography/files/gallery_photos/nature/nature8.jpg', '1', 'Lily', 'Lilly 2009');
INSERT INTO `thumbnails` VALUES(57, '/clairejonesphotography/files/gallery_thumbs/wildlife/wildlife1_sm.jpg', '/clairejonesphotography/files/gallery_photos/wildlife/wildlife1.jpg', '2', 'Cats Eyes', 'Beautiful and mysterious creatures');
INSERT INTO `thumbnails` VALUES(58, '/clairejonesphotography/files/gallery_thumbs/nature/nature8_sm.jpg', '/clairejonesphotography/files/gallery_photos/nature/nature8.jpg', '1', 'Lily', 'Lilly 2009');
INSERT INTO `thumbnails` VALUES(59, '/clairejonesphotography/files/gallery_thumbs/wedding/wedding1_sm.jpg', '/clairejonesphotography/files/gallery_photos/wedding/wedding1.jpg', '3', 'Wedding', 'Jill and Bob''s Wedding cake');
INSERT INTO `thumbnails` VALUES(60, '/clairejonesphotography/files/gallery_thumbs/wedding/wedding2_sm.jpg', '/clairejonesphotography/files/gallery_photos/wedding/wedding2.jpg', '3', 'Wedding', 'Please hand the rings over');
INSERT INTO `thumbnails` VALUES(61, '/clairejonesphotography/files/gallery_thumbs/wedding/wedding3_sm.jpg', '/clairejonesphotography/files/gallery_photos/wedding/wedding3.jpg', '3', 'Wedding', 'Beautiful Roses for the bride to be');
INSERT INTO `thumbnails` VALUES(62, '/clairejonesphotography/files/gallery_thumbs/wedding/wedding4_sm.jpg', '/clairejonesphotography/files/gallery_photos/wedding/wedding4.jpg', '3', 'Wedding', 'Kelly and Greg slicing their cake');
INSERT INTO `thumbnails` VALUES(63, '/clairejonesphotography/files/gallery_thumbs/wedding/wedding5_sm.jpg', '/clairejonesphotography/files/gallery_photos/wedding/wedding5.jpg', '3', 'Wedding', 'Beautiful buquet from Sarah''s wedding');
INSERT INTO `thumbnails` VALUES(64, '/clairejonesphotography/files/gallery_thumbs/wedding/wedding6_sm.jpg', '/clairejonesphotography/files/gallery_photos/wedding/wedding6.jpg', '3', 'Wedding', 'John and Carol exiting the church');
INSERT INTO `thumbnails` VALUES(65, '/clairejonesphotography/files/gallery_thumbs/wedding/wedding7_sm.jpg', '/clairejonesphotography/files/gallery_photos/wedding/wedding7.jpg', '3', 'Wedding', 'In France a beautiful setting for this special occasion');
INSERT INTO `thumbnails` VALUES(66, '/clairejonesphotography/files/gallery_thumbs/wedding/wedding8_sm.jpg', '/clairejonesphotography/files/gallery_photos/wedding/wedding8.jpg', '3', 'Wedding', 'I caught this beautiful shot right before the toast');
INSERT INTO `thumbnails` VALUES(67, '/clairejonesphotography/files/gallery_thumbs/wedding/wedding9_sm.jpg', '/clairejonesphotography/files/gallery_photos/wedding/wedding9.jpg', '3', 'Wedding', 'Fun loving Debby in a field after getting hitched');
INSERT INTO `thumbnails` VALUES(68, '/clairejonesphotography/files/gallery_thumbs/portraits/portrait1_sm.jpg', '/clairejonesphotography/files/gallery_photos/portrait/portrait1.jpg', '4', 'Portrait', 'Shelly looking too cute in the park');
INSERT INTO `thumbnails` VALUES(69, '/clairejonesphotography/files/gallery_thumbs/portraits/portrait2_sm.jpg', '/clairejonesphotography/files/gallery_photos/portrait/portrait2.jpg', '4', 'Portrait', 'While on vacation in Pakistan, their looks priceless');
INSERT INTO `thumbnails` VALUES(70, '/clairejonesphotography/files/gallery_thumbs/portraits/portrait3_sm.jpg', '/clairejonesphotography/files/gallery_photos/portrait/portrait3.jpg', '4', 'Portrait', 'Another shot in Pakistan, a village girl that wanted her photo taken');
INSERT INTO `thumbnails` VALUES(71, '/clairejonesphotography/files/gallery_thumbs/portraits/portrait4_sm.jpg', '/clairejonesphotography/files/gallery_photos/portrait/portrait4.jpg', '4', 'Portrait', 'Senior Prom is a special time');
INSERT INTO `thumbnails` VALUES(72, '/clairejonesphotography/files/gallery_thumbs/portraits/portrait5_sm.jpg', '/clairejonesphotography/files/gallery_photos/portrait/portrait5.jpg', '4', 'Portrait', 'Brian sitting and pondering life as it goes by his window');
INSERT INTO `thumbnails` VALUES(73, '/clairejonesphotography/files/gallery_thumbs/portraits/portrait6_sm.jpg', '/clairejonesphotography/files/gallery_photos/portrait/portrait6.jpg', '4', 'Portrait', 'A child in the village');
INSERT INTO `thumbnails` VALUES(74, '/clairejonesphotography/files/gallery_thumbs/portraits/portrait7_sm.jpg', '/clairejonesphotography/files/gallery_photos/portrait/portrait7.jpg', '4', 'Portrait', 'A self of me taking a picture in Time Square');
INSERT INTO `thumbnails` VALUES(75, '/clairejonesphotography/files/gallery_thumbs/portraits/portrait8_sm.jpg', '/clairejonesphotography/files/gallery_photos/portrait/portrait8.jpg', '4', 'Portrait', 'Don''t be shy I''m not going to bite');
INSERT INTO `thumbnails` VALUES(76, '/clairejonesphotography/files/gallery_thumbs/portraits/portrait9_sm.jpg', '/clairejonesphotography/files/gallery_photos/portrait/portrait9.jpg', '4', 'Portrait', 'Jerry on his photoshoot to the beach');
INSERT INTO `thumbnails` VALUES(77, '/clairejonesphotography/files/gallery_thumbs/landscape/landscape1_sm.jpg', '/clairejonesphotography/files/gallery_photos/landscape/landscape1.jpg', '5', 'Grand View', 'Shot from the plane on my way home from vacation in Europe');
INSERT INTO `thumbnails` VALUES(78, '/clairejonesphotography/files/gallery_thumbs/landscape/landscape2_sm.jpg', '/clairejonesphotography/files/gallery_photos/landscape/landscape2.jpg', '5', 'Grand View', 'From the resort in Greece, Hello Morning Waters!');
INSERT INTO `thumbnails` VALUES(79, '/clairejonesphotography/files/gallery_thumbs/landscape/landscape3_sm.jpg', '/clairejonesphotography/files/gallery_photos/landscape/landscape3.jpg', '5', 'Grand View', 'The sun has gone down in greece');
INSERT INTO `thumbnails` VALUES(80, '/clairejonesphotography/files/gallery_thumbs/landscape/landscape4_sm.jpg', '/clairejonesphotography/files/gallery_photos/landscape/landscape4.jpg', '5', 'Grand View', 'Great sky captured in Nevada');
INSERT INTO `thumbnails` VALUES(81, '/clairejonesphotography/files/gallery_thumbs/landscape/landscape5_sm.jpg', '/clairejonesphotography/files/gallery_photos/landscape/landscape5.jpg', '5', 'Grand View', 'In Rome the ancient building are spectacular');
INSERT INTO `thumbnails` VALUES(82, '/clairejonesphotography/files/gallery_thumbs/landscape/landscape6_sm.jpg', '/clairejonesphotography/files/gallery_photos/landscape/landscape6.jpg', '5', 'Grand View', 'Red Rocks in Nevada');
INSERT INTO `thumbnails` VALUES(83, '/clairejonesphotography/files/gallery_thumbs/landscape/landscape7_sm.jpg', '/clairejonesphotography/files/gallery_photos/landscape/landscape7.jpg', '5', 'Grand View', 'A helicopter ride for the ages');
INSERT INTO `thumbnails` VALUES(84, '/clairejonesphotography/files/gallery_thumbs/landscape/landscape8_sm.jpg', '/clairejonesphotography/files/gallery_photos/landscape/landscape8.jpg', '5', 'Grand View', 'Misty morning hop ');
INSERT INTO `thumbnails` VALUES(85, '/clairejonesphotography/files/gallery_thumbs/landscape/landscape9_sm.jpg', '/clairejonesphotography/files/gallery_photos/landscape/landscape9.jpg', '5', 'Grand View', 'Cactus in the desert');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=136 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` VALUES(135, 'admin', '21232f297a57a5a743894a0e4a801fc3');
