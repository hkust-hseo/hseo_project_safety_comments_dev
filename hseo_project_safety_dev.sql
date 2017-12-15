-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2017 at 03:35 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hseo_project_safety_dev`
--

-- --------------------------------------------------------

--
-- Table structure for table `memo_details`
--

CREATE TABLE `memo_details` (
  `memo_no` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `create_date` date NOT NULL,
  `file_link` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `memo_details`
--

INSERT INTO `memo_details` (`memo_no`, `create_date`, `file_link`) VALUES
('memo201707271', '2017-07-27', 'documents/memos/memo201707271.pdf'),
('memo201707270', '2017-07-27', 'documents/memos/memo201707270.pdf'),
('memo201707272', '2017-07-27', 'documents/memos/memo201707272.pdf'),
('memo201707273', '2017-07-27', 'documents/memos/memo201707273.pdf'),
('memo201707274', '2017-07-27', 'documents/memos/memo201707274.pdf'),
('memo201707275', '2017-07-27', 'documents/memos/memo201707275.pdf'),
('memo201707276', '2017-07-27', 'documents/memos/memo201707276.pdf'),
('memo201707277', '2017-07-27', 'documents/memos/memo201707277.pdf'),
('memo201707278', '2017-07-27', 'documents/memos/memo201707278.pdf'),
('memo201707279', '2017-07-27', 'documents/memos/memo201707279.pdf'),
('memo2017072710', '2017-07-27', 'documents/memos/memo2017072710.pdf'),
('memo2017072711', '2017-07-27', 'documents/memos/memo2017072711.pdf'),
('memo2017072712', '2017-07-27', 'documents/memos/memo2017072712.pdf'),
('memo2017072713', '2017-07-27', 'documents/memos/memo2017072713.pdf'),
('memo2017072714', '2017-07-27', 'documents/memos/memo2017072714.pdf'),
('memo2017072715', '2017-07-27', 'documents/memos/memo2017072715.pdf'),
('memo201707280', '2017-07-28', 'documents/memos/memo201707280.pdf'),
('memo201707281', '2017-07-28', 'documents/memos/memo201707281.pdf'),
('memo201707282', '2017-07-28', 'documents/memos/memo201707282.pdf'),
('memo201707283', '2017-07-28', 'documents/memos/memo201707283.pdf'),
('memo201707284', '2017-07-28', 'documents/memos/memo201707284.pdf'),
('memo201711090', '2017-11-09', 'documents/memos/memo201711090.pdf'),
('memo201711091', '2017-11-09', 'documents/memos/memo201711091.pdf'),
('memo201711092', '2017-11-09', 'documents/memos/memo201711092.pdf'),
('memo201712110', '2017-12-11', 'documents/memos/memo201712110.pdf'),
('memo201712111', '2017-12-11', 'documents/memos/memo201712111.pdf'),
('memo201712112', '2017-12-11', 'documents/memos/memo201712112.pdf'),
('memo201712113', '2017-12-11', 'documents/memos/memo201712113.pdf'),
('memo201712114', '2017-12-11', 'documents/memos/memo201712114.pdf'),
('memo201712115', '2017-12-11', 'documents/memos/memo201712115.pdf'),
('memo201712116', '2017-12-11', 'documents/memos/memo201712116.pdf'),
('memo201712117', '2017-12-11', 'documents/memos/memo201712117.pdf'),
('memo201712118', '2017-12-11', 'documents/memos/memo201712118.pdf'),
('memo201712119', '2017-12-11', 'documents/memos/memo201712119.pdf'),
('memo2017121110', '2017-12-11', 'documents/memos/memo2017121110.pdf'),
('memo2017121111', '2017-12-11', 'documents/memos/memo2017121111.pdf'),
('memo2017121112', '2017-12-11', 'documents/memos/memo2017121112.pdf'),
('memo2017121113', '2017-12-11', 'documents/memos/memo2017121113.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `proj_comments`
--

CREATE TABLE `proj_comments` (
  `ref_no` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `occ_hygiene` mediumtext COLLATE utf8_unicode_ci,
  `safety_eng` mediumtext COLLATE utf8_unicode_ci,
  `envr_protect` mediumtext COLLATE utf8_unicode_ci,
  `health_phys` mediumtext COLLATE utf8_unicode_ci,
  `peer_review` mediumtext COLLATE utf8_unicode_ci,
  `occ_hygiene_pic` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `safety_eng_pic` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `envr_protect_pic` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `health_phys_pic` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `peer_review_pic` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `proj_comments`
--

INSERT INTO `proj_comments` (`ref_no`, `occ_hygiene`, `safety_eng`, `envr_protect`, `health_phys`, `peer_review`, `occ_hygiene_pic`, `safety_eng_pic`, `envr_protect_pic`, `health_phys_pic`, `peer_review_pic`) VALUES
('test_long_comments', 'Less crazy one.', 'Long comment that makes the MultiCell span >1 page coming up!\n\nSomething\nSometh\nlksdfhas\nsdfhsdalf\n\n\nsdflkhsdf\n\nsome more to push it to next page\n\nhello\n\nhi', 'Something something so it shows on next page', 'More words more words\n\n\n\n\n\n\n\n\n\n\n\nso many words.', NULL, 'Joey Lau', 'Lau Yung', 'LauY', 'tester', NULL),
('BIEN1710', 'Test', NULL, NULL, NULL, NULL, 'Pak', NULL, NULL, NULL, NULL),
('APCF2017104', '-All drug administration must be performed in fume hood or BSC. Wear appropriate gloves and safety glasses. Take special precaution to avoid needle stick injury.\n-Animal bedding contaminated with Tamoxifen metabolites must be treated as hazardous wastes. Dispose animal carcasses as clinical wastes.\n-Follow established procedures for handling Tamoxifen and cytotoxic drugs.', NULL, NULL, NULL, NULL, 'Pak IP', NULL, NULL, NULL, NULL),
('TEST001_doc_links', 'hi hello', NULL, NULL, NULL, NULL, 'test name field 2 index 1', NULL, NULL, NULL, NULL),
('17035', '-Avoid skin contact without hot surface and wear thermal resistant gloves as needed.    \n-Take special precaution when handling hydrazine and sodium borohydride.\n-Follow standard laboratory safety practices.\n-Ensure proper balancing of centrifuge rotor.', NULL, NULL, NULL, NULL, 'Lau Yung', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `proj_details`
--

CREATE TABLE `proj_details` (
  `ref_no` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `proj_title` text COLLATE utf8_unicode_ci NOT NULL,
  `receive_date` date NOT NULL,
  `due_date` date NOT NULL,
  `dept` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `room` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `researcher` text COLLATE utf8_unicode_ci NOT NULL,
  `supervisor` text COLLATE utf8_unicode_ci NOT NULL,
  `extn` int(10) DEFAULT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `memo` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sent` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `proj_details`
