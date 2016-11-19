# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.6.20)
# Database: eyeself
# Generation Time: 2016-11-19 02:47:40 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table e_attachment
# ------------------------------------------------------------

DROP TABLE IF EXISTS `e_attachment`;

CREATE TABLE `e_attachment` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` text,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `content_id` bigint(20) unsigned DEFAULT NULL,
  `path` varchar(512) DEFAULT NULL,
  `mime_type` varchar(128) DEFAULT NULL,
  `suffix` varchar(32) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `created` (`created`),
  KEY `suffix` (`suffix`),
  KEY `mime_type` (`mime_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `e_attachment` WRITE;
/*!40000 ALTER TABLE `e_attachment` DISABLE KEYS */;

INSERT INTO `e_attachment` (`id`, `title`, `user_id`, `content_id`, `path`, `mime_type`, `suffix`, `created`)
VALUES
	(1,'index_39.gif',1,NULL,'/attachment/20160818/3856747c094a468aa9e11cb9d38f2877.gif','image/gif','.gif','2016-08-18 13:29:52'),
	(2,'index_38.gif',1,NULL,'/attachment/20160818/e668da4d0dbe4e6a85f0f6030df0da28.gif','image/gif','.gif','2016-08-18 13:38:52'),
	(3,'index_37.gif',1,NULL,'/attachment/20160818/1e37e546591a4169b703daeabf47df60.gif','image/gif','.gif','2016-08-18 13:46:57'),
	(4,'index_37-21.gif',1,NULL,'/attachment/20160818/aeb61230f6a8442f8820f3be591fcdcc.gif','image/gif','.gif','2016-08-18 13:47:20'),
	(5,'index_37-20.gif',1,NULL,'/attachment/20160818/0813c9accbfb4687b508ae62602a6a74.gif','image/gif','.gif','2016-08-18 13:47:38'),
	(6,'index_37-19.gif',1,NULL,'/attachment/20160818/c52920234f264ed78b907e53767d60eb.gif','image/gif','.gif','2016-08-18 13:47:56'),
	(7,'忘记密码.png',1,NULL,'/attachment/20160818/6b50ba8aa88f4e74aa5b451da9e0bc8b.png','image/png','.png','2016-08-18 18:38:27'),
	(8,'blobid0.png',1,NULL,'/attachment/20160830/57216a64d75443a2bf271b8d75df5b55.png','image/png','.png','2016-08-30 12:03:29'),
	(9,'20160828075150739.jpg',1,NULL,'/attachment/20160830/ca2483972ecb4439ab83dd439a4d901b.jpg','image/jpeg','.jpg','2016-08-30 14:54:19'),
	(10,'20160828075150739.jpg',1,NULL,'/attachment/20160907/6ce828b8641a4decbfe9edee0f046523.jpg','image/jpeg','.jpg','2016-09-07 16:43:49'),
	(11,'imagetools2.png',1,NULL,'/attachment/20160907/cc120c125bb841ee9163729e2e8c17c1.png','image/png','.png','2016-09-07 18:36:22'),
	(12,'20160828075150739.jpg',1,NULL,'/attachment/20160915/e395413dd5564386aeabf2cdfa738fe1.jpg','image/jpeg','.jpg','2016-09-15 10:50:19'),
	(13,'图片 1.png',1,NULL,'/attachment/20160922/533c84431b8a49828b0a19150e819200.png','image/png','.png','2016-09-22 13:53:50'),
	(14,NULL,NULL,NULL,'/attachment/c339ecc24e624ae29737a476bbc166b7.png',NULL,NULL,'2016-10-13 19:43:08'),
	(15,NULL,NULL,NULL,'/attachment/a648751d04f34dd4bfbe82d98ef548b6.png',NULL,NULL,'2016-10-13 20:02:33'),
	(16,NULL,NULL,NULL,'/attachment/027b9d5b12da477aad42a0691441b29b.png',NULL,NULL,'2016-10-18 12:42:55'),
	(17,NULL,NULL,NULL,'/attachment/7702041ce5bc480087ccb3515286050d.png',NULL,NULL,'2016-10-18 12:45:25'),
	(18,NULL,NULL,NULL,'/attachment/ba647b90d65b4aa2b0f03a967d489ec6.png',NULL,NULL,'2016-10-18 12:48:17'),
	(19,NULL,NULL,NULL,'/attachment/f7243413c59a4d1784d8f57ee517e9d9.png',NULL,NULL,'2016-10-18 12:50:33');

/*!40000 ALTER TABLE `e_attachment` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table e_comment
# ------------------------------------------------------------

DROP TABLE IF EXISTS `e_comment`;

CREATE TABLE `e_comment` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) unsigned DEFAULT NULL,
  `content_id` bigint(20) unsigned DEFAULT NULL,
  `content_module` varchar(32) DEFAULT NULL,
  `comment_count` int(11) unsigned DEFAULT '0',
  `order_number` int(11) unsigned DEFAULT '0',
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip` varchar(64) DEFAULT NULL,
  `author` varchar(128) DEFAULT NULL,
  `type` varchar(32) DEFAULT NULL,
  `text` longtext,
  `agent` text,
  `created` datetime DEFAULT NULL,
  `slug` varchar(128) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `status` varchar(32) DEFAULT NULL,
  `vote_up` int(11) unsigned DEFAULT '0',
  `vote_down` int(11) unsigned DEFAULT '0',
  `flag` varchar(256) DEFAULT NULL,
  `lat` decimal(20,16) DEFAULT NULL,
  `lng` decimal(20,16) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `content_id` (`content_id`),
  KEY `user_id` (`user_id`),
  KEY `email` (`email`),
  KEY `created` (`created`),
  KEY `parent_id` (`parent_id`),
  KEY `content_module` (`content_module`),
  KEY `comment_count` (`comment_count`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `e_comment` WRITE;
/*!40000 ALTER TABLE `e_comment` DISABLE KEYS */;

INSERT INTO `e_comment` (`id`, `parent_id`, `content_id`, `content_module`, `comment_count`, `order_number`, `user_id`, `ip`, `author`, `type`, `text`, `agent`, `created`, `slug`, `email`, `status`, `vote_up`, `vote_down`, `flag`, `lat`, `lng`)
VALUES
	(1,NULL,14,'doc',0,0,1,'127.0.0.1','超级管理员','comment','啊啊啊','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36','2016-08-28 15:58:38',NULL,NULL,'normal',0,0,NULL,NULL,NULL),
	(2,NULL,6,'product',0,0,1,'127.0.0.1','超级管理员','comment','啊啊啊','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36','2016-08-29 18:49:50',NULL,NULL,'normal',0,0,NULL,NULL,NULL),
	(3,NULL,6,'product',0,0,1,'127.0.0.1','超级管理员','comment','asdf','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36','2016-08-29 18:50:22',NULL,NULL,'normal',0,0,NULL,NULL,NULL);

/*!40000 ALTER TABLE `e_comment` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table e_content
# ------------------------------------------------------------

DROP TABLE IF EXISTS `e_content`;

CREATE TABLE `e_content` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` text,
  `text` longtext,
  `thumbnail` varchar(128) DEFAULT NULL,
  `module` varchar(32) DEFAULT NULL,
  `style` varchar(32) DEFAULT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `parent_id` bigint(20) unsigned DEFAULT NULL,
  `object_id` bigint(20) unsigned DEFAULT NULL,
  `order_number` int(11) unsigned DEFAULT '0',
  `status` varchar(32) DEFAULT NULL,
  `vote_up` int(11) unsigned DEFAULT '0',
  `vote_down` int(11) unsigned DEFAULT '0',
  `price` decimal(10,2) DEFAULT '0.00',
  `comment_status` varchar(32) DEFAULT NULL,
  `comment_count` int(11) unsigned DEFAULT '0',
  `comment_time` datetime DEFAULT NULL,
  `view_count` int(11) unsigned DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `slug` varchar(128) DEFAULT NULL,
  `flag` varchar(256) DEFAULT NULL,
  `lng` decimal(20,16) DEFAULT NULL,
  `lat` decimal(20,16) DEFAULT NULL,
  `meta_keywords` varchar(256) DEFAULT NULL,
  `meta_description` varchar(256) DEFAULT NULL,
  `remarks` text,
  `summary` text,
  `link_to` varchar(256) DEFAULT NULL,
  `markdown_enable` tinyint(1) DEFAULT NULL,
  `author` varchar(128) DEFAULT NULL,
  `user_email` varchar(128) DEFAULT NULL,
  `user_ip` varchar(128) DEFAULT NULL,
  `user_agent` text,
  `rate` int(11) DEFAULT NULL,
  `rate_count` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `user_id` (`user_id`),
  KEY `parent_id` (`parent_id`),
  KEY `content_module` (`module`),
  KEY `created` (`created`),
  KEY `vote_down` (`vote_down`),
  KEY `vote_up` (`vote_up`),
  KEY `view_count` (`view_count`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `e_content` WRITE;
/*!40000 ALTER TABLE `e_content` DISABLE KEYS */;

