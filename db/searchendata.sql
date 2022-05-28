/*
MySQL Data Transfer
Source Host: localhost
Source Database: searchendata
Target Host: localhost
Target Database: searchendata
Date: 8/16/2012 4:43:33 PM
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for cloudservera
-- ----------------------------
DROP TABLE IF EXISTS `cloudservera`;
CREATE TABLE `cloudservera` (
  `userid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `userpwd` varchar(255) NOT NULL,
  PRIMARY KEY  (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for cloudserverb
-- ----------------------------
DROP TABLE IF EXISTS `cloudserverb`;
CREATE TABLE `cloudserverb` (
  `userid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `userpwd` varchar(255) NOT NULL,
  PRIMARY KEY  (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for cloudserverc
-- ----------------------------
DROP TABLE IF EXISTS `cloudserverc`;
CREATE TABLE `cloudserverc` (
  `userid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `userpwd` varchar(255) NOT NULL,
  PRIMARY KEY  (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for fileupload
-- ----------------------------
DROP TABLE IF EXISTS `fileupload`;
CREATE TABLE `fileupload` (
  `fileid` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `filekey` varchar(255) NOT NULL,
  `index` varchar(255) NOT NULL,
  `file` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for regstration
-- ----------------------------
DROP TABLE IF EXISTS `regstration`;
CREATE TABLE `regstration` (
  `userid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `emailid` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `confirmpassword` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `mobilenumber` varchar(255) NOT NULL,
  `usertype` varchar(255) NOT NULL,
  PRIMARY KEY  (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `cloudservera` VALUES ('5', 'dataownera', 'grant', '6149');
INSERT INTO `cloudservera` VALUES ('6', 'dataownerb', 'grant', '28362');
INSERT INTO `cloudserverb` VALUES ('5', 'dataownera', 'grant', '58633');
INSERT INTO `regstration` VALUES ('1', 'sivanesh', 'siva', 'siva@gmail.com', '12345', '12345', '16-Aug-2012 18:21:26', 'chidambaram', 'india', 'Male', '8122475005', 'user');
INSERT INTO `regstration` VALUES ('2', 'cloudservera', 'cloudservera', 'csa@gmail.com', '12345', '12345', '14-Aug-2012 14:10:22', 'chennai', 'India', 'Male', '9600781290', 'server');
INSERT INTO `regstration` VALUES ('3', 'cloudserverb ', 'cloudserverb', 'csb@gmail.com', '12345', '12345', '9-Aug-2012 14:11:29', 'chenai', 'india', 'Male', '9600781290', 'server');
INSERT INTO `regstration` VALUES ('4', 'cloudserverc', 'cloudserverc', 'csc@gmail.com', '12345', '12345', '12-Aug-2012 14:12:37', 'chennai', 'india', 'Male', '8122475005', 'server');
INSERT INTO `regstration` VALUES ('5', 'Dataownera', 'dataownera', 'do@gmail.com', '12345', '12345', '20-Aug-2012 14:13:20', 'chennai', 'india', 'Male', '9566672525', 'owner');
INSERT INTO `regstration` VALUES ('6', 'Dataownerb', 'dataownerb', 'dob@gmail.com', '12345', '12345', '23-Aug-2012 14:14:11', 'bangalore', 'india', 'Male', '8122475005', 'owner');
