
drop database CollaborativeFiltering;

create database CollaborativeFiltering;

use CollaborativeFiltering;


CREATE TABLE `admin` (
  `username` varchar(50) default NULL,
  `password` varchar(50) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `battacker` (
  `aname` text,
  `pused` text,
  `dt` text,
  `ip` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `imagerecommend` (
  `recommendfrom` varchar(45) default NULL,
  `recommendto` varchar(45) default NULL,
  `Details` text,
  `imgid` int(11) default NULL,
  `date` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `images` (
  `id` int(11) NOT NULL auto_increment,
  `tag` text,
  `color` text,
  `description` text,
  `uses` text,
  `location` text,
  `imagess` longblob,
  `count` int(11) default NULL,
  `binaryimage` longtext,
  `imagetitle` text,
  `uname` varchar(45) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `nearoptimalsolution` (
  `username` text,
  `content` text,
  `total` text,
  `retrieved` text,
  `ratio` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `recommend` (
  `iid` int(11) default NULL,
  `iname` text,
  `rlocation` text,
  `ufrom` text,
  `rdetails` text,
  `dt` text,
  `rcount` int(11) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `req_res` (
  `id` int(11) NOT NULL auto_increment,
  `requestfrom` text,
  `requestto` text,
  `status` text,
  `dt` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `review` (
  `id` int(11) default NULL,
  `productname` text,
  `uname` text,
  `details` text,
  `dt` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `search` (
  `id` int(11) NOT NULL auto_increment,
  `username` text,
  `keyword` text,
  `dt` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `user` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(45) default NULL,
  `password` varchar(45) default NULL,
  `email` varchar(45) default NULL,
  `mobile` varchar(45) default NULL,
  `address` varchar(45) default NULL,
  `dob` varchar(45) default NULL,
  `gender` varchar(45) default NULL,
  `pincode` varchar(45) default NULL,
  `status` varchar(45) default NULL,
  `image` longblob,
  `binaryimage` longtext,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `admin` VALUES ('admin', 'admin');
INSERT INTO `imagerecommend` VALUES ('Kiran', 'Rajesh', 'This is very good bike', '8', '18/09/2017   16:45:25');
INSERT INTO `imagerecommend` VALUES ('Manjunath', 'Kiran', 'It is very good Car', '7', '18/09/2017   18:08:44');
INSERT INTO `imagerecommend` VALUES ('Manjunath', 'Kiran', 'It is very good mobile ', '11', '18/09/2017   18:11:00');
INSERT INTO `nearoptimalsolution` VALUES ('Kiran', 'car', '2.0', '1.0', '50.0');
INSERT INTO `nearoptimalsolution` VALUES ('Kiran', 'car', '2.0', '1.0', '50.0');
INSERT INTO `nearoptimalsolution` VALUES ('Kiran', 'computer', '2.0', '1.0', '50.0');
INSERT INTO `nearoptimalsolution` VALUES ('Kiran', 'computer', '2.0', '1.0', '50.0');
INSERT INTO `nearoptimalsolution` VALUES ('Kiran', 'java', '5.0', '1.0', '20.0');
INSERT INTO `nearoptimalsolution` VALUES ('Kiran', 'bike', '5.0', '1.0', '20.0');
INSERT INTO `nearoptimalsolution` VALUES ('Kiran', 'bike', '5.0', '1.0', '20.0');
INSERT INTO `nearoptimalsolution` VALUES ('Rajesh', 'bike', '5.0', '1.0', '20.0');
INSERT INTO `nearoptimalsolution` VALUES ('Rajesh', 'bike', '5.0', '1.0', '20.0');
INSERT INTO `nearoptimalsolution` VALUES ('Rajesh', 'bike', '5.0', '1.0', '20.0');
INSERT INTO `nearoptimalsolution` VALUES ('Manjunath', 'mobile', '5.0', '1.0', '20.0');
INSERT INTO `nearoptimalsolution` VALUES ('Manjunath', 'bike', '5.0', '1.0', '20.0');
INSERT INTO `nearoptimalsolution` VALUES ('Manjunath', 'bike', '5.0', '1.0', '20.0');
INSERT INTO `nearoptimalsolution` VALUES ('Manjunath', 'car', '5.0', '1.0', '20.0');
INSERT INTO `nearoptimalsolution` VALUES ('Manjunath', 'mobile', '6.0', '1.0', '16.666666666666664');
INSERT INTO `nearoptimalsolution` VALUES ('Manjunath', 'mobile', '6.0', '1.0', '16.666666666666664');
INSERT INTO `req_res` VALUES ('2', 'Kiran', 'Rajesh', 'Accepted', '18/09/2017   16:41:29');
INSERT INTO `req_res` VALUES ('3', 'Manjunath', 'Rajesh', 'Accepted', '18/09/2017   18:05:45');
INSERT INTO `req_res` VALUES ('4', 'Manjunath', 'Kiran', 'Accepted', '18/09/2017   18:06:40');
INSERT INTO `review` VALUES ('8', 'Bajaj Discover 125', 'Rajesh', 'It is good bike', '18/09/2017   17:07:18');
INSERT INTO `review` VALUES ('11', 'samsung j7', 'Manjunath', 'This is newly launched mobile', '18/09/2017   18:11:17');
INSERT INTO `search` VALUES ('44', 'Kiran', 'car', '18/09/2017   16:17:56');
INSERT INTO `search` VALUES ('45', 'Kiran', 'car', '18/09/2017   16:19:25');
INSERT INTO `search` VALUES ('46', 'Kiran', 'car', '18/09/2017   16:20:08');
INSERT INTO `search` VALUES ('47', 'Kiran', 'car', '18/09/2017   16:20:24');
INSERT INTO `search` VALUES ('48', 'Kiran', 'bike', '18/09/2017   16:20:49');
INSERT INTO `search` VALUES ('49', 'Kiran', 'computer', '18/09/2017   16:21:03');
INSERT INTO `search` VALUES ('50', 'Kiran', 'java', '18/09/2017   16:28:09');
INSERT INTO `search` VALUES ('51', 'Kiran', 'bike', '18/09/2017   16:45:07');
INSERT INTO `search` VALUES ('52', 'Rajesh', 'bike', '18/09/2017   17:04:54');
INSERT INTO `search` VALUES ('53', 'Manjunath', 'mobile', '18/09/2017   18:07:36');
INSERT INTO `search` VALUES ('54', 'Manjunath', 'mobile', '18/09/2017   18:07:44');
INSERT INTO `search` VALUES ('55', 'Manjunath', 'bike', '18/09/2017   18:08:01');
INSERT INTO `search` VALUES ('56', 'Manjunath', 'car', '18/09/2017   18:08:29');
INSERT INTO `search` VALUES ('57', 'Manjunath', 'mobiles', '18/09/2017   18:10:25');
INSERT INTO `search` VALUES ('58', 'Manjunath', 'mobile', '18/09/2017   18:10:29');