--

INSERT INTO `proj_details` (`ref_no`, `proj_title`, `receive_date`, `due_date`, `dept`, `room`, `researcher`, `supervisor`, `extn`, `completed`, `memo`, `sent`) VALUES
('test_long_comments', 'Long comment test proj', '2017-12-11', '2017-12-25', 'TEST', '', '', '', NULL, 1, 'memo2017121113', 0),
('003', 'whatever', '0000-00-00', '0000-00-00', '', '', '', 'Lau Y', NULL, 0, 'memo2017072714', 1),
('002', 'whatever2', '0000-00-00', '0000-00-00', '', '', '', 'Lau Yung', NULL, 0, 'memo201707284', 0),
('001', 'whatever', '0000-00-00', '0000-00-00', '', '', '', 'Lau Yung', NULL, 0, 'memo201707283', 1),
('TEST001_doc_links', 'Test document links', '2017-07-26', '2017-08-09', '', '', '', '', NULL, 1, 'memo2017121113', 1),
('TEST001', 'Whatever idc', '0000-00-00', '0000-00-00', '', '', '', 'Lau Yung', NULL, 0, 'memo201712114', 1),
('TEST002', 'hahaha', '0000-00-00', '0000-00-00', '', '', '', 'Lau Yung', NULL, 0, 'memo201712112', 0),
('BIEN1710', 'Test', '2017-11-25', '2017-11-23', 'BIEN', '6104', '', 'Pak', NULL, 1, 'memo201712113', 0),
('APCF2017104', 'To study differentiation, cell proliferation and signaling events in muscle injury and regeneration', '2017-12-01', '2017-12-15', 'APCF', '', 'Han ZHU', 'Prof Zhenguo WU', 8704, 1, 'memo2017121113', 0);