INSERT INTO `e_content` (`id`, `title`, `text`, `thumbnail`, `module`, `style`, `user_id`, `parent_id`, `object_id`, `order_number`, `status`, `vote_up`, `vote_down`, `price`, `comment_status`, `comment_count`, `comment_time`, `view_count`, `created`, `modified`, `slug`, `flag`, `lng`, `lat`, `meta_keywords`, `meta_description`, `remarks`, `summary`, `link_to`, `markdown_enable`, `author`, `user_email`, `user_ip`, `user_agent`, `rate`, `rate_count`)
VALUES
	(1,'RAC-1800全自动凝血分析仪01','<p>RAC-1800全自动凝血分析仪01RAC-1800全自动凝血分析仪01RAC-1800全自动凝血分析仪01</p> \n<p>RAC-1800全自动凝血分析仪01RAC-1800全自动凝血分析仪01RAC-1800全自动凝血分析仪01RAC-1800全自动凝血分析仪01</p>','/jpress-web/attachment/20160818/3856747c094a468aa9e11cb9d38f2877.gif','product',NULL,1,NULL,NULL,0,'normal',0,0,0.00,NULL,0,NULL,0,'2016-08-18 13:30:06','2016-08-18 13:30:06','RAC_1800全自动凝血分析仪01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(2,'RAC-1800全自动凝血分析仪02','<p>RAC-1800全自动凝血分析仪02RAC-1800全自动凝血分析仪02</p>','/jpress-web/attachment/20160818/e668da4d0dbe4e6a85f0f6030df0da28.gif','product',NULL,1,NULL,NULL,0,'normal',0,0,0.00,NULL,0,NULL,0,'2016-08-18 13:39:03','2016-08-18 13:39:03','RAC_1800全自动凝血分析仪02',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(3,'RAC-1800全自动凝血分析仪03','<p>RAC-1800全自动凝血分析仪03RAC-1800全自动凝血分析仪03RAC-1800全自动凝血分析仪03</p>','/jpress-web/attachment/20160818/1e37e546591a4169b703daeabf47df60.gif','product',NULL,1,NULL,NULL,0,'normal',0,0,0.00,NULL,0,NULL,0,'2016-08-18 13:47:06','2016-08-18 13:47:06','RAC_1800全自动凝血分析仪03',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(4,'RAC-1800全自动凝血分析仪04','<p>RAC-1800全自动凝血分析仪04RAC-1800全自动凝血分析仪04RAC-1800全自动凝血分析仪04RAC-1800全自动凝血分析仪04</p>','/jpress-web/attachment/20160818/aeb61230f6a8442f8820f3be591fcdcc.gif','product',NULL,1,NULL,NULL,0,'normal',0,0,0.00,NULL,0,NULL,0,'2016-08-18 13:47:25','2016-08-18 13:47:25','RAC_1800全自动凝血分析仪04',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(5,'RAC-1800全自动凝血分析仪05','<p>RAC-1800全自动凝血分析仪05RAC-1800全自动凝血分析仪05RAC-1800全自动凝血分析仪05</p>','/jpress-web/attachment/20160818/0813c9accbfb4687b508ae62602a6a74.gif','product',NULL,1,NULL,NULL,0,'normal',0,0,99.00,NULL,0,NULL,0,'2016-08-18 13:47:42','2016-08-22 15:45:24','RAC_1800全自动凝血分析仪05',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6,'RAC-1800全自动凝血分析仪06','<p>RAC-1800全自动凝血分析仪06RAC-1800全自动凝血分析仪06RAC-1800全自动凝血分析仪06RAC-1800全自动凝血分析仪06</p>','/jpress-web/attachment/20160818/c52920234f264ed78b907e53767d60eb.gif','product',NULL,1,NULL,NULL,0,'normal',0,0,NULL,NULL,2,NULL,0,'2016-08-18 13:47:58','2016-09-07 17:40:54','RAC_1800全自动凝血分析仪06',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(7,'产品','/product',NULL,'menu',NULL,NULL,NULL,NULL,NULL,'normal',0,0,0.00,NULL,0,NULL,0,'2016-11-19 10:35:09','2016-11-19 10:35:09',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(8,'企业','/company',NULL,'menu',NULL,NULL,NULL,NULL,NULL,'normal',0,0,0.00,NULL,0,NULL,0,'2016-11-19 10:35:15','2016-11-19 10:35:15',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(9,'商机','/business',NULL,'menu',NULL,NULL,NULL,NULL,NULL,'normal',0,0,0.00,NULL,0,NULL,0,'2016-11-19 10:35:20','2016-11-19 10:35:20',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(10,'收费标准','/fee',NULL,'menu',NULL,NULL,NULL,NULL,NULL,'normal',0,0,0.00,NULL,0,NULL,0,'2016-11-19 10:35:26','2016-11-19 10:35:26',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(11,'学术组织','/group',NULL,'menu',NULL,NULL,NULL,NULL,NULL,'normal',0,0,0.00,NULL,0,NULL,0,'2016-11-19 10:35:32','2016-11-19 10:35:32',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(12,'智库','/doc',NULL,'menu',NULL,NULL,NULL,NULL,NULL,'normal',0,0,0.00,NULL,0,NULL,0,'2016-11-19 10:35:38','2016-11-19 10:35:38',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(13,'院学术委员会','<p>院学术委员会院学术委员会</p>',NULL,'group',NULL,1,NULL,NULL,0,'normal',0,0,0.00,NULL,0,NULL,0,'2016-08-19 23:01:58','2016-08-29 17:30:36','院学术委员会',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(14,'中国科学院党组副书记刘伟平到访国创会','<p>中国科学院党组副书记刘伟平到访国创会中国科学院党组副书记刘伟平到访国创会中国科学院党组副书记刘伟平到访国创会</p>',NULL,'doc',NULL,1,NULL,NULL,0,'normal',0,0,0.00,NULL,1,NULL,0,'2016-08-22 17:33:13','2016-08-22 17:33:13','中国科学院党组副书记刘伟平到访国创会',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(15,'收费标准','<h1>收费标准内容1111</h1>',NULL,'fee',NULL,1,NULL,NULL,0,'normal',0,0,100.00,NULL,0,NULL,0,'2016-08-23 12:15:33','2016-08-29 17:42:37','收费标准',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(16,'RAC-1800全自动凝血分析仪0699999777',NULL,NULL,'product',NULL,NULL,NULL,NULL,0,NULL,0,0,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(17,' RAC-1800全自动凝血分析仪0777777777777777','<p>asdfakjsf</p> \n<p><img src=\"/jpress/attachment/20160907/cc120c125bb841ee9163729e2e8c17c1.png\" alt=\"\" width=\"400\" height=\"300\"></p> \n<p>asdfsaldkfjasdf</p>','/jpress/attachment/20160907/6ce828b8641a4decbfe9edee0f046523.jpg','product',NULL,1,NULL,NULL,0,'normal',0,0,NULL,NULL,0,NULL,0,'2016-08-24 17:31:53','2016-09-07 19:18:38','RAC_1800全自动凝血分析仪0777777777777777',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36',NULL,NULL),
	(18,'商机111111','<p>商机111111商机111111商机111111商机111111</p>',NULL,'business',NULL,1,NULL,NULL,0,'normal',0,0,0.00,NULL,0,NULL,0,'2016-08-27 10:14:00','2016-08-27 10:14:00','商机111111',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(19,'商机22222','<p>商机22222</p>',NULL,'business',NULL,1,NULL,NULL,0,'normal',0,0,0.00,NULL,0,NULL,0,'2016-08-27 10:14:24','2016-08-27 10:14:24','商机22222',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(20,'院学术委员会22','<p>XXXX</p>',NULL,'group',NULL,1,NULL,NULL,0,'normal',0,0,0.00,NULL,0,NULL,0,'2016-08-29 17:31:17','2016-08-29 17:31:17','院学术委员会22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(21,'招标1111','<p>招标1111</p>',NULL,'business',NULL,1,NULL,NULL,0,'normal',0,0,0.00,NULL,0,NULL,0,'2016-08-30 11:57:49','2016-08-30 11:57:49','招标1111',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(22,'111项目名称11111122222','111项目名称11111122222描述需求描述需求描述需求描述需求描述需求描述需求',NULL,'business',NULL,1,NULL,NULL,0,'normal',0,0,0.00,NULL,0,NULL,0,'2016-08-30 13:24:29','2016-08-30 13:24:29','111项目名称11111122222',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36',NULL,NULL),
	(23,'日本承诺将援非300亿美元 被指花钱买“入常”','<p>当地时间28日，出席第六届非洲发展东京国际会议的日本首相安倍晋三承诺，从今年起至2018年，日本将向非洲各国提供300亿美元的援助，重点支持非洲的基础设施建设。</p> \n<p>　　这并非日本首次承诺援助非洲上百亿美元的资金。外界普遍认为，日本这几年深耕非洲，此次又加大对非洲的援助力度，旨在拉拢数量众多的非洲国家，支持其完成“入常”梦。</p> \n<p>　　<strong>承诺</strong></p> \n<p>　　<strong>安倍承诺3年援助300亿美元</strong></p> \n<p>　　上周末，日本首相安倍晋三给自己加了个班，出席在肯尼亚内罗毕举行的第六届非洲发展东京国际会议（以下简称“日非峰会”）。安倍在会上送出“大礼包”。他表示，日本将在今后三年内向非洲提供300亿美元的援助，其中东京方面承诺投资100亿美元用于非洲的基础设施项目。如果加上私人领域的投资，预计资金总额将达到300亿美元。</p>','/jpress-web/attachment/20160830/ca2483972ecb4439ab83dd439a4d901b.jpg','doc',NULL,1,NULL,NULL,0,'normal',0,0,0.00,NULL,0,NULL,0,'2016-08-30 14:54:23','2016-08-30 14:54:23','日本承诺将援非300亿美元_被指花钱买入常',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(24,NULL,NULL,NULL,'companyConlection',NULL,1,NULL,2,0,'normal',0,0,0.00,NULL,0,NULL,0,'2016-09-06 19:35:31',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(25,NULL,NULL,NULL,'companyConlection',NULL,1,NULL,1,0,'normal',0,0,0.00,NULL,0,NULL,0,'2016-09-06 19:35:43',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(26,'产品111111',NULL,'/jpress/attachment/20160907/6ce828b8641a4decbfe9edee0f046523.jpg','product',NULL,1,NULL,NULL,0,'normal',0,0,NULL,NULL,0,NULL,0,'2016-09-07 20:32:44','2016-09-07 20:32:44','产品111111',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.89 Safari/537.36',NULL,NULL),
	(27,'产品标题111222','<p>产品111111产品111111产品111111产品111111产品111111产品111111产品111111产品111111产品111111产品111111产品111111产品111111产品111111产品111111产品111111产品111111产品111111产品111111产品111111产品111111产品111111产品111111产品111111产品111111产品111111产品111111产品111111产品111111产品111111产品111111产品111111产品111111</p> \n<p>&nbsp;</p> \n<p>&nbsp;</p> \n<p><img src=\"/jpress/attachment/20160907/6ce828b8641a4decbfe9edee0f046523.jpg\" alt=\"\" width=\"400\" height=\"300\"></p>','/jpress/attachment/20160907/6ce828b8641a4decbfe9edee0f046523.jpg','product',NULL,1,NULL,NULL,0,'normal',0,0,NULL,NULL,0,NULL,0,'2016-09-07 20:38:00','2016-09-07 20:52:41','产品标题111222',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.89 Safari/537.36',NULL,NULL),
	(28,'xxx111','<p>商品信息商品信息商品信息商品信息商品信息商品信息商品信息商品信息商品信息商品信息商品信息商品信息商品信息商品信息商品信息商品信息</p> \n<p>商品信息商品信息商品信息商品信息商品信息商品信息商品信息商品信息商品信息商品信息商品信息商品信息商品信息商品信息商品信息商品信息</p> \n<p>商品信息商品信息商品信息商品信息商品信息商品信息商品信息商品信息商品信息商品信息商品信息商品信息商品信息商品信息商品信息商品信息</p>',NULL,'product',NULL,1,NULL,NULL,0,'normal',0,0,NULL,NULL,0,NULL,0,'2016-09-09 16:16:23','2016-09-15 10:29:03','xxx111',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(29,'产品','/product',NULL,'menu',NULL,NULL,NULL,NULL,NULL,'normal',0,0,0.00,NULL,0,NULL,0,'2016-11-19 10:35:43','2016-11-19 10:35:43',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(30,'撰写文章测试测试测试~~~~','<p>撰写文章测试测试测试~~~~撰写文章测试测试测试~~~~撰写文章测试测试测试~~~~撰写文章测试测试测试~~~~撰写文章测试测试测试~~~~撰写文章测试测试测试~~~~撰写文章测试测试测试~~~~撰写文章测试测试测试~~~~撰写文章测试测试测试~~~~</p>',NULL,'article',NULL,1,NULL,NULL,0,'normal',0,0,0.00,NULL,0,NULL,0,'2016-09-15 10:34:49','2016-09-15 10:34:49','撰写文章测试测试测试',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(31,'产品产品产品1111222','','/jpress/attachment/20160915/e395413dd5564386aeabf2cdfa738fe1.jpg','product',NULL,1,NULL,NULL,0,'normal',0,0,10000.00,NULL,0,NULL,0,'2016-09-15 10:51:07','2016-09-15 10:51:07','产品产品产品1111222',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.101 Safari/537.36',NULL,NULL),
	(33,'产品产品产品11112221','<p>产品描述产品描述产品描述产品描述产品描述产品描述产品描述</p>','/jpress/attachment/20160922/533c84431b8a49828b0a19150e819200.png','product',NULL,1,NULL,NULL,0,'normal',0,0,10000.00,NULL,0,NULL,0,'2016-09-15 10:53:29','2016-09-22 13:53:54','产品产品产品11112221',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.101 Safari/537.36',NULL,NULL),
	(34,'aaacxxx','<p>自动测量角膜厚度并显示，校正测量值，测量结果更加准确3D自动调整，自动拍摄（全自动/自动/手动）</p>',NULL,'product',NULL,1,NULL,NULL,0,'normal',0,0,0.00,NULL,0,NULL,0,'2016-10-13 19:43:07','2016-10-13 19:44:10','aaacxxx',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(35,NULL,'自动测量角膜厚度并显示，校正测量值，测量结果更加准确3D自动调整，自动拍摄（全自动/自动/手动）','/jpress/attachment/a648751d04f34dd4bfbe82d98ef548b6.png','product',NULL,NULL,NULL,NULL,0,'draft',0,0,0.00,NULL,0,NULL,0,'2016-10-13 20:02:33',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(36,'非接触式气流眼压计','自动测量角膜厚度并显示，校正测量值，测量结果更加准确3D自动调整，自动拍摄（全自动/自动/手动）','/attachment/027b9d5b12da477aad42a0691441b29b.png',NULL,NULL,NULL,NULL,NULL,0,'draft',0,0,0.00,NULL,0,NULL,0,'2016-10-18 12:42:55','2016-10-18 12:42:55','8739d809053441e4b81b848c16d9d909',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(37,'非接触式气流眼压计','自动测量角膜厚度并显示，校正测量值，测量结果更加准确3D自动调整，自动拍摄（全自动/自动/手动）','/attachment/ba647b90d65b4aa2b0f03a967d489ec6.png',NULL,NULL,NULL,NULL,NULL,0,'draft',0,0,0.00,NULL,0,NULL,0,'2016-10-18 12:48:17','2016-10-18 12:48:17','92f8aaaaf2bd42b6abf130e70873e34b',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(38,'非接触式气流眼压计','自动测量角膜厚度并显示，校正测量值，测量结果更加准确3D自动调整，自动拍摄（全自动/自动/手动）','/attachment/f7243413c59a4d1784d8f57ee517e9d9.png','product',NULL,NULL,NULL,NULL,0,'draft',0,0,0.00,NULL,0,NULL,0,'2016-10-18 12:50:33','2016-10-18 12:50:33','b4ad6eaf599a499691dd5f369f1942de',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*!40000 ALTER TABLE `e_content` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table e_mapping
# ------------------------------------------------------------

DROP TABLE IF EXISTS `e_mapping`;

CREATE TABLE `e_mapping` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `content_id` bigint(20) unsigned NOT NULL,
  `taxonomy_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `taxonomy_id` (`taxonomy_id`),
  KEY `content_id` (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `e_mapping` WRITE;
/*!40000 ALTER TABLE `e_mapping` DISABLE KEYS */;

INSERT INTO `e_mapping` (`id`, `content_id`, `taxonomy_id`)
VALUES
	(2,5,2),
	(3,14,5),
	(4,18,13),
	(5,18,10),
	(6,19,13),
	(7,19,12),
	(11,13,18),
	(12,20,19),
	(14,15,8),
	(15,21,15),
	(16,22,15),
	(18,23,5),
	(20,6,1),
	(21,6,2),
	(22,6,3),
	(25,17,1),
	(26,17,2),
	(27,26,2),
	(32,27,1),
	(33,27,2),
	(48,28,29),
	(49,30,35),
	(50,30,36),
	(51,30,37),
	(52,30,38),
	(53,31,2),
	(55,33,1);

/*!40000 ALTER TABLE `e_mapping` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table e_metadata
# ------------------------------------------------------------

DROP TABLE IF EXISTS `e_metadata`;

CREATE TABLE `e_metadata` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` text,
  `object_type` varchar(32) DEFAULT NULL,
  `object_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `e_metadata` WRITE;
/*!40000 ALTER TABLE `e_metadata` DISABLE KEYS */;

INSERT INTO `e_metadata` (`id`, `meta_key`, `meta_value`, `object_type`, `object_id`)
VALUES
	(1,'company_phone','186xx','user',1),
	(2,'company_type',NULL,'user',1),
	(3,'company_des',NULL,'user',1),
	(4,'company_address',NULL,'user',1),
	(5,'factory','','content',16),
	(6,'approval_number','','content',16),
	(7,'product_count','','content',16),
	(8,'name','','content',16),
	(9,'product_specification','','content',16),
	(10,'market_prices','','content',16),
	(11,'category','','content',16),
	(12,'product_name','','content',16),
	(13,'logistics_info','','content',16),
	(14,'factory',NULL,'content',17),
	(15,'approval_number',NULL,'content',17),
	(16,'product_count',NULL,'content',17),
	(17,'name','','content',17),
	(18,'product_specification',NULL,'content',17),
	(19,'market_prices',NULL,'content',17),
	(20,'category',NULL,'content',17),
	(21,'product_name',NULL,'content',17),
	(22,'logistics_info',NULL,'content',17),
	(23,'address','北京市海淀区上地三街','content',13),
	(24,'director','A','content',13),
	(25,'vice-director','B','content',13),
	(26,'address','XXX','content',20),
	(27,'director','X','content',20),
	(28,'vice-director','X1','content',20),
	(29,'unit','20分钟/次','content',15),
	(30,'codeNumber','11111','content',15),
	(31,'project_type','222','content',22),
	(32,'tender_character','333','content',22),
	(33,'announcement_city','555','content',22),
	(34,'announcement_type','111','content',22),
	(35,'announcement_province','444','content',22),
	(36,'company_phone','010-123321','user',2),
	(37,'company_type','厂家','user',2),
	(38,'company_des','北京网络科技是世领先的医疗技术公司之一。公司提供用于诊断和治疗眼疾的完整的临床解决方案。在显微外科领域，公司提供创新的可视化解决方案。蔡司的医疗科技系列产品通过未来科技~~','user',2),
	(39,'company_main_business',NULL,'user',2),
	(40,'company_address','北京市海淀区上地7街','user',2),
	(41,'company_phone','010-123321','user',3),
	(42,'company_type','厂家','user',3),
	(43,'company_des','北京网络科技是世领先的医疗技术公司之一。公司提供用于诊断和治疗眼疾的完整的临床解决方案。在显微外科领域，公司提供创新的可视化解决方案。蔡司的医疗科技系列产品通过未来科技~~','user',3),
	(44,'company_main_business',NULL,'user',3),
	(45,'company_address','北京市海淀区上地7街','user',3),
	(46,'company_phone','010-123321','user',9),
	(47,'company_type','厂家','user',9),
	(48,'company_des','北京网络科技是世领先的医疗技术公司之一。公司提供用于诊断和治疗眼疾的完整的临床解决方案。在显微外科领域，公司提供创新的可视化解决方案。蔡司的医疗科技系列产品通过未来科技~~','user',9),
	(49,'company_main_business',NULL,'user',9),
	(50,'company_address','北京市海淀区上地7街','user',9),
	(51,'company_phone','010-123321','user',10),
	(52,'company_type','sp','user',10),
	(53,'company_des','北京网络科技是世领先的医疗技术公司之一。公司提供用于诊断和治疗眼疾的完整的临床解决方案。在显微外科领域，公司提供创新的可视化解决方案。蔡司的医疗科技系列产品通过未来科技~~','user',10),
	(54,'company_main_business',NULL,'user',10),
	(55,'company_address','北京市海淀区上地7街','user',10),
	(56,'company_main_business',NULL,'user',1),
	(57,'company_thumbnail','/attachment/20160907/21daa9a874c645978ccff5664474d0dc.jpg','user',1),
	(58,'company_phone','010-123321','user',11),
	(59,'company_type','厂家','user',11),
	(60,'company_des','北京网络科技是世领先的医疗技术公司之一。公司提供用于诊断和治疗眼疾的完整的临床解决方案。在显微外科领域，公司提供创新的可视化解决方案。蔡司的医疗科技系列产品通过未来科技~~','user',11),
	(61,'company_main_business',NULL,'user',11),
	(62,'company_address','北京市海淀区上地7街','user',11),
	(63,'company_phone','010-123321','user',12),
	(64,'company_type','经销商','user',12),
	(65,'company_des','北京网络科技是世领先的医疗技术公司之一。公司提供用于诊断和治疗眼疾的完整的临床解决方案。在显微外科领域，公司提供创新的可视化解决方案。蔡司的医疗科技系列产品通过未来科技~~','user',12),
	(66,'company_main_business',NULL,'user',12),
	(67,'company_address','北京市海淀区上地7街','user',12),
	(68,'company_phone','010-123321','user',13),
	(69,'company_type','厂家','user',13),
	(70,'company_des','北京网络科技是世领先的医疗技术公司之一。公司提供用于诊断和治疗眼疾的完整的临床解决方案。在显微外科领域，公司提供创新的可视化解决方案。蔡司的医疗科技系列产品通过未来科技~~','user',13),
	(71,'company_main_business',NULL,'user',13),
	(72,'company_address','北京市海淀区上地7街','user',13),
	(73,'company_icon','/attachment/20160907/324ff03c78e94d9087b04e77d0d9923a.png','user',1),
	(74,'company_qq','460099099','user',1),
	(75,'consult_count','1','content',17),
	(76,'zyqy','true','user',1),
	(77,'consult_count','2','content',5),
	(78,'factory','生产厂家aaaa','content',6),
	(79,'approval_number',NULL,'content',6),
	(80,'product_count',NULL,'content',6),
	(81,'product_specification',NULL,'content',6),
	(82,'market_prices',NULL,'content',6),
	(83,'category',NULL,'content',6),
	(84,'product_name',NULL,'content',6),
	(85,'order_quantities',NULL,'content',6),
	(86,'logistics_info',NULL,'content',6),
	(87,'order_quantities',NULL,'content',17),
	(88,'factory',NULL,'content',26),
	(89,'product_count',NULL,'content',26),
	(90,'product_name','产品111111','content',26),
	(91,'logistics_info',NULL,'content',26),
	(92,'thumbnail5',NULL,'content',26),
	(93,'thumbnail4',NULL,'content',26),
	(94,'approval_number',NULL,'content',26),
	(95,'product_specification',NULL,'content',26),
	(96,'market_prices',NULL,'content',26),
	(97,'category',NULL,'content',26),
	(98,'thumbnail3',NULL,'content',26),
	(99,'thumbnail2','/jpress/attachment/20160907/cc120c125bb841ee9163729e2e8c17c1.png','content',26),
	(100,'order_quantities',NULL,'content',26),
	(101,'thumbnail1','/jpress/attachment/20160907/6ce828b8641a4decbfe9edee0f046523.jpg','content',26),
	(102,'factory',NULL,'content',27),
	(103,'product_count',NULL,'content',27),
	(104,'product_name','aaaaaaa','content',27),
	(105,'logistics_info',NULL,'content',27),
	(106,'thumbnail5',NULL,'content',27),
	(107,'thumbnail4',NULL,'content',27),
	(108,'approval_number',NULL,'content',27),
	(109,'product_specification','ccc','content',27),
	(110,'market_prices',NULL,'content',27),
	(111,'category',NULL,'content',27),
	(112,'thumbnail3',NULL,'content',27),
	(113,'thumbnail2',NULL,'content',27),
	(114,'order_quantities',NULL,'content',27),
	(115,'thumbnail1',NULL,'content',27),
	(116,'company_icon',NULL,'user',10),
	(117,'company_thumbnail',NULL,'user',10),
	(118,'zyqy',NULL,'user',10),
	(119,'company_phone',NULL,'user',14),
	(120,'company_type','dealer','user',14),
	(121,'company_des',NULL,'user',14),
	(122,'company_main_business',NULL,'user',14),
	(123,'company_icon',NULL,'user',14),
	(124,'company_thumbnail',NULL,'user',14),
	(125,'zyqy',NULL,'user',14),
	(126,'company_address',NULL,'user',14),
	(127,'factory',NULL,'content',28),
	(128,'approval_number',NULL,'content',28),
	(129,'product_count',NULL,'content',28),
	(130,'product_specification',NULL,'content',28),
	(131,'market_prices',NULL,'content',28),
	(132,'category',NULL,'content',28),
	(133,'product_name',NULL,'content',28),
	(134,'order_quantities',NULL,'content',28),
	(135,'logistics_info',NULL,'content',28),
	(136,'product_sp','<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>产品实拍产品实拍产品实拍产品实拍产品实拍产品实拍产品实拍产品实拍产品实拍产品实拍产品实拍产品实拍产品实拍产品实拍产品实拍产品实拍产品实拍产品实拍产品实拍产品实拍产品实拍产品实拍</p>\n<p>&nbsp;</p>\n<p>产品实拍产品实拍产品实拍产品实拍产品实拍产品实拍产品实拍产品实拍产品实拍产品实拍产品实拍产品实拍产品实拍产品实拍产品实拍产品实拍产品实拍产品实拍产品实拍产品实拍产品实拍产品实拍</p>\n<p>&nbsp;</p>\n<p>产品实拍产品实拍产品实拍产品实拍产品实拍产品实拍产品实拍产品实拍产品实拍产品实拍产品实拍产品实拍产品实拍产品实拍产品实拍产品实拍产品实拍产品实拍产品实拍产品实拍产品实拍产品实拍</p>\n</body>\n</html>','content',28),
	(137,'product_cs','<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>规格参数规格参数规格参数规格参数规格参数规格参数规格参数规格参数规格参数规格参数规格参数规格参数规格参数规格参数规格参数规格参数规格参数规格参数规格参数规格参数</p>\n<p>规格参数规格参数规格参数规格参数规格参数规格参数规格参数规格参数规格参数规格参数规格参数规格参数规格参数规格参数规格参数规格参数规格参数规格参数规格参数规格参数</p>\n<p>规格参数规格参数规格参数规格参数规格参数规格参数规格参数规格参数规格参数规格参数规格参数规格参数规格参数规格参数规格参数规格参数规格参数规格参数规格参数规格参数</p>\n</body>\n</html>','content',28),
	(138,'product_qd','<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>商品清单商品清单商品清单商品清单商品清单商品清单商品清单商品清单商品清单商品清单商品清单商品清单商品清单商品清单商品清单商品清单商品清单商品清单商品清单商品清单商品清单</p>\n<p>商品清单商品清单商品清单商品清单商品清单商品清单商品清单商品清单商品清单商品清单商品清单商品清单商品清单商品清单商品清单商品清单商品清单商品清单商品清单商品清单商品清单</p>\n<p>商品清单商品清单商品清单商品清单商品清单商品清单商品清单商品清单商品清单商品清单商品清单商品清单商品清单商品清单商品清单商品清单商品清单商品清单商品清单商品清单商品清单</p>\n<p>&nbsp;</p>\n<p>商品清单商品清单商品清单商品清单商品清单商品清单商品清单商品清单商品清单商品清单商品清单商品清单商品清单商品清单商品清单商品清单商品清单商品清单商品清单商品清单商品清单</p>\n</body>\n</html>','content',28),
	(139,'factory','厂家222','content',31),
	(140,'product_count','10000','content',31),
	(141,'product_name','产品名称11','content',31),
	(142,'logistics_info','物流说明物流说明物流说明物流说明物流说明物流说明物流说明','content',31),
	(143,'product_sp','<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>产品实拍产品实拍产品实拍产品实拍产品实拍产品实拍</p>\n<p><img src=\"/jpress/attachment/20160915/e395413dd5564386aeabf2cdfa738fe1.jpg\" alt=\"\" width=\"400\" height=\"300\" /></p>\n<p>产品实拍产品实拍产品实拍产品实拍</p>\n</body>\n</html>','content',31),
	(144,'thumbnail5',NULL,'content',31),
	(145,'thumbnail4',NULL,'content',31),
	(146,'approval_number','文号xxcc','content',31),
	(147,'product_specification','产品规格22','content',31),
	(148,'market_prices','100000','content',31),
	(149,'category','分类11','content',31),
	(150,'thumbnail3',NULL,'content',31),
	(151,'product_cs','<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>规格参数规格参数规格参数规格参数规格参数规格参数规格参数</p>\n</body>\n</html>','content',31),
	(152,'thumbnail2',NULL,'content',31),
	(153,'order_quantities','100','content',31),
	(154,'thumbnail1',NULL,'content',31),
	(155,'product_qd','<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>包装清单包装清单包装清单包装清单包装清单包装清单</p>\n<p>包装清单包装清单包装清单包装清单包装清单</p>\n<p>包装清单包装清单包装清单包装清单包装清单包装清单</p>\n</body>\n</html>','content',31),
	(156,'factory','厂家222','content',33),
	(157,'product_count','10000','content',33),
	(158,'product_name','产品名称11','content',33),
	(159,'logistics_info','物流说明物流说明物流说明物流说明物流说明物流说明物流说明','content',33),
	(160,'product_sp','<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>产品实拍产品实拍产品实拍产品实拍产品实拍产品实拍</p>\n<p><img src=\"/jpress/attachment/20160915/e395413dd5564386aeabf2cdfa738fe1.jpg\" alt=\"\" width=\"400\" height=\"300\" /></p>\n<p>产品实拍产品实拍产品实拍产品实拍</p>\n</body>\n</html>','content',33),
	(161,'thumbnail5',NULL,'content',33),
	(162,'thumbnail4',NULL,'content',33),
	(163,'approval_number','文号xxcc','content',33),
	(164,'product_specification','产品规格22','content',33),
	(165,'market_prices','100000','content',33),
	(166,'category','分类11','content',33),
	(167,'thumbnail3',NULL,'content',33),
	(168,'product_cs','<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>规格参数规格参数规格参数规格参数规格参数规格参数规格参数</p>\n</body>\n</html>','content',33),
	(169,'thumbnail2',NULL,'content',33),
	(170,'order_quantities','100','content',33),
	(171,'thumbnail1',NULL,'content',33),
	(172,'product_qd','<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>包装清单包装清单包装清单包装清单包装清单包装清单</p>\n<p>包装清单包装清单包装清单包装清单包装清单</p>\n<p>包装清单包装清单包装清单包装清单包装清单包装清单</p>\n</body>\n</html>','content',33),
	(173,'thumbnail01','/attachment/c339ecc24e624ae29737a476bbc166b7.png','content',34),
	(174,'产品属性','<table><tbody><tr><td>产品名称</td><td>非接触式气流眼压计</td></tr><tr><td>型号</td><td>TX-20&TX-20P</td></tr><tr><td>生产厂家</td><td>日本佳能</td></tr><tr><td>彩页</td></tr><tr><td>注册证</td></tr><tr><td>代理商信息</td></tr><tr><td>同类产品对比</td></tr><tr><td>其他相关资料</td></tr></tbody></table>','content',34),
	(175,'主要参数','<table><tbody><tr><td>检查类型</td><td>气动</td></tr><tr><td>工作距离</td><td>11mm</td></tr><tr><td>检查范围</td><td>0-60mm/Hg</td></tr><tr></tr><tr><td>补偿范围</td><td>0-99.9mm/Hg</td></tr><tr><td>测量精度</td><td>0.1mm/Hg</td></tr><tr><td>观察范围</td><td>13.2X10mm或更大</td></tr><tr><td>移动范围</td><td>前后 40mm</td></tr><tr></tr><tr></tr><tr></tr><tr><td>打印</td><td>热敏打印 自动切纸  纸宽58mm</td></tr><tr><td>数据接口</td><td>USB ；RS-232C ；LAN </td></tr><tr><td>显示器</td><td>5.7英寸（14.5cm）；彩色液晶屏；可倾斜</td></tr><tr><td>显示时限</td><td>5\'/10\'/15\'/关闭  4档</td></tr><tr><td>电力供应</td><td>100-240V; 50/60Hz ;0.4-0.8A</td></tr><tr><td>尺寸 </td><td>260X490X500mm</td></tr><tr><td>重量</td><td>15Kg</td></tr></tbody></table>','content',34),
	(176,'产品配置','<table><tbody><tr><td>TX-20  TX-20非接触眼压计主机</td><td>1 台</td></tr><tr><td>包括 : 1. Power supply cable电源线</td><td>1根</td></tr><tr><td>2. Chin rest paper下颌托纸</td><td>100张</td></tr><tr><td>3. Dust cover防尘套 </td><td>1张</td></tr><tr><td>4. Printing paper打印纸 </td><td>2卷</td></tr><tr><td>5. Nozzle cap 喷气头盖</td><td>1个</td></tr><tr><td>(2)  LS-TY2A电动升降桌 (国产) </td><td>1 台</td></tr></tbody></table>','content',34),
	(177,'factory',NULL,'content',34),
	(178,'product_sp','<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n\n</body>\n</html>','content',34),
	(179,'approval_number',NULL,'content',34),
	(180,'product_count',NULL,'content',34),
	(181,'product_specification',NULL,'content',34),
	(182,'market_prices',NULL,'content',34),
	(183,'category',NULL,'content',34),
	(184,'product_cs','<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n\n</body>\n</html>','content',34),
	(185,'product_name',NULL,'content',34),
	(186,'order_quantities',NULL,'content',34),
	(187,'logistics_info',NULL,'content',34),
	(188,'product_qd','<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n\n</body>\n</html>','content',34),
	(189,'thumbnail1','/jpress/attachment/a648751d04f34dd4bfbe82d98ef548b6.png','content',35),
	(190,'product_name','非接触式气流眼压计','content',35),
	(191,'product_specification','TX-20&TX-20P','content',35),
	(192,'factory','日本佳能','content',35),
	(193,'product_cs','<table><tbody><tr><td>检查类型</td><td>气动</td></tr><tr><td>工作距离</td><td>11mm</td></tr><tr><td>检查范围</td><td>0-60mm/Hg</td></tr><tr></tr><tr><td>补偿范围</td><td>0-99.9mm/Hg</td></tr><tr><td>测量精度</td><td>0.1mm/Hg</td></tr><tr><td>观察范围</td><td>13.2X10mm或更大</td></tr><tr><td>移动范围</td><td>前后 40mm</td></tr><tr></tr><tr></tr><tr></tr><tr><td>打印</td><td>热敏打印 自动切纸  纸宽58mm</td></tr><tr><td>数据接口</td><td>USB ；RS-232C ；LAN </td></tr><tr><td>显示器</td><td>5.7英寸（14.5cm）；彩色液晶屏；可倾斜</td></tr><tr><td>显示时限</td><td>5\'/10\'/15\'/关闭  4档</td></tr><tr><td>电力供应</td><td>100-240V; 50/60Hz ;0.4-0.8A</td></tr><tr><td>尺寸 </td><td>260X490X500mm</td></tr><tr><td>重量</td><td>15Kg</td></tr></tbody></table>','content',35),
	(194,'product_qd','<table><tbody><tr><td>TX-20  TX-20非接触眼压计主机</td><td>1 台</td></tr><tr><td>包括 : 1. Power supply cable电源线</td><td>1根</td></tr><tr><td>2. Chin rest paper下颌托纸</td><td>100张</td></tr><tr><td>3. Dust cover防尘套 </td><td>1张</td></tr><tr><td>4. Printing paper打印纸 </td><td>2卷</td></tr><tr><td>5. Nozzle cap 喷气头盖</td><td>1个</td></tr><tr><td>(2)  LS-TY2A电动升降桌 (国产) </td><td>1 台</td></tr></tbody></table>','content',35),
	(195,'thumbnail0','/jpress/attachment/027b9d5b12da477aad42a0691441b29b.png','content',NULL),
	(196,'product_qd','<table><tbody><tr><td>TX-20  TX-20非接触眼压计主机</td><td>1 台</td></tr><tr><td>包括 : 1. Power supply cable电源线</td><td>1根</td></tr><tr><td>2. Chin rest paper下颌托纸</td><td>100张</td></tr><tr><td>3. Dust cover防尘套 </td><td>1张</td></tr><tr><td>4. Printing paper打印纸 </td><td>2卷</td></tr><tr><td>5. Nozzle cap 喷气头盖</td><td>1个</td></tr><tr><td>(2)  LS-TY2A电动升降桌 (国产) </td><td>1 台</td></tr></tbody></table>','content',36),
	(197,'product_cs','<table><tbody><tr><td>检查类型</td><td>气动</td></tr><tr><td>工作距离</td><td>11mm</td></tr><tr><td>检查范围</td><td>0-60mm/Hg</td></tr><tr></tr><tr><td>补偿范围</td><td>0-99.9mm/Hg</td></tr><tr><td>测量精度</td><td>0.1mm/Hg</td></tr><tr><td>观察范围</td><td>13.2X10mm或更大</td></tr><tr><td>移动范围</td><td>前后 40mm</td></tr><tr></tr><tr></tr><tr></tr><tr><td>打印</td><td>热敏打印 自动切纸  纸宽58mm</td></tr><tr><td>数据接口</td><td>USB ；RS-232C ；LAN </td></tr><tr><td>显示器</td><td>5.7英寸（14.5cm）；彩色液晶屏；可倾斜</td></tr><tr><td>显示时限</td><td>5\'/10\'/15\'/关闭  4档</td></tr><tr><td>电力供应</td><td>100-240V; 50/60Hz ;0.4-0.8A</td></tr><tr><td>尺寸 </td><td>260X490X500mm</td></tr><tr><td>重量</td><td>15Kg</td></tr></tbody></table>','content',36),
	(198,'product_name','非接触式气流眼压计','content',36),
	(199,'product_specification','TX-20&TX-20P','content',36),
	(200,'factory','日本佳能','content',36),
	(201,'approval_number',NULL,'content',36),
	(202,'thumbnail0','/jpress/attachment/ba647b90d65b4aa2b0f03a967d489ec6.png','content',NULL),
	(203,'product_qd','<table><tbody><tr><td>TX-20  TX-20非接触眼压计主机</td><td>1 台</td></tr><tr><td>包括 : 1. Power supply cable电源线</td><td>1根</td></tr><tr><td>2. Chin rest paper下颌托纸</td><td>100张</td></tr><tr><td>3. Dust cover防尘套 </td><td>1张</td></tr><tr><td>4. Printing paper打印纸 </td><td>2卷</td></tr><tr><td>5. Nozzle cap 喷气头盖</td><td>1个</td></tr><tr><td>(2)  LS-TY2A电动升降桌 (国产) </td><td>1 台</td></tr></tbody></table>','content',37),
	(204,'product_cs','<table><tbody><tr><td>检查类型</td><td>气动</td></tr><tr><td>工作距离</td><td>11mm</td></tr><tr><td>检查范围</td><td>0-60mm/Hg</td></tr><tr></tr><tr><td>补偿范围</td><td>0-99.9mm/Hg</td></tr><tr><td>测量精度</td><td>0.1mm/Hg</td></tr><tr><td>观察范围</td><td>13.2X10mm或更大</td></tr><tr><td>移动范围</td><td>前后 40mm</td></tr><tr></tr><tr></tr><tr></tr><tr><td>打印</td><td>热敏打印 自动切纸  纸宽58mm</td></tr><tr><td>数据接口</td><td>USB ；RS-232C ；LAN </td></tr><tr><td>显示器</td><td>5.7英寸（14.5cm）；彩色液晶屏；可倾斜</td></tr><tr><td>显示时限</td><td>5\'/10\'/15\'/关闭  4档</td></tr><tr><td>电力供应</td><td>100-240V; 50/60Hz ;0.4-0.8A</td></tr><tr><td>尺寸 </td><td>260X490X500mm</td></tr><tr><td>重量</td><td>15Kg</td></tr></tbody></table>','content',37),
	(205,'product_name','非接触式气流眼压计','content',37),
	(206,'product_specification','TX-20&TX-20P','content',37),
	(207,'factory','日本佳能','content',37),
	(208,'approval_number',NULL,'content',37),
	(209,'thumbnail0','/jpress/attachment/f7243413c59a4d1784d8f57ee517e9d9.png','content',NULL),
	(210,'product_qd','<table><tbody><tr><td>TX-20  TX-20非接触眼压计主机</td><td>1 台</td></tr><tr><td>包括 : 1. Power supply cable电源线</td><td>1根</td></tr><tr><td>2. Chin rest paper下颌托纸</td><td>100张</td></tr><tr><td>3. Dust cover防尘套 </td><td>1张</td></tr><tr><td>4. Printing paper打印纸 </td><td>2卷</td></tr><tr><td>5. Nozzle cap 喷气头盖</td><td>1个</td></tr><tr><td>(2)  LS-TY2A电动升降桌 (国产) </td><td>1 台</td></tr></tbody></table>','content',38),
	(211,'product_cs','<table><tbody><tr><td>检查类型</td><td>气动</td></tr><tr><td>工作距离</td><td>11mm</td></tr><tr><td>检查范围</td><td>0-60mm/Hg</td></tr><tr></tr><tr><td>补偿范围</td><td>0-99.9mm/Hg</td></tr><tr><td>测量精度</td><td>0.1mm/Hg</td></tr><tr><td>观察范围</td><td>13.2X10mm或更大</td></tr><tr><td>移动范围</td><td>前后 40mm</td></tr><tr></tr><tr></tr><tr></tr><tr><td>打印</td><td>热敏打印 自动切纸  纸宽58mm</td></tr><tr><td>数据接口</td><td>USB ；RS-232C ；LAN </td></tr><tr><td>显示器</td><td>5.7英寸（14.5cm）；彩色液晶屏；可倾斜</td></tr><tr><td>显示时限</td><td>5\'/10\'/15\'/关闭  4档</td></tr><tr><td>电力供应</td><td>100-240V; 50/60Hz ;0.4-0.8A</td></tr><tr><td>尺寸 </td><td>260X490X500mm</td></tr><tr><td>重量</td><td>15Kg</td></tr></tbody></table>','content',38),
	(212,'product_name','非接触式气流眼压计','content',38),
	(213,'product_specification','TX-20&TX-20P','content',38),
	(214,'factory','日本佳能','content',38),
	(215,'approval_number',NULL,'content',38);

/*!40000 ALTER TABLE `e_metadata` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table e_option
# ------------------------------------------------------------

DROP TABLE IF EXISTS `e_option`;

CREATE TABLE `e_option` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_key` varchar(128) DEFAULT NULL,
  `option_value` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `e_option` WRITE;
/*!40000 ALTER TABLE `e_option` DISABLE KEYS */;

INSERT INTO `e_option` (`id`, `option_key`, `option_value`)
VALUES
	(1,'web_name','EyeSelf'),
	(2,'web_template_id','eyeself'),
	(3,'jpblog_wechat_pay_tips',NULL),
	(4,'autosave','jpblog_wechat_pay_enable,jpblog_wechat_pay_image,jpblog_banner_image,jpblog_banner_url,jpblog_wechat_pay_tips'),
	(5,'jpblog_wechat_pay_image',NULL),
	(6,'jpblog_statistical_code',NULL),
	(7,'jpblog_wechat_pay_enable',NULL),
	(8,'jpblog_banner_url',NULL),
	(9,'ucode','885dd167fd59e9597810457564d66e2b'),
	(10,'jpblog_banner_image',NULL),
	(11,'pj_banner_04_link',NULL),
	(12,'pj_brand_02',NULL),
	(13,'zlsb_banner_04_link',NULL),
	(14,'oee_banner_04_link',NULL),
	(15,'eyeself_index_slide1_link','http://www.baidu.com'),
	(16,'sssb_brand_01_link',NULL),
	(17,'hc_brand_01_link',NULL),
	(18,'eyeself_index_nav5_link',NULL),
	(19,'hc_banner_01_link',NULL),
	(20,'hc_banner_02_link',NULL),
	(21,'zlsb_brand_04',NULL),
	(22,'oee_banner_02_link',NULL),
	(23,'zlsb_brand_02',NULL),
	(24,'zlsb_brand_03_link',NULL),
	(25,'eyeself_index_slide1','/attachment/20160915/56b7c29d378d448da864fe69463d8c87.jpg'),
	(26,'zlsb_brand_03',NULL),
	(27,'pj_brand_03_link',NULL),
	(28,'sssb_brand_04',NULL),
	(29,'eyeself_index_nav4',NULL),
	(30,'eyeself_index_nav5',NULL),
	(31,'sssb_banner_02_link',NULL),
	(32,'sssb_brand_02',NULL),
	(33,'sssb_brand_03',NULL),
	(34,'oee_brand_04',NULL),
	(35,'hc_brand_04',NULL),
	(36,'oee_brand_02',NULL),
	(37,'oee_brand_03',NULL),
	(38,'pj_brand_03',NULL),
	(39,'eyeself_index_slide2','/attachment/20160915/d5bd40ffb59e48f1bd50915fcb19a104.jpg'),
	(40,'pj_brand_04',NULL),
	(41,'eyeself_index_slide3',NULL),
	(42,'eyeself_index_slide4',NULL),
	(43,'eyeself_index_slide5',NULL),
	(44,'eyeself_index_nav3_link',NULL),
	(45,'oee_banner_02',NULL),
	(46,'zlsb_banner_02',NULL),
	(47,'pj_banner_01_link',NULL),
	(48,'oee_banner_01_link',NULL),
	(49,'oee_banner_01',NULL),
	(50,'zlsb_banner_01',NULL),
	(51,'eyeself_index_slide3_link',NULL),
	(52,'zlsb_banner_01_link',NULL),
	(53,'hc_brand_03',NULL),
	(54,'hc_brand_02',NULL),
	(55,'pj_brand_01_link',NULL),
	(56,'hc_banner_04_link',NULL),
	(57,'eyeself_index_nav1','/attachment/20160915/68c6af1d944343f5945de52af14370fb.jpg'),
	(58,'eyeself_index_nav2','/attachment/20160915/8a37d003b2b74b729d328f41a7bd61e7.jpg'),
	(59,'eyeself_index_nav3',NULL),
	(60,'oee_brand_01_link',NULL),
	(61,'pj_banner_02_link',NULL),
	(62,'eyeself_index_slide4_link',NULL),
	(63,'eyeself_index_nav2_link','http://www.baidu.com'),
	(64,'sssb_brand_03_link',NULL),
	(65,'sssb_banner_02',NULL),
	(66,'eyeself_index_slide2_link',NULL),
	(67,'zlsb_banner_02_link',NULL),
	(68,'pj_banner_02',NULL),
	(69,'sssb_banner_01',NULL),
	(70,'eyeself_index_slide5_link',NULL),
	(71,'sssb_banner_04_link',NULL),
	(72,'eyeself_index_nav1_link',NULL),
	(73,'hc_brand_03_link',NULL),
	(74,'sssb_banner_01_link',NULL),
	(75,'hc_banner_01',NULL),
	(76,'hc_banner_02',NULL),
	(77,'oee_brand_03_link',NULL),
	(78,'pj_banner_01',NULL),
	(79,'zlsb_brand_01_link',NULL),
	(80,'notify_admin_by_email_when_user_registed',NULL),
	(81,'notify_admin_by_content_email_when_user_registed',NULL),
	(82,'sms_app_provider','sms_provider_alidayu'),
	(83,'notify_parent_author_content_by_email_when_has_comment',NULL),
	(84,'notify_author_content_by_email_when_has_comment',NULL),
	(85,'email_password',NULL),
	(86,'notify_parent_author_content_by_sms_when_has_comment',NULL),
	(87,'notify_author_content_by_sms_when_has_comment',NULL),
	(88,'notify_author_by_wechat_when_has_comment',NULL),
	(89,'sms_host',NULL),
	(90,'sms_app_key','23455604'),
	(91,'notify_admin_by_wechat_when_user_registed',NULL),
	(92,'email_usessl',NULL),
	(93,'email_username',NULL),
	(94,'notify_parent_author_content_by_wechat_when_has_comment',NULL),
	(95,'notify_admin_content_by_sms_when_user_registed',NULL),
	(96,'notify_author_content_by_sms_when_at',NULL),
	(97,'notify_author_by_email_when_has_comment',NULL),
	(98,'notify_author_content_by_wechat_when_at',NULL),
	(99,'notify_author_content_by_email_when_at',NULL),
	(100,'notify_admin_content_by_wechat_when_user_registed',NULL),
	(101,'notify_author_by_sms_when_has_comment',NULL),
	(102,'notify_admin_by_sms_when_user_registed',NULL),
	(103,'sms_app_secret','391f5f82ca9bd8c7fe7fe3b24312e2d0'),
	(104,'email_host',NULL),
	(105,'notify_author_content_by_wechat_when_has_comment',NULL),
	(106,'eyeself_logo_image',NULL),
	(107,'eyeself_hot_keywrod','产品|产品2');

/*!40000 ALTER TABLE `e_option` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table e_taxonomy
# ------------------------------------------------------------

DROP TABLE IF EXISTS `e_taxonomy`;

CREATE TABLE `e_taxonomy` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(512) DEFAULT NULL,
  `text` text,
  `slug` varchar(128) DEFAULT NULL,
  `type` varchar(32) DEFAULT NULL,
  `content_module` varchar(32) DEFAULT NULL,
  `content_count` int(11) unsigned DEFAULT '0',
  `order_number` int(11) DEFAULT NULL,
  `parent_id` bigint(20) unsigned DEFAULT NULL,
  `icon` varchar(128) DEFAULT NULL,
  `object_id` bigint(20) unsigned DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `lat` decimal(20,16) DEFAULT NULL,
  `lng` decimal(20,16) DEFAULT NULL,
  `meta_keywords` varchar(256) DEFAULT NULL,
  `meta_description` varchar(256) DEFAULT NULL,
  `flag` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `object_id` (`object_id`),
  KEY `content_module` (`content_module`),
  KEY `created` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `e_taxonomy` WRITE;
/*!40000 ALTER TABLE `e_taxonomy` DISABLE KEYS */;

INSERT INTO `e_taxonomy` (`id`, `title`, `text`, `slug`, `type`, `content_module`, `content_count`, `order_number`, `parent_id`, `icon`, `object_id`, `created`, `lat`, `lng`, `meta_keywords`, `meta_description`, `flag`)
VALUES
	(1,'眼科治疗设备',NULL,'zlsb','category','product',4,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(2,'眼科检查设备',NULL,'oee','category','product',5,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(3,'品牌1',NULL,'pp1','brand','product',1,NULL,0,'/jpress/templates/eyeself/assets/img/index_42-15.gif',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(4,'品牌2',NULL,'pp2','brand','product',0,NULL,0,'/jpress/templates/eyeself/assets/img/index_42-15.gif',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(5,'文章',NULL,'article','category','doc',2,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6,'科研报告',NULL,'report','category','doc',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(7,'建设方案',NULL,'scheme','category','doc',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(8,'北京',NULL,'beijing','city','fee',1,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(9,'上海',NULL,'shanghai','city','fee',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(10,'北京',NULL,'bj','city','business',1,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(11,'上海',NULL,'sh','city','business',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(12,'广州',NULL,'gz','city','business',1,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(13,'求购',NULL,'qiugou','category','business',2,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(15,'招标',NULL,'zhaobiao','category','business',1,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(16,'北京',NULL,'bj','city','group',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(17,'上海',NULL,'sh','city','group',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(18,'海淀',NULL,'hd','city','group',1,NULL,16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(19,'朝阳',NULL,'cy','city','group',1,NULL,16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(20,'大兴',NULL,'dx','city','group',0,NULL,16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(21,'黄埔',NULL,'hp','city','group',0,NULL,17,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(22,'长宁',NULL,'cn','city','group',0,NULL,17,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(23,'宝山',NULL,'bs','city','group',0,NULL,17,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(24,'1',NULL,NULL,NULL,NULL,0,NULL,23,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(25,'2',NULL,NULL,NULL,NULL,0,NULL,24,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(26,'医学11',NULL,'yx11','category','product',1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(27,' 医学22',NULL,'yx22','category','product',1,NULL,34,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(28,' 医学33',NULL,'yx33','category','product',1,NULL,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(29,'医学44',NULL,'yx44','category','product',1,NULL,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(30,'眼科手术设备',NULL,'sssb','category','product',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(31,'眼科耗材',NULL,'hc','category','product',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(32,'眼科配镜相关',NULL,'pj','category','product',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(33,'眼科配镜相关1',NULL,'pj11','category','product',0,NULL,32,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(34,'医学xx',NULL,'yxxx','category','product',0,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(35,'撰写文章测试测试测试',NULL,'撰写文章测试测试测试','tag','article',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(36,'撰写文章测试测试测试1',NULL,'撰写文章测试测试测试1','tag','article',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(37,'撰写文章测试测试测试2',NULL,'撰写文章测试测试测试2','tag','article',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(38,'撰写文章测试测试测试3',NULL,'撰写文章测试测试测试3','tag','article',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*!40000 ALTER TABLE `e_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table e_user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `e_user`;

CREATE TABLE `e_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(128) DEFAULT NULL,
  `password` varchar(128) DEFAULT NULL,
  `salt` varchar(32) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `phone` varchar(32) DEFAULT NULL,
  `nickname` varchar(128) DEFAULT NULL,
  `amount` decimal(10,2) unsigned DEFAULT '0.00',
  `gender` varchar(16) DEFAULT NULL,
  `role` varchar(32) DEFAULT 'visitor',
  `signature` varchar(2048) DEFAULT NULL,
  `content_count` int(11) unsigned DEFAULT '0',
  `comment_count` int(11) unsigned DEFAULT '0',
  `qq` varchar(16) DEFAULT NULL,
  `wechat` varchar(32) DEFAULT NULL,
  `weibo` varchar(64) DEFAULT NULL,
  `avatar` varchar(256) DEFAULT NULL,
  `status` varchar(32) DEFAULT 'normal',
  `created` datetime DEFAULT NULL,
  `create_source` varchar(128) DEFAULT NULL,
  `logged` datetime DEFAULT NULL,
  `activated` datetime DEFAULT NULL,
  `realname` varchar(128) DEFAULT NULL,
  `email_status` varchar(32) DEFAULT NULL,
  `mobile` varchar(32) DEFAULT NULL,
  `mobile_status` varchar(32) DEFAULT NULL,
  `telephone` varchar(32) DEFAULT NULL,
  `facebook` varchar(256) DEFAULT NULL,
  `linkedin` varchar(256) DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `company` varchar(256) DEFAULT NULL,
  `occupation` varchar(256) DEFAULT NULL,
  `address` varchar(256) DEFAULT NULL,
  `zipcode` varchar(128) DEFAULT NULL,
  `site` varchar(256) DEFAULT NULL,
  `graduateschool` varchar(256) DEFAULT NULL,
  `education` varchar(256) DEFAULT NULL,
  `idcardtype` varchar(128) DEFAULT NULL,
  `idcard` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `cell_number` (`phone`),
  KEY `status` (`status`),
  KEY `created` (`created`),
  KEY `content_count` (`content_count`),
  KEY `comment_count` (`comment_count`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `e_user` WRITE;
/*!40000 ALTER TABLE `e_user` DISABLE KEYS */;

INSERT INTO `e_user` (`id`, `username`, `password`, `salt`, `email`, `phone`, `nickname`, `amount`, `gender`, `role`, `signature`, `content_count`, `comment_count`, `qq`, `wechat`, `weibo`, `avatar`, `status`, `created`, `create_source`, `logged`, `activated`, `realname`, `email_status`, `mobile`, `mobile_status`, `telephone`, `facebook`, `linkedin`, `birthday`, `company`, `occupation`, `address`, `zipcode`, `site`, `graduateschool`, `education`, `idcardtype`, `idcard`)
VALUES
	(1,'admin','de2153fa30612bcd142e503cb5e3f86ebf27a019ee5e7c979879760505f80de9','40719293e411e9b',NULL,NULL,'超级管理员',0.00,'female','administrator','个人签名~~',23,3,NULL,NULL,NULL,'/attachment/20160907/c596c420d98843749461ae933fee5fda.jpg','activited','2016-08-16 11:09:57',NULL,'2016-11-19 10:34:55',NULL,NULL,NULL,'185',NULL,NULL,NULL,NULL,NULL,'北京网络科技1',NULL,NULL,NULL,'www.xxx.com',NULL,NULL,NULL,NULL),
	(2,NULL,NULL,NULL,NULL,NULL,'啊啊啊',0.00,NULL,'visitor',NULL,0,0,NULL,NULL,NULL,NULL,'normal','2016-09-04 10:31:52',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'北京网络科技2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(3,'a',NULL,NULL,NULL,NULL,NULL,0.00,NULL,'visitor',NULL,0,0,NULL,NULL,NULL,NULL,'normal','2016-09-04 10:35:20',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'北京网络科技3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(9,NULL,NULL,NULL,NULL,NULL,NULL,0.00,NULL,'visitor',NULL,0,0,NULL,NULL,NULL,NULL,'normal','2016-09-04 11:19:57',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'北京网络科技4',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(10,'c',NULL,NULL,NULL,NULL,NULL,0.00,NULL,'visitor',NULL,0,0,NULL,NULL,NULL,NULL,'normal','2016-09-04 11:21:52',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(11,NULL,NULL,NULL,NULL,NULL,NULL,0.00,NULL,'visitor',NULL,0,0,NULL,NULL,NULL,NULL,'normal','2016-09-04 11:27:40',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'北京网络科技6',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(12,NULL,NULL,NULL,NULL,NULL,NULL,0.00,NULL,'visitor',NULL,0,0,NULL,NULL,NULL,NULL,'normal','2016-09-04 11:31:43',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'北京网络科技7',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(13,NULL,NULL,NULL,NULL,NULL,NULL,0.00,NULL,'visitor',NULL,0,0,NULL,NULL,NULL,NULL,'normal','2016-09-04 11:32:46',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'北京网络科技8',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(14,'123123123','e44def65ab324cb031a45acf0568fa6815a563edc703b6f93d6b2166b1804c7d','144bead71428453a69e6d',NULL,NULL,'123123123',0.00,NULL,'visitor',NULL,0,0,NULL,NULL,NULL,NULL,'normal','2016-09-07 19:45:19','register','2016-09-07 19:45:19',NULL,NULL,NULL,'123123123',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(15,'18611220550','ee692600b1b835480b28ac915f0d198243992b08ac3d201bb10eec9bdf5ddac7','0bb4f6ec52b5f69a4f',NULL,NULL,'123',0.00,NULL,'visitor',NULL,0,0,NULL,NULL,NULL,NULL,'normal','2016-09-13 12:33:38','register','2016-09-13 18:38:51',NULL,NULL,NULL,'18611220550',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*!40000 ALTER TABLE `e_user` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