-- --------------------------------------------------------

--
-- Table structure for table `proj_files`
--

CREATE TABLE `proj_files` (
  `ref_no` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `file_size` int(30) NOT NULL,
  `proposal_link` text COLLATE utf8_unicode_ci,
  `review_link` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `proj_files`
--

INSERT INTO `proj_files` (`ref_no`, `file_size`, `proposal_link`, `review_link`) VALUES
('test_long_comments', 2252845, 'documents/proposals/test_long_comments.pdf', 'documents/reviews/test_long_comments_review.pdf'),
('TEST001_doc_links', 7097565, 'documents/proposals/TEST001_doc_links.pdf', 'documents/reviews/TEST001_doc_links_review.pdf'),
('APCF2017104', 5154211, 'documents/proposals/APCF2017104.pdf', 'documents/reviews/APCF2017104_review.pdf');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `memo_details`
--
ALTER TABLE `memo_details`
  ADD UNIQUE KEY `memo_no_2` (`memo_no`,`create_date`),
  ADD UNIQUE KEY `memo_no_3` (`memo_no`,`create_date`),
  ADD KEY `memo_no` (`memo_no`,`create_date`);

--
-- Indexes for table `proj_comments`
--
ALTER TABLE `proj_comments`
  ADD PRIMARY KEY (`ref_no`),
  ADD UNIQUE KEY `ref_no` (`ref_no`);
ALTER TABLE `proj_comments` ADD FULLTEXT KEY `occ_hygiene` (`occ_hygiene`,`safety_eng`,`envr_protect`,`health_phys`,`peer_review`,`occ_hygiene_pic`,`safety_eng_pic`,`envr_protect_pic`,`health_phys_pic`,`peer_review_pic`);

--
-- Indexes for table `proj_details`
--
ALTER TABLE `proj_details`
  ADD PRIMARY KEY (`ref_no`),
  ADD UNIQUE KEY `ref_no` (`ref_no`),
  ADD KEY `ref_no_8` (`ref_no`);
ALTER TABLE `proj_details` ADD FULLTEXT KEY `ref_no_2` (`ref_no`,`proj_title`,`dept`,`room`,`researcher`,`supervisor`);
ALTER TABLE `proj_details` ADD FULLTEXT KEY `proj_title` (`proj_title`);
ALTER TABLE `proj_details` ADD FULLTEXT KEY `ref_no_3` (`ref_no`);
ALTER TABLE `proj_details` ADD FULLTEXT KEY `ref_no_4` (`ref_no`);
ALTER TABLE `proj_details` ADD FULLTEXT KEY `ref_no_5` (`ref_no`);
ALTER TABLE `proj_details` ADD FULLTEXT KEY `ref_no_6` (`ref_no`);
ALTER TABLE `proj_details` ADD FULLTEXT KEY `proj_title_2` (`proj_title`);
ALTER TABLE `proj_details` ADD FULLTEXT KEY `room` (`room`);
ALTER TABLE `proj_details` ADD FULLTEXT KEY `researcher` (`researcher`);
ALTER TABLE `proj_details` ADD FULLTEXT KEY `supervisor` (`supervisor`);
ALTER TABLE `proj_details` ADD FULLTEXT KEY `ref_no_7` (`ref_no`);

--
-- Indexes for table `proj_files`
--
ALTER TABLE `proj_files`
  ADD PRIMARY KEY (`ref_no`),
  ADD UNIQUE KEY `ref_no` (`ref_no`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
