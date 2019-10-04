-- MySQL dump 10.13  Distrib 5.7.20, for Win64 (x86_64)
--
-- Host: localhost    Database: ax
-- ------------------------------------------------------
-- Server version	5.7.20-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ax_ad`
--

DROP TABLE IF EXISTS `ax_ad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ax_ad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(63) NOT NULL DEFAULT '' COMMENT '广告标题',
  `link` varchar(255) NOT NULL DEFAULT '' COMMENT '所广告的商品页面或者活动页面链接地址',
  `url` varchar(255) NOT NULL COMMENT '广告宣传图片',
  `position` tinyint(3) DEFAULT '1' COMMENT '广告位置：1则是首页',
  `content` varchar(255) DEFAULT '' COMMENT '活动内容',
  `start_time` datetime DEFAULT NULL COMMENT '广告开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '广告结束时间',
  `enabled` tinyint(1) DEFAULT '0' COMMENT '是否启动',
  `add_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `deleted` tinyint(1) DEFAULT '0' COMMENT '逻辑删除',
  PRIMARY KEY (`id`),
  KEY `enabled` (`enabled`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='广告表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ax_ad`
--

LOCK TABLES `ax_ad` WRITE;
/*!40000 ALTER TABLE `ax_ad` DISABLE KEYS */;
INSERT INTO `ax_ad` VALUES (4,'测试广告','www.baidu.com','http://localhost:8080/wx/storage/fetch/z7a7nni9iav2pafgsyj0.jpg',1,'测试广告123',NULL,NULL,1,'2019-09-26 17:07:25','2019-09-26 17:07:25',0);
/*!40000 ALTER TABLE `ax_ad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ax_address`
--

DROP TABLE IF EXISTS `ax_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ax_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(63) NOT NULL DEFAULT '' COMMENT '收货人名称',
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户表的用户ID',
  `province` varchar(63) NOT NULL COMMENT '行政区域表的省ID',
  `city` varchar(63) NOT NULL COMMENT '行政区域表的市ID',
  `county` varchar(63) NOT NULL COMMENT '行政区域表的区县ID',
  `address_detail` varchar(127) NOT NULL DEFAULT '' COMMENT '详细收货地址',
  `area_code` char(6) DEFAULT NULL COMMENT '地区编码',
  `postal_code` char(6) DEFAULT NULL COMMENT '邮政编码',
  `tel` varchar(20) NOT NULL DEFAULT '' COMMENT '手机号码',
  `is_default` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否默认地址',
  `add_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `deleted` tinyint(1) DEFAULT '0' COMMENT '逻辑删除',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='收货地址表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ax_address`
--

LOCK TABLES `ax_address` WRITE;
/*!40000 ALTER TABLE `ax_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `ax_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ax_admin`
--

DROP TABLE IF EXISTS `ax_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ax_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(63) NOT NULL DEFAULT '' COMMENT '管理员名称',
  `password` varchar(63) NOT NULL DEFAULT '' COMMENT '管理员密码',
  `last_login_ip` varchar(63) DEFAULT '' COMMENT '最近一次登录IP地址',
  `last_login_time` datetime DEFAULT NULL COMMENT '最近一次登录时间',
  `avatar` varchar(255) DEFAULT '''' COMMENT '头像图片',
  `add_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `deleted` tinyint(1) DEFAULT '0' COMMENT '逻辑删除',
  `role_ids` varchar(127) DEFAULT '[]' COMMENT '角色列表',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COMMENT='管理员表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ax_admin`
--

LOCK TABLES `ax_admin` WRITE;
/*!40000 ALTER TABLE `ax_admin` DISABLE KEYS */;
INSERT INTO `ax_admin` VALUES (1,'admin123','$2a$10$.rEfyBb/GURD9P2p0fRg/OAJGloGNDkJS4lY0cQHeqDgsbdTylBpu','0:0:0:0:0:0:0:1','2019-09-29 14:13:33','https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif','2018-02-01 00:00:00','2019-09-29 14:13:33',0,'[1]'),(4,'promotion123','$2a$10$wDZLOLLnzZ1EFZ3ldZ1XFOUWDEX6TnQCUFdJz4g.PoMaLTzS8TjWq','',NULL,'https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif','2019-01-07 15:16:59','2019-01-07 15:17:34',0,'[3]'),(5,'mall123','$2a$10$aCtsc4rG6KmxQ59.IkYse.oRyKuwQoU2CPCmxSdB.d5nXq6aw/z4O','',NULL,'https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif','2019-01-07 15:17:25','2019-01-07 15:21:05',0,'[2]');
/*!40000 ALTER TABLE `ax_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ax_brand`
--

DROP TABLE IF EXISTS `ax_brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ax_brand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '品牌商名称',
  `desc` varchar(255) NOT NULL DEFAULT '' COMMENT '品牌商简介',
  `pic_url` varchar(255) NOT NULL DEFAULT '' COMMENT '品牌商页的品牌商图片',
  `sort_order` tinyint(3) DEFAULT '50',
  `floor_price` decimal(10,2) DEFAULT '0.00' COMMENT '品牌商的商品低价，仅用于页面展示',
  `add_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `deleted` tinyint(1) DEFAULT '0' COMMENT '逻辑删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1046006 DEFAULT CHARSET=utf8mb4 COMMENT='品牌商表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ax_brand`
--

LOCK TABLES `ax_brand` WRITE;
/*!40000 ALTER TABLE `ax_brand` DISABLE KEYS */;
INSERT INTO `ax_brand` VALUES (1046003,'测试品牌','测试专用','http://localhost:8080/wx/storage/fetch/roho3qleyqaz36vnkfcg.jpg',50,0.01,'2019-09-26 17:05:36','2019-09-26 17:05:36',1),(1046004,'高华','北欧产品','',50,0.00,'2019-09-29 14:14:46','2019-09-29 14:14:46',0),(1046005,'中山华让','灯具','',50,0.00,'2019-09-29 14:15:12','2019-09-29 14:15:12',0);
/*!40000 ALTER TABLE `ax_brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ax_cart`
--

DROP TABLE IF EXISTS `ax_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ax_cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '用户表的用户ID',
  `goods_id` int(11) DEFAULT NULL COMMENT '商品表的商品ID',
  `goods_sn` varchar(63) DEFAULT NULL COMMENT '商品编号',
  `goods_name` varchar(127) DEFAULT NULL COMMENT '商品名称',
  `product_id` int(11) DEFAULT NULL COMMENT '商品货品表的货品ID',
  `price` decimal(10,2) DEFAULT '0.00' COMMENT '商品货品的价格',
  `number` smallint(5) DEFAULT '0' COMMENT '商品货品的数量',
  `specifications` varchar(1023) DEFAULT NULL COMMENT '商品规格值列表，采用JSON数组格式',
  `checked` tinyint(1) DEFAULT '1' COMMENT '购物车中商品是否选择状态',
  `pic_url` varchar(255) DEFAULT NULL COMMENT '商品图片或者商品货品图片',
  `add_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `deleted` tinyint(1) DEFAULT '0' COMMENT '逻辑删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='购物车商品表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ax_cart`
--

LOCK TABLES `ax_cart` WRITE;
/*!40000 ALTER TABLE `ax_cart` DISABLE KEYS */;
INSERT INTO `ax_cart` VALUES (2,1,1181005,'67801','67801',254,448.00,1,'[\"10\"]',1,'','2019-09-29 14:42:11','2019-09-29 14:42:11',0);
/*!40000 ALTER TABLE `ax_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ax_category`
--

DROP TABLE IF EXISTS `ax_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ax_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(63) NOT NULL DEFAULT '' COMMENT '类目名称',
  `keywords` varchar(1023) NOT NULL DEFAULT '' COMMENT '类目关键字，以JSON数组格式',
  `desc` varchar(255) DEFAULT '' COMMENT '类目广告语介绍',
  `pid` int(11) NOT NULL DEFAULT '0' COMMENT '父类目ID',
  `icon_url` varchar(255) DEFAULT '' COMMENT '类目图标',
  `pic_url` varchar(255) DEFAULT '' COMMENT '类目图片',
  `level` varchar(255) DEFAULT 'L1',
  `sort_order` tinyint(3) DEFAULT '50' COMMENT '排序',
  `add_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `deleted` tinyint(1) DEFAULT '0' COMMENT '逻辑删除',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=1036016 DEFAULT CHARSET=utf8mb4 COMMENT='类目表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ax_category`
--

LOCK TABLES `ax_category` WRITE;
/*!40000 ALTER TABLE `ax_category` DISABLE KEYS */;
INSERT INTO `ax_category` VALUES (1036007,'测试类','测试','测试专用',0,'http://localhost:8080/wx/storage/fetch/iu5qi3c1wx319c4sp3hm.jpg','http://localhost:8080/wx/storage/fetch/9y9j40y7m0yhrz6zed6a.jpg','L1',50,'2019-09-26 17:04:25','2019-09-26 17:04:25',1),(1036008,'测试一类','测试','测试专用',1036007,'http://localhost:8080/wx/storage/fetch/ov2guofj67sng9cnkmh3.jpg','http://localhost:8080/wx/storage/fetch/ztypc86cuc1g6qu0ktmo.jpg','L2',50,'2019-09-26 17:04:54','2019-09-26 17:04:54',0),(1036009,'吊灯','','',1036015,'','','L2',50,'2019-09-29 14:16:06','2019-09-29 14:20:54',0),(1036010,'吸顶灯','','',1036015,'','','L2',50,'2019-09-29 14:16:18','2019-09-29 14:22:02',0),(1036011,'半吸顶','','',1036015,'','','L2',50,'2019-09-29 14:17:00','2019-09-29 14:21:55',0),(1036012,'壁灯','','',1036015,'','','L2',50,'2019-09-29 14:17:07','2019-09-29 14:21:46',0),(1036013,'落地灯','','',1036015,'','','L2',50,'2019-09-29 14:17:59','2019-09-29 14:21:39',0),(1036014,'台灯','','',1036015,'','','L2',50,'2019-09-29 14:18:47','2019-09-29 14:21:30',0),(1036015,'灯具','','',0,'','','L1',50,'2019-09-29 14:20:43','2019-09-29 14:20:43',0);
/*!40000 ALTER TABLE `ax_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ax_collect`
--

DROP TABLE IF EXISTS `ax_collect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ax_collect` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户表的用户ID',
  `value_id` int(11) NOT NULL DEFAULT '0' COMMENT '如果type=0，则是商品ID；如果type=1，则是专题ID',
  `type` tinyint(3) NOT NULL DEFAULT '0' COMMENT '收藏类型，如果type=0，则是商品ID；如果type=1，则是专题ID',
  `add_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `deleted` tinyint(1) DEFAULT '0' COMMENT '逻辑删除',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `goods_id` (`value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ax_collect`
--

LOCK TABLES `ax_collect` WRITE;
/*!40000 ALTER TABLE `ax_collect` DISABLE KEYS */;
/*!40000 ALTER TABLE `ax_collect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ax_comment`
--

DROP TABLE IF EXISTS `ax_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ax_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value_id` int(11) NOT NULL DEFAULT '0' COMMENT '如果type=0，则是商品评论；如果是type=1，则是专题评论。',
  `type` tinyint(3) NOT NULL DEFAULT '0' COMMENT '评论类型，如果type=0，则是商品评论；如果是type=1，则是专题评论；如果type=3，则是订单商品评论。',
  `content` varchar(1023) NOT NULL COMMENT '评论内容',
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户表的用户ID',
  `has_picture` tinyint(1) DEFAULT '0' COMMENT '是否含有图片',
  `pic_urls` varchar(1023) DEFAULT NULL COMMENT '图片地址列表，采用JSON数组格式',
  `star` smallint(6) DEFAULT '1' COMMENT '评分， 1-5',
  `add_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `deleted` tinyint(1) DEFAULT '0' COMMENT '逻辑删除',
  PRIMARY KEY (`id`),
  KEY `id_value` (`value_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1012 DEFAULT CHARSET=utf8mb4 COMMENT='评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ax_comment`
--

LOCK TABLES `ax_comment` WRITE;
/*!40000 ALTER TABLE `ax_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `ax_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ax_coupon`
--

DROP TABLE IF EXISTS `ax_coupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ax_coupon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(63) NOT NULL COMMENT '优惠券名称',
  `desc` varchar(127) DEFAULT '' COMMENT '优惠券介绍，通常是显示优惠券使用限制文字',
  `tag` varchar(63) DEFAULT '' COMMENT '优惠券标签，例如新人专用',
  `total` int(11) NOT NULL DEFAULT '0' COMMENT '优惠券数量，如果是0，则是无限量',
  `discount` decimal(10,2) DEFAULT '0.00' COMMENT '优惠金额，',
  `min` decimal(10,2) DEFAULT '0.00' COMMENT '最少消费金额才能使用优惠券。',
  `limit` smallint(6) DEFAULT '1' COMMENT '用户领券限制数量，如果是0，则是不限制；默认是1，限领一张.',
  `type` smallint(6) DEFAULT '0' COMMENT '优惠券赠送类型，如果是0则通用券，用户领取；如果是1，则是注册赠券；如果是2，则是优惠券码兑换；',
  `status` smallint(6) DEFAULT '0' COMMENT '优惠券状态，如果是0则是正常可用；如果是1则是过期; 如果是2则是下架。',
  `goods_type` smallint(6) DEFAULT '0' COMMENT '商品限制类型，如果0则全商品，如果是1则是类目限制，如果是2则是商品限制。',
  `goods_value` varchar(1023) DEFAULT '[]' COMMENT '商品限制值，goods_type如果是0则空集合，如果是1则是类目集合，如果是2则是商品集合。',
  `code` varchar(63) DEFAULT NULL COMMENT '优惠券兑换码',
  `time_type` smallint(6) DEFAULT '0' COMMENT '有效时间限制，如果是0，则基于领取时间的有效天数days；如果是1，则start_time和end_time是优惠券有效期；',
  `days` smallint(6) DEFAULT '0' COMMENT '基于领取时间的有效天数days。',
  `start_time` datetime DEFAULT NULL COMMENT '使用券开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '使用券截至时间',
  `add_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `deleted` tinyint(1) DEFAULT '0' COMMENT '逻辑删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COMMENT='优惠券信息及规则表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ax_coupon`
--

LOCK TABLES `ax_coupon` WRITE;
/*!40000 ALTER TABLE `ax_coupon` DISABLE KEYS */;
INSERT INTO `ax_coupon` VALUES (9,'测试券','','',100,8.00,0.00,100,0,0,0,'[]',NULL,0,30,NULL,NULL,'2019-09-26 17:08:56','2019-09-26 17:08:56',0);
/*!40000 ALTER TABLE `ax_coupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ax_coupon_user`
--

DROP TABLE IF EXISTS `ax_coupon_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ax_coupon_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `coupon_id` int(11) NOT NULL COMMENT '优惠券ID',
  `status` smallint(6) DEFAULT '0' COMMENT '使用状态, 如果是0则未使用；如果是1则已使用；如果是2则已过期；如果是3则已经下架；',
  `used_time` datetime DEFAULT NULL COMMENT '使用时间',
  `start_time` datetime DEFAULT NULL COMMENT '有效期开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '有效期截至时间',
  `order_id` int(11) DEFAULT NULL COMMENT '订单ID',
  `add_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `deleted` tinyint(1) DEFAULT '0' COMMENT '逻辑删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='优惠券用户使用表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ax_coupon_user`
--

LOCK TABLES `ax_coupon_user` WRITE;
/*!40000 ALTER TABLE `ax_coupon_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `ax_coupon_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ax_feedback`
--

DROP TABLE IF EXISTS `ax_feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ax_feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户表的用户ID',
  `username` varchar(63) NOT NULL DEFAULT '' COMMENT '用户名称',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '手机号',
  `feed_type` varchar(63) NOT NULL DEFAULT '' COMMENT '反馈类型',
  `content` varchar(1023) NOT NULL COMMENT '反馈内容',
  `status` int(3) NOT NULL DEFAULT '0' COMMENT '状态',
  `has_picture` tinyint(1) DEFAULT '0' COMMENT '是否含有图片',
  `pic_urls` varchar(1023) DEFAULT NULL COMMENT '图片地址列表，采用JSON数组格式',
  `add_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `deleted` tinyint(1) DEFAULT '0' COMMENT '逻辑删除',
  PRIMARY KEY (`id`),
  KEY `id_value` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='意见反馈表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ax_feedback`
--

LOCK TABLES `ax_feedback` WRITE;
/*!40000 ALTER TABLE `ax_feedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `ax_feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ax_footprint`
--

DROP TABLE IF EXISTS `ax_footprint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ax_footprint` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户表的用户ID',
  `goods_id` int(11) NOT NULL DEFAULT '0' COMMENT '浏览商品ID',
  `add_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `deleted` tinyint(1) DEFAULT '0' COMMENT '逻辑删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COMMENT='用户浏览足迹表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ax_footprint`
--

LOCK TABLES `ax_footprint` WRITE;
/*!40000 ALTER TABLE `ax_footprint` DISABLE KEYS */;
INSERT INTO `ax_footprint` VALUES (1,1,1181005,'2019-09-29 14:42:00','2019-09-29 14:42:00',0),(2,1,1181005,'2019-09-29 14:42:26','2019-09-29 14:42:26',0),(3,1,1181005,'2019-09-29 14:42:40','2019-09-29 14:42:40',0),(4,1,1181005,'2019-09-29 14:45:08','2019-09-29 14:45:08',0),(5,1,1181005,'2019-09-29 14:59:18','2019-09-29 14:59:18',0),(6,1,1181010,'2019-09-29 16:32:24','2019-09-29 16:32:24',0),(7,1,1181010,'2019-09-29 16:39:27','2019-09-29 16:39:27',0);
/*!40000 ALTER TABLE `ax_footprint` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ax_goods`
--

DROP TABLE IF EXISTS `ax_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ax_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_sn` varchar(63) NOT NULL DEFAULT '' COMMENT '商品编号',
  `name` varchar(127) NOT NULL DEFAULT '' COMMENT '商品名称',
  `category_id` int(11) DEFAULT '0' COMMENT '商品所属类目ID',
  `brand_id` int(11) DEFAULT '0',
  `gallery` varchar(1023) DEFAULT NULL COMMENT '商品宣传图片列表，采用JSON数组格式',
  `keywords` varchar(255) DEFAULT '' COMMENT '商品关键字，采用逗号间隔',
  `brief` varchar(255) DEFAULT '' COMMENT '商品简介',
  `is_on_sale` tinyint(1) DEFAULT '1' COMMENT '是否上架',
  `sort_order` smallint(4) DEFAULT '100',
  `pic_url` varchar(255) DEFAULT NULL COMMENT '商品页面商品图片',
  `share_url` varchar(255) DEFAULT NULL COMMENT '商品分享朋友圈图片',
  `is_new` tinyint(1) DEFAULT '0' COMMENT '是否新品首发，如果设置则可以在新品首发页面展示',
  `is_hot` tinyint(1) DEFAULT '0' COMMENT '是否人气推荐，如果设置则可以在人气推荐页面展示',
  `unit` varchar(31) DEFAULT '’件‘' COMMENT '商品单位，例如件、盒',
  `counter_price` decimal(10,2) DEFAULT '0.00' COMMENT '专柜价格',
  `retail_price` decimal(10,2) DEFAULT '100000.00' COMMENT '零售价格',
  `detail` text COMMENT '商品详细介绍，是富文本格式',
  `add_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `deleted` tinyint(1) DEFAULT '0' COMMENT '逻辑删除',
  PRIMARY KEY (`id`),
  KEY `goods_sn` (`goods_sn`),
  KEY `cat_id` (`category_id`),
  KEY `brand_id` (`brand_id`),
  KEY `sort_order` (`sort_order`)
) ENGINE=InnoDB AUTO_INCREMENT=1181020 DEFAULT CHARSET=utf8mb4 COMMENT='商品基本信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ax_goods`
--

LOCK TABLES `ax_goods` WRITE;
/*!40000 ALTER TABLE `ax_goods` DISABLE KEYS */;
INSERT INTO `ax_goods` VALUES (1181004,'20190926','测试商品',1036008,1046003,'[]','测试','test',1,100,'http://localhost:8080/wx/storage/fetch/rqjh4f9wj0qkfs7nn4f6.jpg','',1,0,'件',0.01,0.01,'<p>这只是一个简单的测试</p>','2019-09-26 17:03:23','2019-09-29 10:22:31',1),(1181005,'67801','67801',1036009,1046004,'[]','','',1,100,'','',1,0,'’件‘',448.00,448.00,'<table style=\"border-collapse: collapse; width: 324.02pt;\" border=\"0\" width=\"432\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr style=\"height: 39.00pt;\">\n<td class=\"et7\" style=\"height: 39.00pt; width: 75.00pt;\" width=\"100\" height=\"52\">型号</td>\n<td class=\"et8\" style=\"width: 103.20pt;\" width=\"137\">灯体尺寸</td>\n<td class=\"et8\" style=\"width: 145.80pt;\" width=\"194\">包装尺寸</td>\n</tr>\n<tr style=\"height: 69.90pt;\">\n<td class=\"et9\" style=\"height: 69.90pt; width: 75.00pt;\" width=\"100\" height=\"93\">67801-10吊</td>\n<td class=\"et10\" style=\"width: 103.20pt;\" width=\"137\">D500*H1100</td>\n<td class=\"et11\" style=\"width: 145.80pt;\" width=\"194\">纸箱:610*610*190MM</td>\n</tr>\n<tr style=\"height: 69.90pt;\">\n<td class=\"et9\" style=\"height: 69.90pt; width: 75.00pt;\" width=\"100\" height=\"93\">67801-12吊</td>\n<td class=\"et10\" style=\"width: 103.20pt;\" width=\"137\">D600*H1100</td>\n<td class=\"et11\" style=\"width: 145.80pt;\" width=\"194\">纸箱:710*710*190MM</td>\n</tr>\n<tr style=\"height: 69.90pt;\">\n<td class=\"et9\" style=\"height: 69.90pt; width: 75.00pt;\" width=\"100\" height=\"93\">67801-16吊</td>\n<td class=\"et10\" style=\"width: 103.20pt;\" width=\"137\">D760*H1100</td>\n<td class=\"et11\" style=\"width: 145.80pt;\" width=\"194\">纸箱:810*810*190MM</td>\n</tr>\n<tr style=\"height: 54.75pt;\">\n<td class=\"et9\" style=\"height: 54.75pt; width: 75.00pt;\" width=\"100\" height=\"73\">67801-20吊</td>\n<td class=\"et10\" style=\"width: 103.20pt;\" width=\"137\">D830*H1100</td>\n<td class=\"et11\" style=\"width: 145.80pt;\" width=\"194\">纸箱:910*910*160MM</td>\n</tr>\n<tr style=\"height: 57.75pt;\">\n<td class=\"et12\" style=\"height: 57.75pt; width: 75.00pt;\" width=\"100\" height=\"77\">67801-2B</td>\n<td class=\"et13\" style=\"width: 103.20pt;\" width=\"137\">280*120*130</td>\n<td class=\"et14\" style=\"width: 145.80pt;\" width=\"194\">纸箱:360*260*260MM</td>\n</tr>\n</tbody>\n</table>','2019-09-29 14:31:21','2019-09-29 15:01:49',0),(1181006,'67809','67809',1036009,1046004,'[]','','',1,100,'','',1,0,'’件‘',436.00,436.00,'<table style=\"border-collapse: collapse; width: 324.02pt;\" border=\"0\" width=\"432\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr style=\"height: 39.00pt;\">\n<td class=\"et6\" style=\"height: 39.00pt; width: 75.00pt;\" width=\"100\" height=\"52\">型号</td>\n<td class=\"et7\" style=\"width: 103.20pt;\" width=\"137\">灯体尺寸</td>\n<td class=\"et7\" style=\"width: 145.80pt;\" width=\"194\">包装尺寸</td>\n</tr>\n<tr style=\"height: 69.90pt;\">\n<td class=\"et8\" style=\"height: 69.90pt; width: 75.00pt;\" width=\"100\" height=\"93\">67809-10</td>\n<td class=\"et9\" style=\"width: 103.20pt;\" width=\"137\">D860*H150</td>\n<td class=\"et10\" style=\"width: 145.80pt;\" width=\"194\">纸箱:710*710*190MM</td>\n</tr>\n<tr style=\"height: 54.75pt;\">\n<td class=\"et8\" style=\"height: 54.75pt; width: 75.00pt;\" width=\"100\" height=\"73\">67809-10椭圆</td>\n<td class=\"et11\" style=\"width: 103.20pt;\" width=\"137\">650*860*H150</td>\n<td class=\"et10\" style=\"width: 145.80pt;\" width=\"194\">纸箱:810*810*190MM</td>\n</tr>\n</tbody>\n</table>\n<table width=\"432\">\n<tbody>\n<tr>\n<td width=\"100\">型号</td>\n<td width=\"137\">灯体尺寸</td>\n<td width=\"194\">包装尺寸</td>\n</tr>\n<tr>\n<td>67809-5吸</td>\n<td width=\"137\">D550*H150</td>\n<td width=\"194\">纸箱:510*510*160MM</td>\n</tr>\n<tr>\n<td>67809-8吸</td>\n<td width=\"137\">D750*H150</td>\n<td width=\"194\">纸箱:710*710*160MM</td>\n</tr>\n</tbody>\n</table>','2019-09-29 15:09:44','2019-09-29 16:33:35',0),(1181007,'67812','67812',1036012,1046004,'[]','','',1,100,'','',1,0,'’件‘',136.00,136.00,'<table style=\"border-collapse: collapse; width: 324.02pt;\" border=\"0\" width=\"432\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr style=\"height: 39.00pt;\">\n<td class=\"et7\" style=\"height: 39.00pt; width: 75.00pt;\" width=\"100\" height=\"52\">型号</td>\n<td class=\"et8\" style=\"width: 103.20pt;\" width=\"137\">灯体尺寸</td>\n<td class=\"et8\" style=\"width: 145.80pt;\" width=\"194\">包装尺寸</td>\n</tr>\n<tr style=\"height: 69.90pt;\">\n<td class=\"et9\" style=\"height: 69.90pt; width: 75.00pt;\" width=\"100\" height=\"93\">67812-2B</td>\n<td class=\"et10\">400*400*H180</td>\n<td class=\"et11\" style=\"width: 145.80pt;\" width=\"194\">纸箱:450*420*200MM</td>\n</tr>\n</tbody>\n</table>\n<table style=\"border-collapse: collapse; width: 324.02pt;\" border=\"0\" width=\"432\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr style=\"height: 39.00pt;\">\n<td class=\"et7\" style=\"height: 39.00pt; width: 75.00pt;\" width=\"100\" height=\"52\">型号</td>\n<td class=\"et8\" style=\"width: 103.20pt;\" width=\"137\">灯体尺寸</td>\n<td class=\"et8\" style=\"width: 145.80pt;\" width=\"194\">包装尺寸</td>\n</tr>\n<tr style=\"height: 69.90pt;\">\n<td class=\"et9\" style=\"height: 69.90pt; width: 75.00pt;\" width=\"100\" height=\"93\"><span class=\"font0\">6</span><span class=\"font0\">7812-6+3+1</span></td>\n<td class=\"et10\" style=\"width: 103.20pt;\" width=\"137\"><span class=\"font0\">D</span><span class=\"font0\">610*H420</span></td>\n<td class=\"et11\" style=\"width: 145.80pt;\" width=\"194\">纸箱:610*610*190MM</td>\n</tr>\n<tr style=\"height: 69.90pt;\">\n<td class=\"et9\" style=\"height: 69.90pt; width: 75.00pt;\" width=\"100\" height=\"93\">67812-4</td>\n<td class=\"et10\" style=\"width: 103.20pt;\" width=\"137\"><span class=\"font0\">D</span><span class=\"font0\">460*H320</span></td>\n<td class=\"et11\" style=\"width: 145.80pt;\" width=\"194\">&nbsp;</td>\n</tr>\n</tbody>\n</table>','2019-09-29 15:15:33','2019-09-29 16:09:28',0),(1181008,'67811','67811',1036012,1046004,'[]','','',1,100,'',NULL,1,0,'’件‘',136.00,136.00,'<table style=\"border-collapse: collapse; width: 324.02pt;\" border=\"0\" width=\"432\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr style=\"height: 39.00pt;\">\n<td class=\"et7\" style=\"height: 39.00pt; width: 75.00pt;\" width=\"100\" height=\"52\">型号</td>\n<td class=\"et8\" style=\"width: 103.20pt;\" width=\"137\">灯体尺寸</td>\n<td class=\"et8\" style=\"width: 145.80pt;\" width=\"194\">包装尺寸</td>\n</tr>\n<tr style=\"height: 69.90pt;\">\n<td class=\"et9\" style=\"height: 69.90pt; width: 75.00pt;\" width=\"100\" height=\"93\">67811-1+1B</td>\n<td class=\"et10\">260*400*H220</td>\n<td class=\"et11\" style=\"width: 145.80pt;\" width=\"194\">纸箱:550*340*200MM</td>\n</tr>\n</tbody>\n</table>','2019-09-29 15:23:43','2019-09-29 15:23:43',0),(1181009,'67814','67814',1036009,1046004,'[]','','',1,100,'',NULL,1,0,'’件‘',288.00,288.00,'<table style=\"border-collapse: collapse; width: 324.02pt;\" border=\"0\" width=\"432\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr style=\"height: 39.00pt;\">\n<td class=\"et12\" style=\"height: 39.00pt; width: 75.00pt;\" width=\"100\" height=\"52\">型号</td>\n<td class=\"et13\" style=\"width: 103.20pt;\" width=\"137\">灯体尺寸</td>\n<td class=\"et13\" style=\"width: 145.80pt;\" width=\"194\">包装尺寸</td>\n</tr>\n<tr style=\"height: 69.90pt;\">\n<td class=\"et14\" style=\"height: 69.90pt; width: 75.00pt;\" width=\"100\" height=\"93\">67814-5吊</td>\n<td class=\"et15\" style=\"width: 103.20pt;\" width=\"137\">D600*H950</td>\n<td class=\"et16\" style=\"width: 145.80pt;\" width=\"194\">纸箱:910*610*190MM</td>\n</tr>\n<tr style=\"height: 69.90pt;\">\n<td class=\"et14\" style=\"height: 69.90pt; width: 75.00pt;\" width=\"100\" height=\"93\">67814-6吊</td>\n<td class=\"et15\" style=\"width: 103.20pt;\" width=\"137\">D700*H950</td>\n<td class=\"et16\" style=\"width: 145.80pt;\" width=\"194\">纸箱:810*810*190MM</td>\n</tr>\n<tr style=\"height: 90.00pt;\">\n<td class=\"et17\" style=\"height: 90.00pt; width: 75.00pt;\" width=\"100\" height=\"120\">67814-8吊</td>\n<td class=\"et17\" style=\"width: 103.20pt;\" width=\"137\">D800*H1100</td>\n<td class=\"et18\" style=\"width: 145.80pt;\" width=\"194\">纸箱:810*810*190MM</td>\n</tr>\n<tr style=\"height: 69.90pt;\">\n<td class=\"et14\" style=\"height: 69.90pt; width: 75.00pt;\" width=\"100\" height=\"93\">67814-10吊</td>\n<td class=\"et19\" style=\"width: 103.20pt;\" width=\"137\">550*1000*H950</td>\n<td class=\"et16\" style=\"width: 145.80pt;\" width=\"194\">纸箱:910*1110*190MM</td>\n</tr>\n<tr style=\"height: 69.90pt;\">\n<td class=\"et20\" style=\"height: 69.90pt; width: 75.00pt;\" width=\"100\" height=\"93\">67814-8吸</td>\n<td class=\"et21\">460*1150*H190</td>\n<td class=\"et22\" style=\"width: 145.80pt;\" width=\"194\">纸箱:610*1010*190MM</td>\n</tr>\n<tr style=\"height: 69.90pt;\">\n<td class=\"et20\" style=\"height: 69.90pt; width: 75.00pt;\" width=\"100\" height=\"93\"><span class=\"font0\">67814-6</span><span class=\"font0\">吸</span></td>\n<td class=\"et23\">460*800*H190</td>\n<td class=\"et22\" style=\"width: 145.80pt;\" width=\"194\">纸箱:710*710*190MM</td>\n</tr>\n</tbody>\n</table>','2019-09-29 15:30:47','2019-09-29 15:30:47',0),(1181010,'67815','67815',1036010,1046004,'[]','','',1,100,'','',1,0,'’件‘',278.00,278.00,'<table style=\"border-collapse: collapse; width: 324.02pt;\" border=\"0\" width=\"432\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr style=\"height: 39.00pt;\">\n<td class=\"et5\" style=\"height: 39.00pt; width: 75.00pt;\" width=\"100\" height=\"52\">型号</td>\n<td class=\"et6\" style=\"width: 103.20pt;\" width=\"137\">灯体尺寸</td>\n<td class=\"et6\" style=\"width: 145.80pt;\" width=\"194\">包装尺寸</td>\n</tr>\n<tr style=\"height: 69.90pt;\">\n<td class=\"et7\" style=\"height: 69.90pt; width: 75.00pt;\" width=\"100\" height=\"93\">67815-6吸</td>\n<td class=\"et8\" style=\"width: 103.20pt;\" width=\"137\">D520*H180</td>\n<td class=\"et9\" style=\"width: 145.80pt;\" width=\"194\">纸箱:610*610*160MM</td>\n</tr>\n</tbody>\n</table>\n<table width=\"432\">\n<tbody>\n<tr>\n<td width=\"100\">型号</td>\n<td width=\"137\">灯体尺寸</td>\n<td width=\"194\">包装尺寸</td>\n</tr>\n<tr>\n<td width=\"100\">67815-3吸</td>\n<td width=\"137\">D350*H180</td>\n<td width=\"194\">纸箱:380*360*190MM</td>\n</tr>\n</tbody>\n</table>\n<table width=\"432\">\n<tbody>\n<tr>\n<td width=\"100\">型号</td>\n<td width=\"137\">灯体尺寸</td>\n<td width=\"194\">包装尺寸</td>\n</tr>\n<tr>\n<td width=\"100\">67815-10吸</td>\n<td>540*930*H150</td>\n<td width=\"194\">纸箱:660*1010*190MM</td>\n</tr>\n<tr>\n<td width=\"100\">67815-10吊</td>\n<td>540*930*H150</td>\n<td width=\"194\">纸箱:660*1010*190MM</td>\n</tr>\n<tr>\n<td width=\"100\">67815-6吊</td>\n<td>390*680*H1100</td>\n<td width=\"194\">780*380*190MM</td>\n</tr>\n</tbody>\n</table>','2019-09-29 15:39:22','2019-09-29 16:37:26',0),(1181011,'67818','67818',1036009,1046004,'[]','','',1,100,'',NULL,1,0,'’件‘',358.00,358.00,'<table style=\"border-collapse: collapse; width: 324.02pt;\" border=\"0\" width=\"432\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr style=\"height: 39.00pt;\">\n<td class=\"et7\" style=\"height: 39.00pt; width: 75.00pt;\" width=\"100\" height=\"52\">型号</td>\n<td class=\"et8\" style=\"width: 103.20pt;\" width=\"137\">灯体尺寸</td>\n<td class=\"et8\" style=\"width: 145.80pt;\" width=\"194\">包装尺寸</td>\n</tr>\n<tr style=\"height: 69.90pt;\">\n<td class=\"et9\" style=\"height: 69.90pt; width: 75.00pt;\" width=\"100\" height=\"93\">67818-8吊</td>\n<td class=\"et10\" style=\"width: 103.20pt;\" width=\"137\">D810*H1100</td>\n<td class=\"et11\" style=\"width: 145.80pt;\" width=\"194\">纸箱:930*380*190MM</td>\n</tr>\n</tbody>\n</table>','2019-09-29 15:44:51','2019-09-29 15:44:51',0),(1181012,'67817','67817',1036009,1046004,'[]','','',1,100,'',NULL,1,0,'’件‘',388.00,388.00,'<table style=\"border-collapse: collapse; width: 324.02pt;\" border=\"0\" width=\"432\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr style=\"height: 39.00pt;\">\n<td class=\"et12\" style=\"height: 39.00pt; width: 75.00pt;\" width=\"100\" height=\"52\">型号</td>\n<td class=\"et13\" style=\"width: 103.20pt;\" width=\"137\">灯体尺寸</td>\n<td class=\"et13\" style=\"width: 145.80pt;\" width=\"194\">包装尺寸</td>\n</tr>\n<tr style=\"height: 69.90pt;\">\n<td class=\"et14\" style=\"height: 69.90pt; width: 75.00pt;\" width=\"100\" height=\"93\">67817-12吊</td>\n<td class=\"et15\" style=\"width: 103.20pt;\" width=\"137\">D1020*H1100</td>\n<td class=\"et16\" style=\"width: 145.80pt;\" width=\"194\">纸箱:930*380*190MM*2</td>\n</tr>\n<tr style=\"height: 69.90pt;\">\n<td class=\"et17\" style=\"height: 69.90pt; width: 75.00pt;\" width=\"100\" height=\"93\">67817-8吊</td>\n<td class=\"et18\" style=\"width: 103.20pt;\" width=\"137\">D720*H1800</td>\n<td class=\"et16\" style=\"width: 145.80pt;\" width=\"194\">纸箱:610*610*370MM</td>\n</tr>\n<tr style=\"height: 69.90pt;\">\n<td class=\"et19\" style=\"height: 69.90pt; width: 75.00pt;\" width=\"100\" height=\"93\">67817-2B</td>\n<td class=\"et20\" style=\"width: 103.20pt;\" width=\"137\">260*220*H180</td>\n<td class=\"et21\" style=\"width: 145.80pt;\" width=\"194\">纸箱:500*360*190MM</td>\n</tr>\n</tbody>\n</table>','2019-09-29 15:51:22','2019-09-29 15:51:22',0),(1181013,'67819','67819',1036012,1046004,'[]','','',1,100,'',NULL,1,0,'’件‘',136.00,136.00,'<table style=\"border-collapse: collapse; width: 324.02pt;\" border=\"0\" width=\"432\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr style=\"height: 39.00pt;\">\n<td class=\"et7\" style=\"height: 39.00pt; width: 75.00pt;\" width=\"100\" height=\"52\">型号</td>\n<td class=\"et8\" style=\"width: 103.20pt;\" width=\"137\">灯体尺寸</td>\n<td class=\"et8\" style=\"width: 145.80pt;\" width=\"194\">包装尺寸</td>\n</tr>\n<tr style=\"height: 69.90pt;\">\n<td class=\"et9\" style=\"height: 69.90pt; width: 75.00pt;\" width=\"100\" height=\"93\">67819-2B</td>\n<td class=\"et10\" style=\"width: 103.20pt;\" width=\"137\">260*220*H150</td>\n<td class=\"et11\" style=\"width: 145.80pt;\" width=\"194\">纸箱:380*360*190MM</td>\n</tr>\n</tbody>\n</table>','2019-09-29 15:54:57','2019-09-29 15:54:57',0),(1181014,'67802','67802',1036009,1046004,'[]','','',1,100,'',NULL,1,0,'’件‘',268.00,268.00,'<table style=\"border-collapse: collapse; width: 324.02pt;\" border=\"0\" width=\"432\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr style=\"height: 39.00pt;\">\n<td class=\"et8\" style=\"height: 39.00pt; width: 75.00pt;\" width=\"100\" height=\"52\">型号</td>\n<td class=\"et9\" style=\"width: 103.20pt;\" width=\"137\">灯体尺寸</td>\n<td class=\"et9\" style=\"width: 145.80pt;\" width=\"194\">包装尺寸</td>\n</tr>\n<tr style=\"height: 69.90pt;\">\n<td class=\"et10\" style=\"height: 69.90pt; width: 75.00pt;\" width=\"100\" height=\"93\">67802-6+6吊</td>\n<td class=\"et11\" style=\"width: 103.20pt;\" width=\"137\"><span class=\"font0\">D860*H</span><span class=\"font0\">600</span></td>\n<td class=\"et12\" style=\"width: 145.80pt;\" width=\"194\">纸箱:930*380*190MM/纸箱:710*380*160MM</td>\n</tr>\n<tr style=\"height: 69.90pt;\">\n<td class=\"et13\" style=\"height: 69.90pt; width: 75.00pt;\" width=\"100\" height=\"93\">67802-6吊</td>\n<td class=\"et14\" style=\"width: 103.20pt;\" width=\"137\"><span class=\"font0\">D560*H6</span><span class=\"font0\">00</span></td>\n<td class=\"et12\" style=\"width: 145.80pt;\" width=\"194\">纸箱:930*380*190MM</td>\n</tr>\n<tr style=\"height: 69.90pt;\">\n<td class=\"et13\" style=\"height: 69.90pt; width: 75.00pt;\" width=\"100\" height=\"93\"><span class=\"font0\">67802-</span><span class=\"font0\">3吊</span></td>\n<td class=\"et14\" style=\"width: 103.20pt;\" width=\"137\"><span class=\"font0\">D52</span><span class=\"font0\">0*H600</span></td>\n<td class=\"et12\" style=\"width: 145.80pt;\" width=\"194\">纸箱:610*610*190MM</td>\n</tr>\n<tr style=\"height: 69.90pt;\">\n<td class=\"et10\" style=\"height: 69.90pt; width: 75.00pt;\" width=\"100\" height=\"93\">67802-8+4+4吊</td>\n<td class=\"et11\" style=\"width: 103.20pt;\" width=\"137\">D860*H1200</td>\n<td class=\"et12\" style=\"width: 145.80pt;\" width=\"194\">纸箱:930*380*190MM*2/纸箱:500*360*190MM*1</td>\n</tr>\n</tbody>\n</table>','2019-09-29 16:00:59','2019-09-29 16:00:59',0),(1181015,'67810','67810',1036009,1046004,'[]','','',1,100,'','',1,0,'’件‘',288.00,288.00,'<table style=\"border-collapse: collapse; width: 324.02pt;\" border=\"0\" width=\"432\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr style=\"height: 39.00pt;\">\n<td class=\"et8\" style=\"height: 39.00pt; width: 75.00pt;\" width=\"100\" height=\"52\">型号</td>\n<td class=\"et9\" style=\"width: 103.20pt;\" width=\"137\">灯体尺寸</td>\n<td class=\"et9\" style=\"width: 145.80pt;\" width=\"194\">包装尺寸</td>\n</tr>\n<tr style=\"height: 69.90pt;\">\n<td class=\"et10\" style=\"height: 69.90pt; width: 75.00pt;\" width=\"100\" height=\"93\"><span class=\"font0\">6</span><span class=\"font0\">7810-8吊</span></td>\n<td class=\"et11\" style=\"width: 103.20pt;\" width=\"137\">970*450*H1100</td>\n<td class=\"et12\" style=\"width: 145.80pt;\" width=\"194\">纸箱:810*810*160MM</td>\n</tr>\n<tr style=\"height: 69.90pt;\">\n<td class=\"et10\" style=\"height: 69.90pt; width: 75.00pt;\" width=\"100\" height=\"93\"><span class=\"font0\">6</span><span class=\"font0\">7810-9吊</span></td>\n<td class=\"et11\" style=\"width: 103.20pt;\" width=\"137\"><span class=\"font0\">D</span><span class=\"font0\">920*H1100</span></td>\n<td class=\"et12\" style=\"width: 145.80pt;\" width=\"194\">纸箱:1010*610*190MM</td>\n</tr>\n<tr style=\"height: 69.90pt;\">\n<td class=\"et10\" style=\"height: 69.90pt; width: 75.00pt;\" width=\"100\" height=\"93\"><span class=\"font0\">6</span><span class=\"font0\">7810-15吊</span></td>\n<td class=\"et11\" style=\"width: 103.20pt;\" width=\"137\">D1110*H1100</td>\n<td class=\"et12\" style=\"width: 145.80pt;\" width=\"194\">纸箱:910*910*160MM</td>\n</tr>\n<tr style=\"height: 69.90pt;\">\n<td class=\"et10\" style=\"height: 69.90pt; width: 75.00pt;\" width=\"100\" height=\"93\"><span class=\"font0\">6</span><span class=\"font0\">7810-6吊</span></td>\n<td class=\"et11\" style=\"width: 103.20pt;\" width=\"137\">D350*H480</td>\n<td class=\"et12\" style=\"width: 145.80pt;\" width=\"194\">纸箱:560*560*160MM</td>\n</tr>\n</tbody>\n</table>\n<table width=\"432\">\n<tbody>\n<tr>\n<td width=\"100\">型号</td>\n<td width=\"137\">灯体尺寸</td>\n<td width=\"194\">包装尺寸</td>\n</tr>\n<tr>\n<td width=\"100\">67810-6台</td>\n<td width=\"137\">D260*H700</td>\n<td width=\"194\">纸箱:380*780*250MM</td>\n</tr>\n<tr>\n<td width=\"100\">67810-6落</td>\n<td width=\"137\">D260*H1550</td>\n<td width=\"194\">纸箱:380*780*250MM*2</td>\n</tr>\n</tbody>\n</table>','2019-09-29 16:04:25','2019-09-29 16:12:18',0),(1181016,'67816','67816',0,0,'[]','','',1,100,'',NULL,1,0,'’件‘',158.00,158.00,'<table width=\"432\">\n<tbody>\n<tr>\n<td width=\"100\">型号</td>\n<td width=\"137\">灯体尺寸</td>\n<td width=\"194\">包装尺寸</td>\n</tr>\n<tr>\n<td width=\"100\">67816-1吊</td>\n<td width=\"137\">D120*H1100</td>\n<td width=\"194\">纸箱:500*360*190MM</td>\n</tr>\n<tr>\n<td width=\"100\">67816-3吊</td>\n<td width=\"137\">700*80*H1100</td>\n<td width=\"194\">纸箱:780*380*220MM<br />纸箱:500*360*190MM</td>\n</tr>\n<tr>\n<td width=\"100\">67816-5吊</td>\n<td width=\"137\">900*80*H1100</td>\n<td width=\"194\">纸箱:660*1010*190MM</td>\n</tr>\n<tr>\n<td width=\"100\">67816-3吊螺旋</td>\n<td width=\"137\">D450*H1800</td>\n<td width=\"194\">纸箱:710*710*190MM<br />纸箱:500*360*190MM</td>\n</tr>\n<tr>\n<td width=\"100\">67816-2台</td>\n<td width=\"137\">330*120*H450</td>\n<td width=\"194\">纸箱:780*380*250MM</td>\n</tr>\n<tr>\n<td width=\"100\">67816-4落</td>\n<td width=\"137\">330*120*H1635</td>\n<td width=\"194\">纸箱:930*380*190MM*2</td>\n</tr>\n</tbody>\n</table>','2019-09-29 16:23:42','2019-09-29 16:23:42',0),(1181017,'67702','67702',1036009,0,'[]','','',1,100,'',NULL,1,0,'’件‘',368.00,368.00,'<table width=\"432\">\n<tbody>\n<tr>\n<td width=\"100\">型号</td>\n<td width=\"137\">灯体尺寸</td>\n<td width=\"194\">包装尺寸</td>\n</tr>\n<tr>\n<td>67702-8吊</td>\n<td width=\"137\">D710*H1100</td>\n<td width=\"194\">纸箱:780*380*190MM</td>\n</tr>\n<tr>\n<td width=\"100\">67702-16吊</td>\n<td width=\"137\">D800*H1100</td>\n<td width=\"194\">纸箱:810*810*160MM/纸箱:780*380*190MM</td>\n</tr>\n<tr>\n<td width=\"100\">67702-12吊</td>\n<td width=\"137\">D880*H1100</td>\n<td width=\"194\">箱:780*380*190MM</td>\n</tr>\n</tbody>\n</table>','2019-09-29 16:27:43','2019-09-29 16:27:43',0),(1181018,'67803','67803',1036009,1046004,'[]','','',1,100,'',NULL,1,0,'’件‘',698.00,698.00,'<table width=\"432\">\n<tbody>\n<tr>\n<td width=\"100\">型号</td>\n<td width=\"137\">灯体尺寸</td>\n<td width=\"194\">包装尺寸</td>\n</tr>\n<tr>\n<td width=\"100\">67803-12吊</td>\n<td width=\"137\">D980*H1100</td>\n<td width=\"194\">纸箱:910*910*190MM</td>\n</tr>\n<tr>\n<td width=\"100\">67803-9吊</td>\n<td width=\"137\">D780*H1100</td>\n<td width=\"194\">纸箱:710*710*160MM/纸箱:780*380*190MM</td>\n</tr>\n</tbody>\n</table>','2019-09-29 16:30:16','2019-09-29 16:30:16',0),(1181019,'67806','67806',0,0,'[]','','',1,100,'',NULL,1,0,'’件‘',958.00,958.00,'<table width=\"432\">\n<tbody>\n<tr>\n<td width=\"100\">型号</td>\n<td width=\"137\">灯体尺寸</td>\n<td width=\"194\">包装尺寸</td>\n</tr>\n<tr>\n<td width=\"100\">67806-20吊</td>\n<td>&empty;1000*H1100</td>\n<td width=\"194\">纸箱:910*910*190MM/纸箱:930*380*190MM</td>\n</tr>\n<tr>\n<td width=\"100\">67806-15吊</td>\n<td>&empty;800*H1100</td>\n<td width=\"194\">纸箱:810*810*190MM/纸箱:930*380*190MM</td>\n</tr>\n</tbody>\n</table>\n<p>&nbsp;</p>','2019-09-29 16:36:53','2019-09-29 16:36:53',0);
/*!40000 ALTER TABLE `ax_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ax_goods_attribute`
--

DROP TABLE IF EXISTS `ax_goods_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ax_goods_attribute` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL DEFAULT '0' COMMENT '商品表的商品ID',
  `attribute` varchar(255) NOT NULL COMMENT '商品参数名称',
  `value` varchar(255) NOT NULL COMMENT '商品参数值',
  `add_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `deleted` tinyint(1) DEFAULT '0' COMMENT '逻辑删除',
  PRIMARY KEY (`id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1032 DEFAULT CHARSET=utf8mb4 COMMENT='商品参数表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ax_goods_attribute`
--

LOCK TABLES `ax_goods_attribute` WRITE;
/*!40000 ALTER TABLE `ax_goods_attribute` DISABLE KEYS */;
INSERT INTO `ax_goods_attribute` VALUES (877,1181004,'测试日期','20190926','2019-09-26 17:03:23','2019-09-26 17:03:23',1),(878,1181004,'测试日期','20190926','2019-09-26 17:06:41','2019-09-26 17:06:41',1),(879,1181004,'测试日期','20190926','2019-09-29 10:22:31','2019-09-29 10:22:31',1),(880,1181005,'适用','客厅/房间','2019-09-29 14:31:21','2019-09-29 14:31:21',1),(881,1181005,'色温','暖白','2019-09-29 14:31:21','2019-09-29 14:31:21',1),(882,1181005,'功率','6W/灯','2019-09-29 14:31:21','2019-09-29 14:31:21',1),(883,1181005,'光源','G9','2019-09-29 14:31:21','2019-09-29 14:31:21',1),(884,1181005,'水晶/玻璃/压克力尺寸','∅90MM','2019-09-29 14:31:21','2019-09-29 14:31:21',1),(885,1181005,'材质/颜色','铁艺加玻璃罩/铜色','2019-09-29 14:31:21','2019-09-29 14:31:21',1),(886,1181005,'灯体尺寸','D500*H1100/D600*H1100/D760*H1100/D830*H1100','2019-09-29 14:31:21','2019-09-29 14:31:21',1),(887,1181005,'包装尺寸','纸箱:610*610*190MM','2019-09-29 14:45:02','2019-09-29 14:45:02',1),(888,1181005,'适用','客厅/房间','2019-09-29 14:45:02','2019-09-29 14:45:02',1),(889,1181005,'色温','暖白','2019-09-29 14:45:02','2019-09-29 14:45:02',1),(890,1181005,'功率','6W/灯','2019-09-29 14:45:02','2019-09-29 14:45:02',1),(891,1181005,'光源','G9','2019-09-29 14:45:02','2019-09-29 14:45:02',1),(892,1181005,'水晶/玻璃/压克力尺寸','∅90MM','2019-09-29 14:45:02','2019-09-29 14:45:02',1),(893,1181005,'材质/颜色','铁艺加玻璃罩/铜色','2019-09-29 14:45:02','2019-09-29 14:45:02',1),(894,1181005,'灯体尺寸','D500*H1100/D600*H1100/D760*H1100/D830*H1100','2019-09-29 14:45:02','2019-09-29 14:45:02',1),(895,1181005,'适用','客厅/房间','2019-09-29 14:51:05','2019-09-29 14:51:05',1),(896,1181005,'色温','暖白','2019-09-29 14:51:05','2019-09-29 14:51:05',1),(897,1181005,'功率','6W/灯','2019-09-29 14:51:05','2019-09-29 14:51:05',1),(898,1181005,'光源','G9','2019-09-29 14:51:05','2019-09-29 14:51:05',1),(899,1181005,'水晶/玻璃/压克力尺寸','∅90MM','2019-09-29 14:51:05','2019-09-29 14:51:05',1),(900,1181005,'材质/颜色','铁艺加玻璃罩/铜色','2019-09-29 14:51:05','2019-09-29 14:51:05',1),(901,1181005,'适用','客厅/房间','2019-09-29 14:57:18','2019-09-29 14:57:18',1),(902,1181005,'色温','暖白','2019-09-29 14:57:18','2019-09-29 14:57:18',1),(903,1181005,'功率','6W/灯','2019-09-29 14:57:18','2019-09-29 14:57:18',1),(904,1181005,'光源','G9','2019-09-29 14:57:18','2019-09-29 14:57:18',1),(905,1181005,'水晶/玻璃/压克力尺寸','∅90MM','2019-09-29 14:57:18','2019-09-29 14:57:18',1),(906,1181005,'材质/颜色','铁艺加玻璃罩/铜色','2019-09-29 14:57:18','2019-09-29 14:57:18',1),(907,1181005,'适用','客厅/房间','2019-09-29 15:01:49','2019-09-29 15:01:49',0),(908,1181005,'色温','暖白','2019-09-29 15:01:49','2019-09-29 15:01:49',0),(909,1181005,'功率','6W/灯','2019-09-29 15:01:49','2019-09-29 15:01:49',0),(910,1181005,'光源','G9','2019-09-29 15:01:49','2019-09-29 15:01:49',0),(911,1181005,'水晶/玻璃/压克力尺寸','∅90MM','2019-09-29 15:01:49','2019-09-29 15:01:49',0),(912,1181005,'材质/颜色','铁艺加玻璃罩/铜色','2019-09-29 15:01:49','2019-09-29 15:01:49',0),(913,1181006,'适用','客厅/大厅','2019-09-29 15:09:44','2019-09-29 15:09:44',1),(914,1181006,'色温','暖白','2019-09-29 15:09:44','2019-09-29 15:09:44',1),(915,1181006,'功率','6W/灯泡','2019-09-29 15:09:44','2019-09-29 15:09:44',1),(916,1181006,'光源','G9','2019-09-29 15:09:44','2019-09-29 15:09:44',1),(917,1181006,'材质/颜色','铁艺加玻璃罩/铜色','2019-09-29 15:09:44','2019-09-29 15:09:44',1),(918,1181006,'水晶/玻璃/压克力尺寸','∅90MM','2019-09-29 15:09:44','2019-09-29 15:09:44',1),(919,1181007,'适用','客厅/房间','2019-09-29 15:15:33','2019-09-29 15:15:33',1),(920,1181007,'色温','白','2019-09-29 15:15:33','2019-09-29 15:15:33',1),(921,1181007,'功率','20W','2019-09-29 15:15:33','2019-09-29 15:15:33',1),(922,1181007,'光源','E14','2019-09-29 15:15:33','2019-09-29 15:15:33',1),(923,1181007,'材质/颜色','铁艺加玻璃罩/铜色','2019-09-29 15:15:33','2019-09-29 15:15:33',1),(924,1181007,'水晶/玻璃/压克力尺寸','∅120MM','2019-09-29 15:15:33','2019-09-29 15:15:33',1),(925,1181006,'适用','客厅/大厅','2019-09-29 15:16:49','2019-09-29 15:16:49',1),(926,1181006,'色温','暖白','2019-09-29 15:16:51','2019-09-29 15:16:51',1),(927,1181006,'功率','6W/灯泡','2019-09-29 15:16:51','2019-09-29 15:16:51',1),(928,1181006,'光源','G9','2019-09-29 15:16:51','2019-09-29 15:16:51',1),(929,1181006,'材质/颜色','铁艺加玻璃罩/铜色','2019-09-29 15:16:51','2019-09-29 15:16:51',1),(930,1181006,'水晶/玻璃/压克力尺寸','∅90MM','2019-09-29 15:16:51','2019-09-29 15:16:51',1),(931,1181008,'适用','客厅/房间','2019-09-29 15:23:43','2019-09-29 15:23:43',0),(932,1181008,'色温','暖白','2019-09-29 15:23:43','2019-09-29 15:23:43',0),(933,1181008,'功率','10W','2019-09-29 15:23:43','2019-09-29 15:23:43',0),(934,1181008,'光源','G9 6W-E14 12W','2019-09-29 15:23:43','2019-09-29 15:23:43',0),(935,1181008,'材质/颜色','铁艺加玻璃罩/铜色','2019-09-29 15:23:43','2019-09-29 15:23:43',0),(936,1181008,'水晶/玻璃/压克力尺寸','∅90MM/∅120MM','2019-09-29 15:23:43','2019-09-29 15:23:43',0),(937,1181009,'适用','客厅/房间/大厅','2019-09-29 15:30:47','2019-09-29 15:30:47',0),(938,1181009,'功率','12W/灯泡','2019-09-29 15:30:47','2019-09-29 15:30:47',0),(939,1181009,'光源','E14','2019-09-29 15:30:47','2019-09-29 15:30:47',0),(940,1181009,'材质/颜色','铁艺加玻璃罩/铜色配咖啡金','2019-09-29 15:30:47','2019-09-29 15:30:47',0),(941,1181009,'水晶/玻璃/压克力尺寸','∅120MM','2019-09-29 15:30:47','2019-09-29 15:30:47',0),(942,1181010,'适用','客厅/房间','2019-09-29 15:39:22','2019-09-29 15:39:22',1),(943,1181010,'色温','暖白','2019-09-29 15:39:22','2019-09-29 15:39:22',1),(944,1181010,'功率','6W/灯泡','2019-09-29 15:39:22','2019-09-29 15:39:22',1),(945,1181010,'光源','G9','2019-09-29 15:39:22','2019-09-29 15:39:22',1),(946,1181010,'材质/颜色','铁艺加玻璃罩/铜色配咖啡金','2019-09-29 15:39:22','2019-09-29 15:39:22',1),(947,1181010,'水晶/玻璃/压克力尺寸','∅90MM','2019-09-29 15:39:22','2019-09-29 15:39:22',1),(948,1181011,'适用','客厅/大厅','2019-09-29 15:44:51','2019-09-29 15:44:51',0),(949,1181011,'色温','暖白','2019-09-29 15:44:51','2019-09-29 15:44:51',0),(950,1181011,'功率','12W/灯泡','2019-09-29 15:44:51','2019-09-29 15:44:51',0),(951,1181011,'光源','E14','2019-09-29 15:44:51','2019-09-29 15:44:51',0),(952,1181011,'颜色/材质','铁艺加玻璃罩/铜色配咖啡金','2019-09-29 15:44:51','2019-09-29 15:44:51',0),(953,1181011,'水晶/玻璃/压克力尺寸','∅120MM','2019-09-29 15:44:51','2019-09-29 15:44:51',0),(954,1181012,'适用','客厅/大厅/房间','2019-09-29 15:51:22','2019-09-29 15:51:22',0),(955,1181012,'色温','暖白','2019-09-29 15:51:22','2019-09-29 15:51:22',0),(956,1181012,'功率','12W/灯泡','2019-09-29 15:51:22','2019-09-29 15:51:22',0),(957,1181012,'光源','E14','2019-09-29 15:51:22','2019-09-29 15:51:22',0),(958,1181012,'材质/颜色','铁艺加玻璃罩/铜色配咖啡金','2019-09-29 15:51:22','2019-09-29 15:51:22',0),(959,1181012,'水晶/玻璃/压克力尺寸','∅120MM','2019-09-29 15:51:22','2019-09-29 15:51:22',0),(960,1181013,'适用','客厅/房间','2019-09-29 15:54:58','2019-09-29 15:54:58',0),(961,1181013,'色温','暖白','2019-09-29 15:54:58','2019-09-29 15:54:58',0),(962,1181013,'功率','6W/灯泡','2019-09-29 15:54:58','2019-09-29 15:54:58',0),(963,1181013,'光源','G9','2019-09-29 15:54:58','2019-09-29 15:54:58',0),(964,1181013,'材质/颜色','铁艺加玻璃罩/铜色配咖啡金','2019-09-29 15:54:58','2019-09-29 15:54:58',0),(965,1181013,'水晶/玻璃/压克力尺寸','∅90MM','2019-09-29 15:54:58','2019-09-29 15:54:58',0),(966,1181014,'适用','客厅/大厅','2019-09-29 16:00:59','2019-09-29 16:00:59',0),(967,1181014,'色温','暖白','2019-09-29 16:00:59','2019-09-29 16:00:59',0),(968,1181014,'功率','12W/灯泡','2019-09-29 16:00:59','2019-09-29 16:00:59',0),(969,1181014,'光源','E14','2019-09-29 16:01:00','2019-09-29 16:01:00',0),(970,1181014,'材质/颜色','铁艺加玻璃罩/铜色配咖啡金','2019-09-29 16:01:00','2019-09-29 16:01:00',0),(971,1181014,'水晶/玻璃/压克力尺寸','∅120MM','2019-09-29 16:01:00','2019-09-29 16:01:00',0),(972,1181015,'适用','客厅/大厅','2019-09-29 16:04:26','2019-09-29 16:04:26',1),(973,1181015,'色温','暖白','2019-09-29 16:04:26','2019-09-29 16:04:26',1),(974,1181015,'功率','6W/灯泡','2019-09-29 16:04:26','2019-09-29 16:04:26',1),(975,1181015,'光源','G9','2019-09-29 16:04:26','2019-09-29 16:04:26',1),(976,1181015,'材质/颜色','铁艺加玻璃罩/铜色配哑黑','2019-09-29 16:04:26','2019-09-29 16:04:26',1),(977,1181015,'水晶/玻璃/压克力尺寸','∅90MM','2019-09-29 16:04:26','2019-09-29 16:04:26',1),(978,1181007,'适用','客厅/房间','2019-09-29 16:09:28','2019-09-29 16:09:28',0),(979,1181007,'色温','白','2019-09-29 16:09:28','2019-09-29 16:09:28',0),(980,1181007,'功率','20W','2019-09-29 16:09:29','2019-09-29 16:09:29',0),(981,1181007,'光源','E14','2019-09-29 16:09:29','2019-09-29 16:09:29',0),(982,1181007,'材质/颜色','铁艺加玻璃罩/铜色','2019-09-29 16:09:29','2019-09-29 16:09:29',0),(983,1181007,'水晶/玻璃/压克力尺寸','∅120MM','2019-09-29 16:09:29','2019-09-29 16:09:29',0),(984,1181015,'适用','客厅/大厅','2019-09-29 16:12:18','2019-09-29 16:12:18',0),(985,1181015,'色温','暖白','2019-09-29 16:12:18','2019-09-29 16:12:18',0),(986,1181015,'功率','6W/灯泡','2019-09-29 16:12:18','2019-09-29 16:12:18',0),(987,1181015,'光源','G9','2019-09-29 16:12:18','2019-09-29 16:12:18',0),(988,1181015,'材质/颜色','铁艺加玻璃罩/铜色配哑黑','2019-09-29 16:12:18','2019-09-29 16:12:18',0),(989,1181015,'水晶/玻璃/压克力尺寸','∅90MM','2019-09-29 16:12:18','2019-09-29 16:12:18',0),(990,1181016,'适用','客厅/房间','2019-09-29 16:23:42','2019-09-29 16:23:42',0),(991,1181016,'色温','暖白','2019-09-29 16:23:42','2019-09-29 16:23:42',0),(992,1181016,'功率','12W/灯泡','2019-09-29 16:23:42','2019-09-29 16:23:42',0),(993,1181016,'光源','E14','2019-09-29 16:23:43','2019-09-29 16:23:43',0),(994,1181016,'材质/颜色','铁艺加玻璃罩/铜色配咖啡金','2019-09-29 16:23:43','2019-09-29 16:23:43',0),(995,1181016,'水晶/玻璃/压克力尺寸','∅120MM','2019-09-29 16:23:43','2019-09-29 16:23:43',0),(996,1181017,'适用','房间/客厅','2019-09-29 16:27:43','2019-09-29 16:27:43',0),(997,1181017,'功率','6W/灯泡','2019-09-29 16:27:43','2019-09-29 16:27:43',0),(998,1181017,'色温','暖白','2019-09-29 16:27:44','2019-09-29 16:27:44',0),(999,1181017,'光源','G9','2019-09-29 16:27:44','2019-09-29 16:27:44',0),(1000,1181017,'材质/颜色','铁艺加玻璃罩/铜色配咖啡金','2019-09-29 16:27:44','2019-09-29 16:27:44',0),(1001,1181017,'水晶/玻璃/压克力尺寸','∅90MM','2019-09-29 16:27:44','2019-09-29 16:27:44',0),(1002,1181018,'适用','客厅/房间','2019-09-29 16:30:16','2019-09-29 16:30:16',0),(1003,1181018,'色温','暖白','2019-09-29 16:30:16','2019-09-29 16:30:16',0),(1004,1181018,'功率','12W/灯泡','2019-09-29 16:30:16','2019-09-29 16:30:16',0),(1005,1181018,'光源','E14','2019-09-29 16:30:17','2019-09-29 16:30:17',0),(1006,1181018,'材质/颜色','铁艺加玻璃罩/铜色配咖啡金','2019-09-29 16:30:17','2019-09-29 16:30:17',0),(1007,1181018,'水晶/玻璃/压克力尺寸','∅120MM','2019-09-29 16:30:17','2019-09-29 16:30:17',0),(1008,1181010,'适用','客厅/房间','2019-09-29 16:31:35','2019-09-29 16:31:35',1),(1009,1181010,'色温','暖白','2019-09-29 16:31:35','2019-09-29 16:31:35',1),(1010,1181010,'功率','6W/灯泡','2019-09-29 16:31:35','2019-09-29 16:31:35',1),(1011,1181010,'光源','G9','2019-09-29 16:31:35','2019-09-29 16:31:35',1),(1012,1181010,'材质/颜色','铁艺加玻璃罩/铜色配咖啡金','2019-09-29 16:31:35','2019-09-29 16:31:35',1),(1013,1181010,'水晶/玻璃/压克力尺寸','∅90MM','2019-09-29 16:31:35','2019-09-29 16:31:35',1),(1014,1181006,'适用','客厅/大厅','2019-09-29 16:33:35','2019-09-29 16:33:35',0),(1015,1181006,'色温','暖白','2019-09-29 16:33:35','2019-09-29 16:33:35',0),(1016,1181006,'功率','6W/灯泡','2019-09-29 16:33:35','2019-09-29 16:33:35',0),(1017,1181006,'光源','G9','2019-09-29 16:33:35','2019-09-29 16:33:35',0),(1018,1181006,'材质/颜色','铁艺加玻璃罩/铜色','2019-09-29 16:33:35','2019-09-29 16:33:35',0),(1019,1181006,'水晶/玻璃/压克力尺寸','∅90MM','2019-09-29 16:33:35','2019-09-29 16:33:35',0),(1020,1181019,'适用','客厅/房间','2019-09-29 16:36:53','2019-09-29 16:36:53',0),(1021,1181019,'色温','暖白','2019-09-29 16:36:53','2019-09-29 16:36:53',0),(1022,1181019,'功率','12W/灯泡','2019-09-29 16:36:53','2019-09-29 16:36:53',0),(1023,1181019,'光源','E14','2019-09-29 16:36:53','2019-09-29 16:36:53',0),(1024,1181019,'材质/颜色','铁艺加玻璃罩/铜色配咖啡金','2019-09-29 16:36:53','2019-09-29 16:36:53',0),(1025,1181019,'水晶/玻璃/压克力尺寸','∅120MM','2019-09-29 16:36:53','2019-09-29 16:36:53',0),(1026,1181010,'适用','客厅/房间','2019-09-29 16:37:26','2019-09-29 16:37:26',0),(1027,1181010,'色温','暖白','2019-09-29 16:37:26','2019-09-29 16:37:26',0),(1028,1181010,'功率','6W/灯泡','2019-09-29 16:37:26','2019-09-29 16:37:26',0),(1029,1181010,'光源','G9','2019-09-29 16:37:26','2019-09-29 16:37:26',0),(1030,1181010,'材质/颜色','铁艺加玻璃罩/铜色配咖啡金','2019-09-29 16:37:26','2019-09-29 16:37:26',0),(1031,1181010,'水晶/玻璃/压克力尺寸','∅90MM','2019-09-29 16:37:26','2019-09-29 16:37:26',0);
/*!40000 ALTER TABLE `ax_goods_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ax_goods_product`
--

DROP TABLE IF EXISTS `ax_goods_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ax_goods_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL DEFAULT '0' COMMENT '商品表的商品ID',
  `specifications` varchar(1023) NOT NULL COMMENT '商品规格值列表，采用JSON数组格式',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '商品货品价格',
  `number` int(11) NOT NULL DEFAULT '0' COMMENT '商品货品数量',
  `url` varchar(125) DEFAULT NULL COMMENT '商品货品图片',
  `add_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `deleted` tinyint(1) DEFAULT '0' COMMENT '逻辑删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=306 DEFAULT CHARSET=utf8mb4 COMMENT='商品货品表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ax_goods_product`
--

LOCK TABLES `ax_goods_product` WRITE;
/*!40000 ALTER TABLE `ax_goods_product` DISABLE KEYS */;
INSERT INTO `ax_goods_product` VALUES (251,1181004,'[\"标准\"]',0.01,100,'http://localhost:8080/wx/storage/fetch/eigz6xhvseu5eg3kn1jd.jpg','2019-09-26 17:03:23','2019-09-26 17:03:23',1),(252,1181004,'[\"标准\"]',0.01,100,'http://localhost:8080/wx/storage/fetch/eigz6xhvseu5eg3kn1jd.jpg','2019-09-26 17:06:41','2019-09-26 17:06:41',1),(253,1181004,'[\"标准\"]',0.01,100,'http://localhost:8080/wx/storage/fetch/eigz6xhvseu5eg3kn1jd.jpg','2019-09-29 10:22:31','2019-09-29 10:22:31',1),(254,1181005,'[\"10\"]',448.00,100,'','2019-09-29 14:31:21','2019-09-29 14:31:21',1),(255,1181005,'[\"12\"]',558.00,100,'','2019-09-29 14:31:21','2019-09-29 14:31:21',1),(256,1181005,'[\"16\"]',698.00,100,'','2019-09-29 14:31:21','2019-09-29 14:31:21',1),(257,1181005,'[\"20\"]',928.00,100,'','2019-09-29 14:31:21','2019-09-29 14:31:21',1),(258,1181005,'[\"10\"]',448.00,100,'','2019-09-29 14:45:02','2019-09-29 14:45:02',1),(259,1181005,'[\"12\"]',558.00,100,'','2019-09-29 14:45:02','2019-09-29 14:45:02',1),(260,1181005,'[\"16\"]',698.00,100,'','2019-09-29 14:45:02','2019-09-29 14:45:02',1),(261,1181005,'[\"20\"]',928.00,100,'','2019-09-29 14:45:02','2019-09-29 14:45:02',1),(262,1181005,'[\"10\"]',448.00,10,'','2019-09-29 14:51:05','2019-09-29 14:51:05',1),(263,1181005,'[\"12\"]',558.00,10,'','2019-09-29 14:51:05','2019-09-29 14:51:05',1),(264,1181005,'[\"16\"]',698.00,10,'','2019-09-29 14:51:05','2019-09-29 14:51:05',1),(265,1181005,'[\"20\"]',928.00,10,'','2019-09-29 14:51:05','2019-09-29 14:51:05',1),(266,1181005,'[\"10\"]',448.00,10,'','2019-09-29 14:57:18','2019-09-29 14:57:18',1),(267,1181005,'[\"12\"]',558.00,10,'','2019-09-29 14:57:18','2019-09-29 14:57:18',1),(268,1181005,'[\"16\"]',698.00,10,'','2019-09-29 14:57:18','2019-09-29 14:57:18',1),(269,1181005,'[\"20\"]',928.00,10,'','2019-09-29 14:57:18','2019-09-29 14:57:18',1),(270,1181005,'[\"2（壁灯）\"]',136.00,10,'','2019-09-29 14:57:18','2019-09-29 14:57:18',1),(271,1181005,'[\"10\"]',448.00,10,'','2019-09-29 15:01:49','2019-09-29 15:01:49',0),(272,1181005,'[\"12\"]',558.00,10,'','2019-09-29 15:01:49','2019-09-29 15:01:49',0),(273,1181005,'[\"16\"]',698.00,10,'','2019-09-29 15:01:49','2019-09-29 15:01:49',0),(274,1181005,'[\"20\"]',928.00,10,'','2019-09-29 15:01:49','2019-09-29 15:01:49',0),(275,1181005,'[\"2（壁灯）\"]',136.00,10,'','2019-09-29 15:01:49','2019-09-29 15:01:49',0),(276,1181006,'[\"10\"]',0.00,0,'','2019-09-29 15:09:44','2019-09-29 15:09:44',1),(277,1181006,'[\"10（椭圆）\"]',0.00,0,'','2019-09-29 15:09:44','2019-09-29 15:09:44',1),(278,1181007,'[\"2\"]',136.00,136,'','2019-09-29 15:15:33','2019-09-29 15:15:33',1),(279,1181006,'[\"10\"]',436.00,100,'','2019-09-29 15:16:51','2019-09-29 15:16:51',1),(280,1181006,'[\"10（椭圆）\"]',436.00,10,'','2019-09-29 15:16:51','2019-09-29 15:16:51',1),(281,1181008,'[\"1+1\"]',136.00,10,'','2019-09-29 15:23:43','2019-09-29 15:23:43',0),(282,1181009,'[\"5\"]',288.00,10,'','2019-09-29 15:30:47','2019-09-29 15:30:47',0),(283,1181009,'[\"6\"]',358.00,10,'','2019-09-29 15:30:47','2019-09-29 15:30:47',0),(284,1181009,'[\"8\"]',448.00,10,'','2019-09-29 15:30:47','2019-09-29 15:30:47',0),(285,1181009,'[\"10\"]',568.00,10,'','2019-09-29 15:30:47','2019-09-29 15:30:47',0),(286,1181009,'[\"6（吸顶灯）\"]',428.00,10,'','2019-09-29 15:30:47','2019-09-29 15:30:47',0),(287,1181009,'[\"8（吸顶灯）\"]',328.00,10,'','2019-09-29 15:30:47','2019-09-29 15:30:47',0),(288,1181010,'[\"6\"]',278.00,10,'','2019-09-29 15:39:22','2019-09-29 15:39:22',1),(289,1181011,'[\"8\"]',358.00,10,'','2019-09-29 15:44:51','2019-09-29 15:44:51',0),(290,1181012,'[\"8\"]',388.00,10,'','2019-09-29 15:51:22','2019-09-29 15:51:22',0),(291,1181012,'[\"12\"]',598.00,10,'','2019-09-29 15:51:22','2019-09-29 15:51:22',0),(292,1181012,'[\"2（壁灯）\"]',136.00,10,'','2019-09-29 15:51:22','2019-09-29 15:51:22',0),(293,1181013,'[\"2\"]',136.00,10,'','2019-09-29 15:54:58','2019-09-29 15:54:58',0),(294,1181014,'[\"3\"]',268.00,10,'','2019-09-29 16:01:00','2019-09-29 16:01:00',0),(295,1181015,'[\"标准\"]',111.00,111,'','2019-09-29 16:04:26','2019-09-29 16:04:26',1),(296,1181007,'[\"2\"]',136.00,136,'','2019-09-29 16:09:29','2019-09-29 16:09:29',0),(297,1181015,'[\"标准\"]',111.00,111,'','2019-09-29 16:12:18','2019-09-29 16:12:18',0),(298,1181016,'[\"标准\"]',111.00,111,'','2019-09-29 16:23:43','2019-09-29 16:23:43',0),(299,1181017,'[\"标准\"]',10.00,10,'','2019-09-29 16:27:44','2019-09-29 16:27:44',0),(300,1181018,'[\"标准\"]',0.00,0,'','2019-09-29 16:30:17','2019-09-29 16:30:17',0),(301,1181010,'[\"6\"]',278.00,10,'','2019-09-29 16:31:35','2019-09-29 16:31:35',1),(302,1181006,'[\"10\"]',436.00,100,'','2019-09-29 16:33:35','2019-09-29 16:33:35',0),(303,1181006,'[\"10（椭圆）\"]',436.00,10,'','2019-09-29 16:33:35','2019-09-29 16:33:35',0),(304,1181019,'[\"标准\"]',10.00,10,'','2019-09-29 16:36:53','2019-09-29 16:36:53',0),(305,1181010,'[\"6\"]',278.00,10,'','2019-09-29 16:37:26','2019-09-29 16:37:26',0);
/*!40000 ALTER TABLE `ax_goods_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ax_goods_specification`
--

DROP TABLE IF EXISTS `ax_goods_specification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ax_goods_specification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL DEFAULT '0' COMMENT '商品表的商品ID',
  `specification` varchar(255) NOT NULL DEFAULT '' COMMENT '商品规格名称',
  `value` varchar(255) NOT NULL DEFAULT '' COMMENT '商品规格值',
  `pic_url` varchar(255) NOT NULL DEFAULT '' COMMENT '商品规格图片',
  `add_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `deleted` tinyint(1) DEFAULT '0' COMMENT '逻辑删除',
  PRIMARY KEY (`id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=InnoDB AUTO_INCREMENT=305 DEFAULT CHARSET=utf8mb4 COMMENT='商品规格表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ax_goods_specification`
--

LOCK TABLES `ax_goods_specification` WRITE;
/*!40000 ALTER TABLE `ax_goods_specification` DISABLE KEYS */;
INSERT INTO `ax_goods_specification` VALUES (250,1181004,'规格','标准','','2019-09-26 17:03:23','2019-09-26 17:03:23',1),(251,1181004,'规格','标准','','2019-09-26 17:06:41','2019-09-26 17:06:41',1),(252,1181004,'规格','标准','','2019-09-29 10:22:31','2019-09-29 10:22:31',1),(253,1181005,'型号','10','','2019-09-29 14:31:21','2019-09-29 14:31:21',1),(254,1181005,'型号','12','','2019-09-29 14:31:21','2019-09-29 14:31:21',1),(255,1181005,'型号','16','','2019-09-29 14:31:21','2019-09-29 14:31:21',1),(256,1181005,'型号','20','','2019-09-29 14:31:21','2019-09-29 14:31:21',1),(257,1181005,'型号','10','','2019-09-29 14:45:02','2019-09-29 14:45:02',1),(258,1181005,'型号','12','','2019-09-29 14:45:02','2019-09-29 14:45:02',1),(259,1181005,'型号','16','','2019-09-29 14:45:02','2019-09-29 14:45:02',1),(260,1181005,'型号','20','','2019-09-29 14:45:02','2019-09-29 14:45:02',1),(261,1181005,'灯泡数','10','','2019-09-29 14:51:05','2019-09-29 14:51:05',1),(262,1181005,'灯泡数','12','','2019-09-29 14:51:05','2019-09-29 14:51:05',1),(263,1181005,'灯泡数','16','','2019-09-29 14:51:05','2019-09-29 14:51:05',1),(264,1181005,'灯泡数','20','','2019-09-29 14:51:05','2019-09-29 14:51:05',1),(265,1181005,'灯泡数','10','','2019-09-29 14:57:18','2019-09-29 14:57:18',1),(266,1181005,'灯泡数','12','','2019-09-29 14:57:18','2019-09-29 14:57:18',1),(267,1181005,'灯泡数','16','','2019-09-29 14:57:18','2019-09-29 14:57:18',1),(268,1181005,'灯泡数','20','','2019-09-29 14:57:18','2019-09-29 14:57:18',1),(269,1181005,'灯泡数','2（壁灯）','','2019-09-29 14:57:18','2019-09-29 14:57:18',1),(270,1181005,'灯泡数','10','','2019-09-29 15:01:49','2019-09-29 15:01:49',0),(271,1181005,'灯泡数','12','','2019-09-29 15:01:49','2019-09-29 15:01:49',0),(272,1181005,'灯泡数','16','','2019-09-29 15:01:49','2019-09-29 15:01:49',0),(273,1181005,'灯泡数','20','','2019-09-29 15:01:49','2019-09-29 15:01:49',0),(274,1181005,'灯泡数','2（壁灯）','','2019-09-29 15:01:49','2019-09-29 15:01:49',0),(275,1181006,'灯泡数','10','','2019-09-29 15:09:44','2019-09-29 15:09:44',1),(276,1181006,'灯泡数','10（椭圆）','','2019-09-29 15:09:44','2019-09-29 15:09:44',1),(277,1181007,'灯泡数','2','','2019-09-29 15:15:33','2019-09-29 15:15:33',1),(278,1181006,'灯泡数','10','','2019-09-29 15:16:48','2019-09-29 15:16:48',1),(279,1181006,'灯泡数','10（椭圆）','','2019-09-29 15:16:48','2019-09-29 15:16:48',1),(280,1181008,'灯泡数','1+1','','2019-09-29 15:23:43','2019-09-29 15:23:43',0),(281,1181009,'灯泡数','5','','2019-09-29 15:30:47','2019-09-29 15:30:47',0),(282,1181009,'灯泡数','6','','2019-09-29 15:30:47','2019-09-29 15:30:47',0),(283,1181009,'灯泡数','8','','2019-09-29 15:30:47','2019-09-29 15:30:47',0),(284,1181009,'灯泡数','10','','2019-09-29 15:30:47','2019-09-29 15:30:47',0),(285,1181009,'灯泡数','6（吸顶灯）','','2019-09-29 15:30:47','2019-09-29 15:30:47',0),(286,1181009,'灯泡数','8（吸顶灯）','','2019-09-29 15:30:47','2019-09-29 15:30:47',0),(287,1181010,'灯泡数','6','','2019-09-29 15:39:22','2019-09-29 15:39:22',1),(288,1181011,'灯泡数','8','','2019-09-29 15:44:51','2019-09-29 15:44:51',0),(289,1181012,'灯泡数','8','','2019-09-29 15:51:22','2019-09-29 15:51:22',0),(290,1181012,'灯泡数','12','','2019-09-29 15:51:22','2019-09-29 15:51:22',0),(291,1181012,'灯泡数','2（壁灯）','','2019-09-29 15:51:22','2019-09-29 15:51:22',0),(292,1181013,'灯泡数','2','','2019-09-29 15:54:58','2019-09-29 15:54:58',0),(293,1181014,'灯泡数','3','','2019-09-29 16:00:59','2019-09-29 16:00:59',0),(294,1181015,'规格','标准','','2019-09-29 16:04:25','2019-09-29 16:04:25',1),(295,1181007,'灯泡数','2','','2019-09-29 16:09:28','2019-09-29 16:09:28',0),(296,1181015,'规格','标准','','2019-09-29 16:12:18','2019-09-29 16:12:18',0),(297,1181016,'规格','标准','','2019-09-29 16:23:42','2019-09-29 16:23:42',0),(298,1181017,'规格','标准','','2019-09-29 16:27:43','2019-09-29 16:27:43',0),(299,1181018,'规格','标准','','2019-09-29 16:30:16','2019-09-29 16:30:16',0),(300,1181010,'灯泡数','6','','2019-09-29 16:31:35','2019-09-29 16:31:35',1),(301,1181006,'灯泡数','10','','2019-09-29 16:33:35','2019-09-29 16:33:35',0),(302,1181006,'灯泡数','10（椭圆）','','2019-09-29 16:33:35','2019-09-29 16:33:35',0),(303,1181019,'规格','标准','','2019-09-29 16:36:53','2019-09-29 16:36:53',0),(304,1181010,'灯泡数','6','','2019-09-29 16:37:26','2019-09-29 16:37:26',0);
/*!40000 ALTER TABLE `ax_goods_specification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ax_groupon`
--

DROP TABLE IF EXISTS `ax_groupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ax_groupon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL COMMENT '关联的订单ID',
  `groupon_id` int(11) DEFAULT '0' COMMENT '参与的团购ID，仅当user_type不是1',
  `rules_id` int(11) NOT NULL COMMENT '团购规则ID，关联ax_groupon_rules表ID字段',
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `creator_user_id` int(11) NOT NULL COMMENT '创建者ID',
  `add_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `share_url` varchar(255) DEFAULT NULL COMMENT '团购分享图片地址',
  `payed` tinyint(1) NOT NULL COMMENT '是否已经支付',
  `deleted` tinyint(1) DEFAULT '0' COMMENT '逻辑删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ax_groupon`
--

LOCK TABLES `ax_groupon` WRITE;
/*!40000 ALTER TABLE `ax_groupon` DISABLE KEYS */;
/*!40000 ALTER TABLE `ax_groupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ax_groupon_rules`
--

DROP TABLE IF EXISTS `ax_groupon_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ax_groupon_rules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL COMMENT '商品表的商品ID',
  `goods_name` varchar(127) NOT NULL COMMENT '商品名称',
  `pic_url` varchar(255) DEFAULT NULL COMMENT '商品图片或者商品货品图片',
  `discount` decimal(63,0) NOT NULL COMMENT '优惠金额',
  `discount_member` int(11) NOT NULL COMMENT '达到优惠条件的人数',
  `add_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `expire_time` datetime DEFAULT NULL COMMENT '团购过期时间',
  `deleted` tinyint(1) DEFAULT '0' COMMENT '逻辑删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ax_groupon_rules`
--

LOCK TABLES `ax_groupon_rules` WRITE;
/*!40000 ALTER TABLE `ax_groupon_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `ax_groupon_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ax_issue`
--

DROP TABLE IF EXISTS `ax_issue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ax_issue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(255) DEFAULT NULL COMMENT '问题标题',
  `answer` varchar(255) DEFAULT NULL COMMENT '问题答案',
  `add_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `deleted` tinyint(1) DEFAULT '0' COMMENT '逻辑删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COMMENT='常见问题表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ax_issue`
--

LOCK TABLES `ax_issue` WRITE;
/*!40000 ALTER TABLE `ax_issue` DISABLE KEYS */;
INSERT INTO `ax_issue` VALUES (5,'什么是测试','测试就是测试','2019-09-26 17:03:42','2019-09-26 17:03:42',1);
/*!40000 ALTER TABLE `ax_issue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ax_keyword`
--

DROP TABLE IF EXISTS `ax_keyword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ax_keyword` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keyword` varchar(127) NOT NULL DEFAULT '' COMMENT '关键字',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '关键字的跳转链接',
  `is_hot` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否是热门关键字',
  `is_default` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否是默认关键字',
  `sort_order` int(11) NOT NULL DEFAULT '100' COMMENT '排序',
  `add_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `deleted` tinyint(1) DEFAULT '0' COMMENT '逻辑删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COMMENT='关键字表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ax_keyword`
--

LOCK TABLES `ax_keyword` WRITE;
/*!40000 ALTER TABLE `ax_keyword` DISABLE KEYS */;
INSERT INTO `ax_keyword` VALUES (8,'测试','www.baidu.com',1,1,100,'2019-09-26 17:07:57','2019-09-26 17:07:57',1);
/*!40000 ALTER TABLE `ax_keyword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ax_log`
--

DROP TABLE IF EXISTS `ax_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ax_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '管理员',
  `ip` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '管理员地址',
  `type` int(11) DEFAULT NULL COMMENT '操作分类',
  `action` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '操作动作',
  `status` tinyint(1) DEFAULT NULL COMMENT '操作状态',
  `result` varchar(127) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '操作结果，或者成功消息，或者失败消息',
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '补充信息',
  `add_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `deleted` tinyint(1) DEFAULT '0' COMMENT '逻辑删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='操作日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ax_log`
--

LOCK TABLES `ax_log` WRITE;
/*!40000 ALTER TABLE `ax_log` DISABLE KEYS */;
INSERT INTO `ax_log` VALUES (1,'admin123','0:0:0:0:0:0:0:1',1,'登录',1,'','','2019-09-26 16:59:24','2019-09-26 16:59:24',0),(2,'admin123','0:0:0:0:0:0:0:1',1,'退出',1,'','','2019-09-26 17:11:03','2019-09-26 17:11:03',0),(3,'admin123','0:0:0:0:0:0:0:1',1,'登录',1,'','','2019-09-26 17:11:45','2019-09-26 17:11:45',0),(4,'admin123','0:0:0:0:0:0:0:1',1,'登录',1,'','','2019-09-26 17:14:04','2019-09-26 17:14:04',0),(5,'admin123','0:0:0:0:0:0:0:1',1,'登录',1,'','','2019-09-28 11:37:15','2019-09-28 11:37:15',0),(6,'admin123','0:0:0:0:0:0:0:1',1,'登录',1,'','','2019-09-28 11:37:38','2019-09-28 11:37:38',0),(7,'admin123','0:0:0:0:0:0:0:1',1,'登录',1,'','','2019-09-28 12:13:23','2019-09-28 12:13:23',0),(8,'admin123','0:0:0:0:0:0:0:1',1,'登录',1,'','','2019-09-29 10:21:57','2019-09-29 10:21:57',0),(9,'admin123','0:0:0:0:0:0:0:1',1,'登录',1,'','','2019-09-29 14:09:02','2019-09-29 14:09:02',0),(10,'admin123','0:0:0:0:0:0:0:1',1,'登录',1,'','','2019-09-29 14:13:33','2019-09-29 14:13:33',0);
/*!40000 ALTER TABLE `ax_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ax_order`
--

DROP TABLE IF EXISTS `ax_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ax_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户表的用户ID',
  `order_sn` varchar(63) NOT NULL COMMENT '订单编号',
  `order_status` smallint(6) NOT NULL COMMENT '订单状态',
  `consignee` varchar(63) NOT NULL COMMENT '收货人名称',
  `mobile` varchar(63) NOT NULL COMMENT '收货人手机号',
  `address` varchar(127) NOT NULL COMMENT '收货具体地址',
  `message` varchar(512) NOT NULL DEFAULT '' COMMENT '用户订单留言',
  `goods_price` decimal(10,2) NOT NULL COMMENT '商品总费用',
  `freight_price` decimal(10,2) NOT NULL COMMENT '配送费用',
  `coupon_price` decimal(10,2) NOT NULL COMMENT '优惠券减免',
  `integral_price` decimal(10,2) NOT NULL COMMENT '用户积分减免',
  `groupon_price` decimal(10,2) NOT NULL COMMENT '团购优惠价减免',
  `order_price` decimal(10,2) NOT NULL COMMENT '订单费用， = goods_price + freight_price - coupon_price',
  `actual_price` decimal(10,2) NOT NULL COMMENT '实付费用， = order_price - integral_price',
  `pay_id` varchar(63) DEFAULT NULL COMMENT '微信付款编号',
  `pay_time` datetime DEFAULT NULL COMMENT '微信付款时间',
  `ship_sn` varchar(63) DEFAULT NULL COMMENT '发货编号',
  `ship_channel` varchar(63) DEFAULT NULL COMMENT '发货快递公司',
  `ship_time` datetime DEFAULT NULL COMMENT '发货开始时间',
  `confirm_time` datetime DEFAULT NULL COMMENT '用户确认收货时间',
  `comments` smallint(6) DEFAULT '0' COMMENT '待评价订单商品数量',
  `end_time` datetime DEFAULT NULL COMMENT '订单关闭时间',
  `add_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `deleted` tinyint(1) DEFAULT '0' COMMENT '逻辑删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='订单表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ax_order`
--

LOCK TABLES `ax_order` WRITE;
/*!40000 ALTER TABLE `ax_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `ax_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ax_order_goods`
--

DROP TABLE IF EXISTS `ax_order_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ax_order_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL DEFAULT '0' COMMENT '订单表的订单ID',
  `goods_id` int(11) NOT NULL DEFAULT '0' COMMENT '商品表的商品ID',
  `goods_name` varchar(127) NOT NULL DEFAULT '' COMMENT '商品名称',
  `goods_sn` varchar(63) NOT NULL DEFAULT '' COMMENT '商品编号',
  `product_id` int(11) NOT NULL DEFAULT '0' COMMENT '商品货品表的货品ID',
  `number` smallint(5) NOT NULL DEFAULT '0' COMMENT '商品货品的购买数量',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '商品货品的售价',
  `specifications` varchar(1023) NOT NULL COMMENT '商品货品的规格列表',
  `pic_url` varchar(255) NOT NULL DEFAULT '' COMMENT '商品货品图片或者商品图片',
  `comment` int(11) DEFAULT '0' COMMENT '订单商品评论，如果是-1，则超期不能评价；如果是0，则可以评价；如果其他值，则是comment表里面的评论ID。',
  `add_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `deleted` tinyint(1) DEFAULT '0' COMMENT '逻辑删除',
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='订单商品表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ax_order_goods`
--

LOCK TABLES `ax_order_goods` WRITE;
/*!40000 ALTER TABLE `ax_order_goods` DISABLE KEYS */;
/*!40000 ALTER TABLE `ax_order_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ax_permission`
--

DROP TABLE IF EXISTS `ax_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ax_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL COMMENT '角色ID',
  `permission` varchar(63) DEFAULT NULL COMMENT '权限',
  `add_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `deleted` tinyint(1) DEFAULT '0' COMMENT '逻辑删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COMMENT='权限表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ax_permission`
--

LOCK TABLES `ax_permission` WRITE;
/*!40000 ALTER TABLE `ax_permission` DISABLE KEYS */;
INSERT INTO `ax_permission` VALUES (1,1,'*','2019-01-01 00:00:00','2019-01-01 00:00:00',0),(2,2,'admin:category:read','2019-01-07 15:18:53','2019-01-07 15:18:53',0),(3,2,'admin:category:update','2019-01-07 15:18:53','2019-01-07 15:18:53',0),(4,2,'admin:category:delete','2019-01-07 15:18:53','2019-01-07 15:18:53',0),(5,2,'admin:category:create','2019-01-07 15:18:53','2019-01-07 15:18:53',0),(6,2,'admin:category:list','2019-01-07 15:18:53','2019-01-07 15:18:53',0),(7,2,'admin:brand:create','2019-01-07 15:18:53','2019-01-07 15:18:53',0),(8,2,'admin:brand:list','2019-01-07 15:18:53','2019-01-07 15:18:53',0),(9,2,'admin:brand:delete','2019-01-07 15:18:53','2019-01-07 15:18:53',0),(10,2,'admin:brand:read','2019-01-07 15:18:53','2019-01-07 15:18:53',0),(11,2,'admin:brand:update','2019-01-07 15:18:53','2019-01-07 15:18:53',0),(12,3,'admin:ad:list','2019-01-07 15:18:57','2019-01-07 15:18:57',0),(13,3,'admin:ad:delete','2019-01-07 15:18:57','2019-01-07 15:18:57',0),(14,3,'admin:ad:create','2019-01-07 15:18:57','2019-01-07 15:18:57',0),(15,3,'admin:ad:update','2019-01-07 15:18:57','2019-01-07 15:18:57',0),(16,3,'admin:ad:read','2019-01-07 15:18:57','2019-01-07 15:18:57',0),(17,3,'admin:groupon:list','2019-01-07 15:18:57','2019-01-07 15:18:57',0),(18,3,'admin:groupon:update','2019-01-07 15:18:57','2019-01-07 15:18:57',0),(19,3,'admin:groupon:create','2019-01-07 15:18:57','2019-01-07 15:18:57',0),(20,3,'admin:groupon:read','2019-01-07 15:18:57','2019-01-07 15:18:57',0),(21,3,'admin:groupon:delete','2019-01-07 15:18:57','2019-01-07 15:18:57',0),(22,3,'admin:topic:create','2019-01-07 15:18:57','2019-01-07 15:18:57',0),(23,3,'admin:topic:read','2019-01-07 15:18:57','2019-01-07 15:18:57',0),(24,3,'admin:topic:list','2019-01-07 15:18:57','2019-01-07 15:18:57',0),(25,3,'admin:topic:delete','2019-01-07 15:18:57','2019-01-07 15:18:57',0),(26,3,'admin:topic:update','2019-01-07 15:18:57','2019-01-07 15:18:57',0),(27,3,'admin:coupon:list','2019-01-07 15:18:57','2019-01-07 15:18:57',0),(28,3,'admin:coupon:delete','2019-01-07 15:18:57','2019-01-07 15:18:57',0),(29,3,'admin:coupon:read','2019-01-07 15:18:57','2019-01-07 15:18:57',0),(30,3,'admin:coupon:create','2019-01-07 15:18:57','2019-01-07 15:18:57',0),(31,3,'admin:coupon:update','2019-01-07 15:18:57','2019-01-07 15:18:57',0);
/*!40000 ALTER TABLE `ax_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ax_region`
--

DROP TABLE IF EXISTS `ax_region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ax_region` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0' COMMENT '行政区域父ID，例如区县的pid指向市，市的pid指向省，省的pid则是0',
  `name` varchar(120) NOT NULL DEFAULT '' COMMENT '行政区域名称',
  `type` tinyint(3) NOT NULL DEFAULT '0' COMMENT '行政区域类型，如如1则是省， 如果是2则是市，如果是3则是区县',
  `code` int(11) NOT NULL DEFAULT '0' COMMENT '行政区域编码',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`pid`),
  KEY `region_type` (`type`),
  KEY `agency_id` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=3232 DEFAULT CHARSET=utf8mb4 COMMENT='行政区域表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ax_region`
--

LOCK TABLES `ax_region` WRITE;
/*!40000 ALTER TABLE `ax_region` DISABLE KEYS */;
INSERT INTO `ax_region` VALUES (1,0,'北京市',1,110000),(2,0,'天津市',1,120000),(3,0,'河北省',1,130000),(4,0,'山西省',1,140000),(5,0,'内蒙古自治区',1,150000),(6,0,'辽宁省',1,210000),(7,0,'吉林省',1,220000),(8,0,'黑龙江省',1,230000),(9,0,'上海市',1,310000),(10,0,'江苏省',1,320000),(11,0,'浙江省',1,330000),(12,0,'安徽省',1,340000),(13,0,'福建省',1,350000),(14,0,'江西省',1,360000),(15,0,'山东省',1,370000),(16,0,'河南省',1,410000),(17,0,'湖北省',1,420000),(18,0,'湖南省',1,430000),(19,0,'广东省',1,440000),(20,0,'广西壮族自治区',1,450000),(21,0,'海南省',1,460000),(22,0,'重庆市',1,500000),(23,0,'四川省',1,510000),(24,0,'贵州省',1,520000),(25,0,'云南省',1,530000),(26,0,'西藏自治区',1,540000),(27,0,'陕西省',1,610000),(28,0,'甘肃省',1,620000),(29,0,'青海省',1,630000),(30,0,'宁夏回族自治区',1,640000),(31,0,'新疆维吾尔自治区',1,650000),(32,1,'市辖区',2,110100),(33,2,'市辖区',2,120100),(34,3,'石家庄市',2,130100),(35,3,'唐山市',2,130200),(36,3,'秦皇岛市',2,130300),(37,3,'邯郸市',2,130400),(38,3,'邢台市',2,130500),(39,3,'保定市',2,130600),(40,3,'张家口市',2,130700),(41,3,'承德市',2,130800),(42,3,'沧州市',2,130900),(43,3,'廊坊市',2,131000),(44,3,'衡水市',2,131100),(45,3,'省直辖县级行政区划',2,139000),(46,4,'太原市',2,140100),(47,4,'大同市',2,140200),(48,4,'阳泉市',2,140300),(49,4,'长治市',2,140400),(50,4,'晋城市',2,140500),(51,4,'朔州市',2,140600),(52,4,'晋中市',2,140700),(53,4,'运城市',2,140800),(54,4,'忻州市',2,140900),(55,4,'临汾市',2,141000),(56,4,'吕梁市',2,141100),(57,5,'呼和浩特市',2,150100),(58,5,'包头市',2,150200),(59,5,'乌海市',2,150300),(60,5,'赤峰市',2,150400),(61,5,'通辽市',2,150500),(62,5,'鄂尔多斯市',2,150600),(63,5,'呼伦贝尔市',2,150700),(64,5,'巴彦淖尔市',2,150800),(65,5,'乌兰察布市',2,150900),(66,5,'兴安盟',2,152200),(67,5,'锡林郭勒盟',2,152500),(68,5,'阿拉善盟',2,152900),(69,6,'沈阳市',2,210100),(70,6,'大连市',2,210200),(71,6,'鞍山市',2,210300),(72,6,'抚顺市',2,210400),(73,6,'本溪市',2,210500),(74,6,'丹东市',2,210600),(75,6,'锦州市',2,210700),(76,6,'营口市',2,210800),(77,6,'阜新市',2,210900),(78,6,'辽阳市',2,211000),(79,6,'盘锦市',2,211100),(80,6,'铁岭市',2,211200),(81,6,'朝阳市',2,211300),(82,6,'葫芦岛市',2,211400),(83,7,'长春市',2,220100),(84,7,'吉林市',2,220200),(85,7,'四平市',2,220300),(86,7,'辽源市',2,220400),(87,7,'通化市',2,220500),(88,7,'白山市',2,220600),(89,7,'松原市',2,220700),(90,7,'白城市',2,220800),(91,7,'延边朝鲜族自治州',2,222400),(92,8,'哈尔滨市',2,230100),(93,8,'齐齐哈尔市',2,230200),(94,8,'鸡西市',2,230300),(95,8,'鹤岗市',2,230400),(96,8,'双鸭山市',2,230500),(97,8,'大庆市',2,230600),(98,8,'伊春市',2,230700),(99,8,'佳木斯市',2,230800),(100,8,'七台河市',2,230900),(101,8,'牡丹江市',2,231000),(102,8,'黑河市',2,231100),(103,8,'绥化市',2,231200),(104,8,'大兴安岭地区',2,232700),(105,9,'市辖区',2,310100),(106,10,'南京市',2,320100),(107,10,'无锡市',2,320200),(108,10,'徐州市',2,320300),(109,10,'常州市',2,320400),(110,10,'苏州市',2,320500),(111,10,'南通市',2,320600),(112,10,'连云港市',2,320700),(113,10,'淮安市',2,320800),(114,10,'盐城市',2,320900),(115,10,'扬州市',2,321000),(116,10,'镇江市',2,321100),(117,10,'泰州市',2,321200),(118,10,'宿迁市',2,321300),(119,11,'杭州市',2,330100),(120,11,'宁波市',2,330200),(121,11,'温州市',2,330300),(122,11,'嘉兴市',2,330400),(123,11,'湖州市',2,330500),(124,11,'绍兴市',2,330600),(125,11,'金华市',2,330700),(126,11,'衢州市',2,330800),(127,11,'舟山市',2,330900),(128,11,'台州市',2,331000),(129,11,'丽水市',2,331100),(130,12,'合肥市',2,340100),(131,12,'芜湖市',2,340200),(132,12,'蚌埠市',2,340300),(133,12,'淮南市',2,340400),(134,12,'马鞍山市',2,340500),(135,12,'淮北市',2,340600),(136,12,'铜陵市',2,340700),(137,12,'安庆市',2,340800),(138,12,'黄山市',2,341000),(139,12,'滁州市',2,341100),(140,12,'阜阳市',2,341200),(141,12,'宿州市',2,341300),(142,12,'六安市',2,341500),(143,12,'亳州市',2,341600),(144,12,'池州市',2,341700),(145,12,'宣城市',2,341800),(146,13,'福州市',2,350100),(147,13,'厦门市',2,350200),(148,13,'莆田市',2,350300),(149,13,'三明市',2,350400),(150,13,'泉州市',2,350500),(151,13,'漳州市',2,350600),(152,13,'南平市',2,350700),(153,13,'龙岩市',2,350800),(154,13,'宁德市',2,350900),(155,14,'南昌市',2,360100),(156,14,'景德镇市',2,360200),(157,14,'萍乡市',2,360300),(158,14,'九江市',2,360400),(159,14,'新余市',2,360500),(160,14,'鹰潭市',2,360600),(161,14,'赣州市',2,360700),(162,14,'吉安市',2,360800),(163,14,'宜春市',2,360900),(164,14,'抚州市',2,361000),(165,14,'上饶市',2,361100),(166,15,'济南市',2,370100),(167,15,'青岛市',2,370200),(168,15,'淄博市',2,370300),(169,15,'枣庄市',2,370400),(170,15,'东营市',2,370500),(171,15,'烟台市',2,370600),(172,15,'潍坊市',2,370700),(173,15,'济宁市',2,370800),(174,15,'泰安市',2,370900),(175,15,'威海市',2,371000),(176,15,'日照市',2,371100),(177,15,'莱芜市',2,371200),(178,15,'临沂市',2,371300),(179,15,'德州市',2,371400),(180,15,'聊城市',2,371500),(181,15,'滨州市',2,371600),(182,15,'菏泽市',2,371700),(183,16,'郑州市',2,410100),(184,16,'开封市',2,410200),(185,16,'洛阳市',2,410300),(186,16,'平顶山市',2,410400),(187,16,'安阳市',2,410500),(188,16,'鹤壁市',2,410600),(189,16,'新乡市',2,410700),(190,16,'焦作市',2,410800),(191,16,'濮阳市',2,410900),(192,16,'许昌市',2,411000),(193,16,'漯河市',2,411100),(194,16,'三门峡市',2,411200),(195,16,'南阳市',2,411300),(196,16,'商丘市',2,411400),(197,16,'信阳市',2,411500),(198,16,'周口市',2,411600),(199,16,'驻马店市',2,411700),(200,16,'省直辖县级行政区划',2,419000),(201,17,'武汉市',2,420100),(202,17,'黄石市',2,420200),(203,17,'十堰市',2,420300),(204,17,'宜昌市',2,420500),(205,17,'襄阳市',2,420600),(206,17,'鄂州市',2,420700),(207,17,'荆门市',2,420800),(208,17,'孝感市',2,420900),(209,17,'荆州市',2,421000),(210,17,'黄冈市',2,421100),(211,17,'咸宁市',2,421200),(212,17,'随州市',2,421300),(213,17,'恩施土家族苗族自治州',2,422800),(214,17,'省直辖县级行政区划',2,429000),(215,18,'长沙市',2,430100),(216,18,'株洲市',2,430200),(217,18,'湘潭市',2,430300),(218,18,'衡阳市',2,430400),(219,18,'邵阳市',2,430500),(220,18,'岳阳市',2,430600),(221,18,'常德市',2,430700),(222,18,'张家界市',2,430800),(223,18,'益阳市',2,430900),(224,18,'郴州市',2,431000),(225,18,'永州市',2,431100),(226,18,'怀化市',2,431200),(227,18,'娄底市',2,431300),(228,18,'湘西土家族苗族自治州',2,433100),(229,19,'广州市',2,440100),(230,19,'韶关市',2,440200),(231,19,'深圳市',2,440300),(232,19,'珠海市',2,440400),(233,19,'汕头市',2,440500),(234,19,'佛山市',2,440600),(235,19,'江门市',2,440700),(236,19,'湛江市',2,440800),(237,19,'茂名市',2,440900),(238,19,'肇庆市',2,441200),(239,19,'惠州市',2,441300),(240,19,'梅州市',2,441400),(241,19,'汕尾市',2,441500),(242,19,'河源市',2,441600),(243,19,'阳江市',2,441700),(244,19,'清远市',2,441800),(245,19,'东莞市',2,441900),(246,19,'中山市',2,442000),(247,19,'潮州市',2,445100),(248,19,'揭阳市',2,445200),(249,19,'云浮市',2,445300),(250,20,'南宁市',2,450100),(251,20,'柳州市',2,450200),(252,20,'桂林市',2,450300),(253,20,'梧州市',2,450400),(254,20,'北海市',2,450500),(255,20,'防城港市',2,450600),(256,20,'钦州市',2,450700),(257,20,'贵港市',2,450800),(258,20,'玉林市',2,450900),(259,20,'百色市',2,451000),(260,20,'贺州市',2,451100),(261,20,'河池市',2,451200),(262,20,'来宾市',2,451300),(263,20,'崇左市',2,451400),(264,21,'海口市',2,460100),(265,21,'三亚市',2,460200),(266,21,'三沙市',2,460300),(267,21,'儋州市',2,460400),(268,21,'省直辖县级行政区划',2,469000),(269,22,'市辖区',2,500100),(270,22,'县',2,500200),(271,23,'成都市',2,510100),(272,23,'自贡市',2,510300),(273,23,'攀枝花市',2,510400),(274,23,'泸州市',2,510500),(275,23,'德阳市',2,510600),(276,23,'绵阳市',2,510700),(277,23,'广元市',2,510800),(278,23,'遂宁市',2,510900),(279,23,'内江市',2,511000),(280,23,'乐山市',2,511100),(281,23,'南充市',2,511300),(282,23,'眉山市',2,511400),(283,23,'宜宾市',2,511500),(284,23,'广安市',2,511600),(285,23,'达州市',2,511700),(286,23,'雅安市',2,511800),(287,23,'巴中市',2,511900),(288,23,'资阳市',2,512000),(289,23,'阿坝藏族羌族自治州',2,513200),(290,23,'甘孜藏族自治州',2,513300),(291,23,'凉山彝族自治州',2,513400),(292,24,'贵阳市',2,520100),(293,24,'六盘水市',2,520200),(294,24,'遵义市',2,520300),(295,24,'安顺市',2,520400),(296,24,'毕节市',2,520500),(297,24,'铜仁市',2,520600),(298,24,'黔西南布依族苗族自治州',2,522300),(299,24,'黔东南苗族侗族自治州',2,522600),(300,24,'黔南布依族苗族自治州',2,522700),(301,25,'昆明市',2,530100),(302,25,'曲靖市',2,530300),(303,25,'玉溪市',2,530400),(304,25,'保山市',2,530500),(305,25,'昭通市',2,530600),(306,25,'丽江市',2,530700),(307,25,'普洱市',2,530800),(308,25,'临沧市',2,530900),(309,25,'楚雄彝族自治州',2,532300),(310,25,'红河哈尼族彝族自治州',2,532500),(311,25,'文山壮族苗族自治州',2,532600),(312,25,'西双版纳傣族自治州',2,532800),(313,25,'大理白族自治州',2,532900),(314,25,'德宏傣族景颇族自治州',2,533100),(315,25,'怒江傈僳族自治州',2,533300),(316,25,'迪庆藏族自治州',2,533400),(317,26,'拉萨市',2,540100),(318,26,'日喀则市',2,540200),(319,26,'昌都市',2,540300),(320,26,'林芝市',2,540400),(321,26,'山南市',2,540500),(322,26,'那曲地区',2,542400),(323,26,'阿里地区',2,542500),(324,27,'西安市',2,610100),(325,27,'铜川市',2,610200),(326,27,'宝鸡市',2,610300),(327,27,'咸阳市',2,610400),(328,27,'渭南市',2,610500),(329,27,'延安市',2,610600),(330,27,'汉中市',2,610700),(331,27,'榆林市',2,610800),(332,27,'安康市',2,610900),(333,27,'商洛市',2,611000),(334,28,'兰州市',2,620100),(335,28,'嘉峪关市',2,620200),(336,28,'金昌市',2,620300),(337,28,'白银市',2,620400),(338,28,'天水市',2,620500),(339,28,'武威市',2,620600),(340,28,'张掖市',2,620700),(341,28,'平凉市',2,620800),(342,28,'酒泉市',2,620900),(343,28,'庆阳市',2,621000),(344,28,'定西市',2,621100),(345,28,'陇南市',2,621200),(346,28,'临夏回族自治州',2,622900),(347,28,'甘南藏族自治州',2,623000),(348,29,'西宁市',2,630100),(349,29,'海东市',2,630200),(350,29,'海北藏族自治州',2,632200),(351,29,'黄南藏族自治州',2,632300),(352,29,'海南藏族自治州',2,632500),(353,29,'果洛藏族自治州',2,632600),(354,29,'玉树藏族自治州',2,632700),(355,29,'海西蒙古族藏族自治州',2,632800),(356,30,'银川市',2,640100),(357,30,'石嘴山市',2,640200),(358,30,'吴忠市',2,640300),(359,30,'固原市',2,640400),(360,30,'中卫市',2,640500),(361,31,'乌鲁木齐市',2,650100),(362,31,'克拉玛依市',2,650200),(363,31,'吐鲁番市',2,650400),(364,31,'哈密市',2,650500),(365,31,'昌吉回族自治州',2,652300),(366,31,'博尔塔拉蒙古自治州',2,652700),(367,31,'巴音郭楞蒙古自治州',2,652800),(368,31,'阿克苏地区',2,652900),(369,31,'克孜勒苏柯尔克孜自治州',2,653000),(370,31,'喀什地区',2,653100),(371,31,'和田地区',2,653200),(372,31,'伊犁哈萨克自治州',2,654000),(373,31,'塔城地区',2,654200),(374,31,'阿勒泰地区',2,654300),(375,31,'自治区直辖县级行政区划',2,659000),(376,32,'东城区',3,110101),(377,32,'西城区',3,110102),(378,32,'朝阳区',3,110105),(379,32,'丰台区',3,110106),(380,32,'石景山区',3,110107),(381,32,'海淀区',3,110108),(382,32,'门头沟区',3,110109),(383,32,'房山区',3,110111),(384,32,'通州区',3,110112),(385,32,'顺义区',3,110113),(386,32,'昌平区',3,110114),(387,32,'大兴区',3,110115),(388,32,'怀柔区',3,110116),(389,32,'平谷区',3,110117),(390,32,'密云区',3,110118),(391,32,'延庆区',3,110119),(392,33,'和平区',3,120101),(393,33,'河东区',3,120102),(394,33,'河西区',3,120103),(395,33,'南开区',3,120104),(396,33,'河北区',3,120105),(397,33,'红桥区',3,120106),(398,33,'东丽区',3,120110),(399,33,'西青区',3,120111),(400,33,'津南区',3,120112),(401,33,'北辰区',3,120113),(402,33,'武清区',3,120114),(403,33,'宝坻区',3,120115),(404,33,'滨海新区',3,120116),(405,33,'宁河区',3,120117),(406,33,'静海区',3,120118),(407,33,'蓟州区',3,120119),(408,34,'长安区',3,130102),(409,34,'桥西区',3,130104),(410,34,'新华区',3,130105),(411,34,'井陉矿区',3,130107),(412,34,'裕华区',3,130108),(413,34,'藁城区',3,130109),(414,34,'鹿泉区',3,130110),(415,34,'栾城区',3,130111),(416,34,'井陉县',3,130121),(417,34,'正定县',3,130123),(418,34,'行唐县',3,130125),(419,34,'灵寿县',3,130126),(420,34,'高邑县',3,130127),(421,34,'深泽县',3,130128),(422,34,'赞皇县',3,130129),(423,34,'无极县',3,130130),(424,34,'平山县',3,130131),(425,34,'元氏县',3,130132),(426,34,'赵县',3,130133),(427,34,'晋州市',3,130183),(428,34,'新乐市',3,130184),(429,35,'路南区',3,130202),(430,35,'路北区',3,130203),(431,35,'古冶区',3,130204),(432,35,'开平区',3,130205),(433,35,'丰南区',3,130207),(434,35,'丰润区',3,130208),(435,35,'曹妃甸区',3,130209),(436,35,'滦县',3,130223),(437,35,'滦南县',3,130224),(438,35,'乐亭县',3,130225),(439,35,'迁西县',3,130227),(440,35,'玉田县',3,130229),(441,35,'遵化市',3,130281),(442,35,'迁安市',3,130283),(443,36,'海港区',3,130302),(444,36,'山海关区',3,130303),(445,36,'北戴河区',3,130304),(446,36,'抚宁区',3,130306),(447,36,'青龙满族自治县',3,130321),(448,36,'昌黎县',3,130322),(449,36,'卢龙县',3,130324),(450,37,'邯山区',3,130402),(451,37,'丛台区',3,130403),(452,37,'复兴区',3,130404),(453,37,'峰峰矿区',3,130406),(454,37,'邯郸县',3,130421),(455,37,'临漳县',3,130423),(456,37,'成安县',3,130424),(457,37,'大名县',3,130425),(458,37,'涉县',3,130426),(459,37,'磁县',3,130427),(460,37,'肥乡县',3,130428),(461,37,'永年县',3,130429),(462,37,'邱县',3,130430),(463,37,'鸡泽县',3,130431),(464,37,'广平县',3,130432),(465,37,'馆陶县',3,130433),(466,37,'魏县',3,130434),(467,37,'曲周县',3,130435),(468,37,'武安市',3,130481),(469,38,'桥东区',3,130502),(470,38,'桥西区',3,130503),(471,38,'邢台县',3,130521),(472,38,'临城县',3,130522),(473,38,'内丘县',3,130523),(474,38,'柏乡县',3,130524),(475,38,'隆尧县',3,130525),(476,38,'任县',3,130526),(477,38,'南和县',3,130527),(478,38,'宁晋县',3,130528),(479,38,'巨鹿县',3,130529),(480,38,'新河县',3,130530),(481,38,'广宗县',3,130531),(482,38,'平乡县',3,130532),(483,38,'威县',3,130533),(484,38,'清河县',3,130534),(485,38,'临西县',3,130535),(486,38,'南宫市',3,130581),(487,38,'沙河市',3,130582),(488,39,'竞秀区',3,130602),(489,39,'莲池区',3,130606),(490,39,'满城区',3,130607),(491,39,'清苑区',3,130608),(492,39,'徐水区',3,130609),(493,39,'涞水县',3,130623),(494,39,'阜平县',3,130624),(495,39,'定兴县',3,130626),(496,39,'唐县',3,130627),(497,39,'高阳县',3,130628),(498,39,'容城县',3,130629),(499,39,'涞源县',3,130630),(500,39,'望都县',3,130631),(501,39,'安新县',3,130632),(502,39,'易县',3,130633),(503,39,'曲阳县',3,130634),(504,39,'蠡县',3,130635),(505,39,'顺平县',3,130636),(506,39,'博野县',3,130637),(507,39,'雄县',3,130638),(508,39,'涿州市',3,130681),(509,39,'安国市',3,130683),(510,39,'高碑店市',3,130684),(511,40,'桥东区',3,130702),(512,40,'桥西区',3,130703),(513,40,'宣化区',3,130705),(514,40,'下花园区',3,130706),(515,40,'万全区',3,130708),(516,40,'崇礼区',3,130709),(517,40,'张北县',3,130722),(518,40,'康保县',3,130723),(519,40,'沽源县',3,130724),(520,40,'尚义县',3,130725),(521,40,'蔚县',3,130726),(522,40,'阳原县',3,130727),(523,40,'怀安县',3,130728),(524,40,'怀来县',3,130730),(525,40,'涿鹿县',3,130731),(526,40,'赤城县',3,130732),(527,41,'双桥区',3,130802),(528,41,'双滦区',3,130803),(529,41,'鹰手营子矿区',3,130804),(530,41,'承德县',3,130821),(531,41,'兴隆县',3,130822),(532,41,'平泉县',3,130823),(533,41,'滦平县',3,130824),(534,41,'隆化县',3,130825),(535,41,'丰宁满族自治县',3,130826),(536,41,'宽城满族自治县',3,130827),(537,41,'围场满族蒙古族自治县',3,130828),(538,42,'新华区',3,130902),(539,42,'运河区',3,130903),(540,42,'沧县',3,130921),(541,42,'青县',3,130922),(542,42,'东光县',3,130923),(543,42,'海兴县',3,130924),(544,42,'盐山县',3,130925),(545,42,'肃宁县',3,130926),(546,42,'南皮县',3,130927),(547,42,'吴桥县',3,130928),(548,42,'献县',3,130929),(549,42,'孟村回族自治县',3,130930),(550,42,'泊头市',3,130981),(551,42,'任丘市',3,130982),(552,42,'黄骅市',3,130983),(553,42,'河间市',3,130984),(554,43,'安次区',3,131002),(555,43,'广阳区',3,131003),(556,43,'固安县',3,131022),(557,43,'永清县',3,131023),(558,43,'香河县',3,131024),(559,43,'大城县',3,131025),(560,43,'文安县',3,131026),(561,43,'大厂回族自治县',3,131028),(562,43,'霸州市',3,131081),(563,43,'三河市',3,131082),(564,44,'桃城区',3,131102),(565,44,'冀州区',3,131103),(566,44,'枣强县',3,131121),(567,44,'武邑县',3,131122),(568,44,'武强县',3,131123),(569,44,'饶阳县',3,131124),(570,44,'安平县',3,131125),(571,44,'故城县',3,131126),(572,44,'景县',3,131127),(573,44,'阜城县',3,131128),(574,44,'深州市',3,131182),(575,45,'定州市',3,139001),(576,45,'辛集市',3,139002),(577,46,'小店区',3,140105),(578,46,'迎泽区',3,140106),(579,46,'杏花岭区',3,140107),(580,46,'尖草坪区',3,140108),(581,46,'万柏林区',3,140109),(582,46,'晋源区',3,140110),(583,46,'清徐县',3,140121),(584,46,'阳曲县',3,140122),(585,46,'娄烦县',3,140123),(586,46,'古交市',3,140181),(587,47,'城区',3,140202),(588,47,'矿区',3,140203),(589,47,'南郊区',3,140211),(590,47,'新荣区',3,140212),(591,47,'阳高县',3,140221),(592,47,'天镇县',3,140222),(593,47,'广灵县',3,140223),(594,47,'灵丘县',3,140224),(595,47,'浑源县',3,140225),(596,47,'左云县',3,140226),(597,47,'大同县',3,140227),(598,48,'城区',3,140302),(599,48,'矿区',3,140303),(600,48,'郊区',3,140311),(601,48,'平定县',3,140321),(602,48,'盂县',3,140322),(603,49,'城区',3,140402),(604,49,'郊区',3,140411),(605,49,'长治县',3,140421),(606,49,'襄垣县',3,140423),(607,49,'屯留县',3,140424),(608,49,'平顺县',3,140425),(609,49,'黎城县',3,140426),(610,49,'壶关县',3,140427),(611,49,'长子县',3,140428),(612,49,'武乡县',3,140429),(613,49,'沁县',3,140430),(614,49,'沁源县',3,140431),(615,49,'潞城市',3,140481),(616,50,'城区',3,140502),(617,50,'沁水县',3,140521),(618,50,'阳城县',3,140522),(619,50,'陵川县',3,140524),(620,50,'泽州县',3,140525),(621,50,'高平市',3,140581),(622,51,'朔城区',3,140602),(623,51,'平鲁区',3,140603),(624,51,'山阴县',3,140621),(625,51,'应县',3,140622),(626,51,'右玉县',3,140623),(627,51,'怀仁县',3,140624),(628,52,'榆次区',3,140702),(629,52,'榆社县',3,140721),(630,52,'左权县',3,140722),(631,52,'和顺县',3,140723),(632,52,'昔阳县',3,140724),(633,52,'寿阳县',3,140725),(634,52,'太谷县',3,140726),(635,52,'祁县',3,140727),(636,52,'平遥县',3,140728),(637,52,'灵石县',3,140729),(638,52,'介休市',3,140781),(639,53,'盐湖区',3,140802),(640,53,'临猗县',3,140821),(641,53,'万荣县',3,140822),(642,53,'闻喜县',3,140823),(643,53,'稷山县',3,140824),(644,53,'新绛县',3,140825),(645,53,'绛县',3,140826),(646,53,'垣曲县',3,140827),(647,53,'夏县',3,140828),(648,53,'平陆县',3,140829),(649,53,'芮城县',3,140830),(650,53,'永济市',3,140881),(651,53,'河津市',3,140882),(652,54,'忻府区',3,140902),(653,54,'定襄县',3,140921),(654,54,'五台县',3,140922),(655,54,'代县',3,140923),(656,54,'繁峙县',3,140924),(657,54,'宁武县',3,140925),(658,54,'静乐县',3,140926),(659,54,'神池县',3,140927),(660,54,'五寨县',3,140928),(661,54,'岢岚县',3,140929),(662,54,'河曲县',3,140930),(663,54,'保德县',3,140931),(664,54,'偏关县',3,140932),(665,54,'原平市',3,140981),(666,55,'尧都区',3,141002),(667,55,'曲沃县',3,141021),(668,55,'翼城县',3,141022),(669,55,'襄汾县',3,141023),(670,55,'洪洞县',3,141024),(671,55,'古县',3,141025),(672,55,'安泽县',3,141026),(673,55,'浮山县',3,141027),(674,55,'吉县',3,141028),(675,55,'乡宁县',3,141029),(676,55,'大宁县',3,141030),(677,55,'隰县',3,141031),(678,55,'永和县',3,141032),(679,55,'蒲县',3,141033),(680,55,'汾西县',3,141034),(681,55,'侯马市',3,141081),(682,55,'霍州市',3,141082),(683,56,'离石区',3,141102),(684,56,'文水县',3,141121),(685,56,'交城县',3,141122),(686,56,'兴县',3,141123),(687,56,'临县',3,141124),(688,56,'柳林县',3,141125),(689,56,'石楼县',3,141126),(690,56,'岚县',3,141127),(691,56,'方山县',3,141128),(692,56,'中阳县',3,141129),(693,56,'交口县',3,141130),(694,56,'孝义市',3,141181),(695,56,'汾阳市',3,141182),(696,57,'新城区',3,150102),(697,57,'回民区',3,150103),(698,57,'玉泉区',3,150104),(699,57,'赛罕区',3,150105),(700,57,'土默特左旗',3,150121),(701,57,'托克托县',3,150122),(702,57,'和林格尔县',3,150123),(703,57,'清水河县',3,150124),(704,57,'武川县',3,150125),(705,58,'东河区',3,150202),(706,58,'昆都仑区',3,150203),(707,58,'青山区',3,150204),(708,58,'石拐区',3,150205),(709,58,'白云鄂博矿区',3,150206),(710,58,'九原区',3,150207),(711,58,'土默特右旗',3,150221),(712,58,'固阳县',3,150222),(713,58,'达尔罕茂明安联合旗',3,150223),(714,59,'海勃湾区',3,150302),(715,59,'海南区',3,150303),(716,59,'乌达区',3,150304),(717,60,'红山区',3,150402),(718,60,'元宝山区',3,150403),(719,60,'松山区',3,150404),(720,60,'阿鲁科尔沁旗',3,150421),(721,60,'巴林左旗',3,150422),(722,60,'巴林右旗',3,150423),(723,60,'林西县',3,150424),(724,60,'克什克腾旗',3,150425),(725,60,'翁牛特旗',3,150426),(726,60,'喀喇沁旗',3,150428),(727,60,'宁城县',3,150429),(728,60,'敖汉旗',3,150430),(729,61,'科尔沁区',3,150502),(730,61,'科尔沁左翼中旗',3,150521),(731,61,'科尔沁左翼后旗',3,150522),(732,61,'开鲁县',3,150523),(733,61,'库伦旗',3,150524),(734,61,'奈曼旗',3,150525),(735,61,'扎鲁特旗',3,150526),(736,61,'霍林郭勒市',3,150581),(737,62,'东胜区',3,150602),(738,62,'康巴什区',3,150603),(739,62,'达拉特旗',3,150621),(740,62,'准格尔旗',3,150622),(741,62,'鄂托克前旗',3,150623),(742,62,'鄂托克旗',3,150624),(743,62,'杭锦旗',3,150625),(744,62,'乌审旗',3,150626),(745,62,'伊金霍洛旗',3,150627),(746,63,'海拉尔区',3,150702),(747,63,'扎赉诺尔区',3,150703),(748,63,'阿荣旗',3,150721),(749,63,'莫力达瓦达斡尔族自治旗',3,150722),(750,63,'鄂伦春自治旗',3,150723),(751,63,'鄂温克族自治旗',3,150724),(752,63,'陈巴尔虎旗',3,150725),(753,63,'新巴尔虎左旗',3,150726),(754,63,'新巴尔虎右旗',3,150727),(755,63,'满洲里市',3,150781),(756,63,'牙克石市',3,150782),(757,63,'扎兰屯市',3,150783),(758,63,'额尔古纳市',3,150784),(759,63,'根河市',3,150785),(760,64,'临河区',3,150802),(761,64,'五原县',3,150821),(762,64,'磴口县',3,150822),(763,64,'乌拉特前旗',3,150823),(764,64,'乌拉特中旗',3,150824),(765,64,'乌拉特后旗',3,150825),(766,64,'杭锦后旗',3,150826),(767,65,'集宁区',3,150902),(768,65,'卓资县',3,150921),(769,65,'化德县',3,150922),(770,65,'商都县',3,150923),(771,65,'兴和县',3,150924),(772,65,'凉城县',3,150925),(773,65,'察哈尔右翼前旗',3,150926),(774,65,'察哈尔右翼中旗',3,150927),(775,65,'察哈尔右翼后旗',3,150928),(776,65,'四子王旗',3,150929),(777,65,'丰镇市',3,150981),(778,66,'乌兰浩特市',3,152201),(779,66,'阿尔山市',3,152202),(780,66,'科尔沁右翼前旗',3,152221),(781,66,'科尔沁右翼中旗',3,152222),(782,66,'扎赉特旗',3,152223),(783,66,'突泉县',3,152224),(784,67,'二连浩特市',3,152501),(785,67,'锡林浩特市',3,152502),(786,67,'阿巴嘎旗',3,152522),(787,67,'苏尼特左旗',3,152523),(788,67,'苏尼特右旗',3,152524),(789,67,'东乌珠穆沁旗',3,152525),(790,67,'西乌珠穆沁旗',3,152526),(791,67,'太仆寺旗',3,152527),(792,67,'镶黄旗',3,152528),(793,67,'正镶白旗',3,152529),(794,67,'正蓝旗',3,152530),(795,67,'多伦县',3,152531),(796,68,'阿拉善左旗',3,152921),(797,68,'阿拉善右旗',3,152922),(798,68,'额济纳旗',3,152923),(799,69,'和平区',3,210102),(800,69,'沈河区',3,210103),(801,69,'大东区',3,210104),(802,69,'皇姑区',3,210105),(803,69,'铁西区',3,210106),(804,69,'苏家屯区',3,210111),(805,69,'浑南区',3,210112),(806,69,'沈北新区',3,210113),(807,69,'于洪区',3,210114),(808,69,'辽中区',3,210115),(809,69,'康平县',3,210123),(810,69,'法库县',3,210124),(811,69,'新民市',3,210181),(812,70,'中山区',3,210202),(813,70,'西岗区',3,210203),(814,70,'沙河口区',3,210204),(815,70,'甘井子区',3,210211),(816,70,'旅顺口区',3,210212),(817,70,'金州区',3,210213),(818,70,'普兰店区',3,210214),(819,70,'长海县',3,210224),(820,70,'瓦房店市',3,210281),(821,70,'庄河市',3,210283),(822,71,'铁东区',3,210302),(823,71,'铁西区',3,210303),(824,71,'立山区',3,210304),(825,71,'千山区',3,210311),(826,71,'台安县',3,210321),(827,71,'岫岩满族自治县',3,210323),(828,71,'海城市',3,210381),(829,72,'新抚区',3,210402),(830,72,'东洲区',3,210403),(831,72,'望花区',3,210404),(832,72,'顺城区',3,210411),(833,72,'抚顺县',3,210421),(834,72,'新宾满族自治县',3,210422),(835,72,'清原满族自治县',3,210423),(836,73,'平山区',3,210502),(837,73,'溪湖区',3,210503),(838,73,'明山区',3,210504),(839,73,'南芬区',3,210505),(840,73,'本溪满族自治县',3,210521),(841,73,'桓仁满族自治县',3,210522),(842,74,'元宝区',3,210602),(843,74,'振兴区',3,210603),(844,74,'振安区',3,210604),(845,74,'宽甸满族自治县',3,210624),(846,74,'东港市',3,210681),(847,74,'凤城市',3,210682),(848,75,'古塔区',3,210702),(849,75,'凌河区',3,210703),(850,75,'太和区',3,210711),(851,75,'黑山县',3,210726),(852,75,'义县',3,210727),(853,75,'凌海市',3,210781),(854,75,'北镇市',3,210782),(855,76,'站前区',3,210802),(856,76,'西市区',3,210803),(857,76,'鲅鱼圈区',3,210804),(858,76,'老边区',3,210811),(859,76,'盖州市',3,210881),(860,76,'大石桥市',3,210882),(861,77,'海州区',3,210902),(862,77,'新邱区',3,210903),(863,77,'太平区',3,210904),(864,77,'清河门区',3,210905),(865,77,'细河区',3,210911),(866,77,'阜新蒙古族自治县',3,210921),(867,77,'彰武县',3,210922),(868,78,'白塔区',3,211002),(869,78,'文圣区',3,211003),(870,78,'宏伟区',3,211004),(871,78,'弓长岭区',3,211005),(872,78,'太子河区',3,211011),(873,78,'辽阳县',3,211021),(874,78,'灯塔市',3,211081),(875,79,'双台子区',3,211102),(876,79,'兴隆台区',3,211103),(877,79,'大洼区',3,211104),(878,79,'盘山县',3,211122),(879,80,'银州区',3,211202),(880,80,'清河区',3,211204),(881,80,'铁岭县',3,211221),(882,80,'西丰县',3,211223),(883,80,'昌图县',3,211224),(884,80,'调兵山市',3,211281),(885,80,'开原市',3,211282),(886,81,'双塔区',3,211302),(887,81,'龙城区',3,211303),(888,81,'朝阳县',3,211321),(889,81,'建平县',3,211322),(890,81,'喀喇沁左翼蒙古族自治县',3,211324),(891,81,'北票市',3,211381),(892,81,'凌源市',3,211382),(893,82,'连山区',3,211402),(894,82,'龙港区',3,211403),(895,82,'南票区',3,211404),(896,82,'绥中县',3,211421),(897,82,'建昌县',3,211422),(898,82,'兴城市',3,211481),(899,83,'南关区',3,220102),(900,83,'宽城区',3,220103),(901,83,'朝阳区',3,220104),(902,83,'二道区',3,220105),(903,83,'绿园区',3,220106),(904,83,'双阳区',3,220112),(905,83,'九台区',3,220113),(906,83,'农安县',3,220122),(907,83,'榆树市',3,220182),(908,83,'德惠市',3,220183),(909,84,'昌邑区',3,220202),(910,84,'龙潭区',3,220203),(911,84,'船营区',3,220204),(912,84,'丰满区',3,220211),(913,84,'永吉县',3,220221),(914,84,'蛟河市',3,220281),(915,84,'桦甸市',3,220282),(916,84,'舒兰市',3,220283),(917,84,'磐石市',3,220284),(918,85,'铁西区',3,220302),(919,85,'铁东区',3,220303),(920,85,'梨树县',3,220322),(921,85,'伊通满族自治县',3,220323),(922,85,'公主岭市',3,220381),(923,85,'双辽市',3,220382),(924,86,'龙山区',3,220402),(925,86,'西安区',3,220403),(926,86,'东丰县',3,220421),(927,86,'东辽县',3,220422),(928,87,'东昌区',3,220502),(929,87,'二道江区',3,220503),(930,87,'通化县',3,220521),(931,87,'辉南县',3,220523),(932,87,'柳河县',3,220524),(933,87,'梅河口市',3,220581),(934,87,'集安市',3,220582),(935,88,'浑江区',3,220602),(936,88,'江源区',3,220605),(937,88,'抚松县',3,220621),(938,88,'靖宇县',3,220622),(939,88,'长白朝鲜族自治县',3,220623),(940,88,'临江市',3,220681),(941,89,'宁江区',3,220702),(942,89,'前郭尔罗斯蒙古族自治县',3,220721),(943,89,'长岭县',3,220722),(944,89,'乾安县',3,220723),(945,89,'扶余市',3,220781),(946,90,'洮北区',3,220802),(947,90,'镇赉县',3,220821),(948,90,'通榆县',3,220822),(949,90,'洮南市',3,220881),(950,90,'大安市',3,220882),(951,91,'延吉市',3,222401),(952,91,'图们市',3,222402),(953,91,'敦化市',3,222403),(954,91,'珲春市',3,222404),(955,91,'龙井市',3,222405),(956,91,'和龙市',3,222406),(957,91,'汪清县',3,222424),(958,91,'安图县',3,222426),(959,92,'道里区',3,230102),(960,92,'南岗区',3,230103),(961,92,'道外区',3,230104),(962,92,'平房区',3,230108),(963,92,'松北区',3,230109),(964,92,'香坊区',3,230110),(965,92,'呼兰区',3,230111),(966,92,'阿城区',3,230112),(967,92,'双城区',3,230113),(968,92,'依兰县',3,230123),(969,92,'方正县',3,230124),(970,92,'宾县',3,230125),(971,92,'巴彦县',3,230126),(972,92,'木兰县',3,230127),(973,92,'通河县',3,230128),(974,92,'延寿县',3,230129),(975,92,'尚志市',3,230183),(976,92,'五常市',3,230184),(977,93,'龙沙区',3,230202),(978,93,'建华区',3,230203),(979,93,'铁锋区',3,230204),(980,93,'昂昂溪区',3,230205),(981,93,'富拉尔基区',3,230206),(982,93,'碾子山区',3,230207),(983,93,'梅里斯达斡尔族区',3,230208),(984,93,'龙江县',3,230221),(985,93,'依安县',3,230223),(986,93,'泰来县',3,230224),(987,93,'甘南县',3,230225),(988,93,'富裕县',3,230227),(989,93,'克山县',3,230229),(990,93,'克东县',3,230230),(991,93,'拜泉县',3,230231),(992,93,'讷河市',3,230281),(993,94,'鸡冠区',3,230302),(994,94,'恒山区',3,230303),(995,94,'滴道区',3,230304),(996,94,'梨树区',3,230305),(997,94,'城子河区',3,230306),(998,94,'麻山区',3,230307),(999,94,'鸡东县',3,230321),(1000,94,'虎林市',3,230381),(1001,94,'密山市',3,230382),(1002,95,'向阳区',3,230402),(1003,95,'工农区',3,230403),(1004,95,'南山区',3,230404),(1005,95,'兴安区',3,230405),(1006,95,'东山区',3,230406),(1007,95,'兴山区',3,230407),(1008,95,'萝北县',3,230421),(1009,95,'绥滨县',3,230422),(1010,96,'尖山区',3,230502),(1011,96,'岭东区',3,230503),(1012,96,'四方台区',3,230505),(1013,96,'宝山区',3,230506),(1014,96,'集贤县',3,230521),(1015,96,'友谊县',3,230522),(1016,96,'宝清县',3,230523),(1017,96,'饶河县',3,230524),(1018,97,'萨尔图区',3,230602),(1019,97,'龙凤区',3,230603),(1020,97,'让胡路区',3,230604),(1021,97,'红岗区',3,230605),(1022,97,'大同区',3,230606),(1023,97,'肇州县',3,230621),(1024,97,'肇源县',3,230622),(1025,97,'林甸县',3,230623),(1026,97,'杜尔伯特蒙古族自治县',3,230624),(1027,98,'伊春区',3,230702),(1028,98,'南岔区',3,230703),(1029,98,'友好区',3,230704),(1030,98,'西林区',3,230705),(1031,98,'翠峦区',3,230706),(1032,98,'新青区',3,230707),(1033,98,'美溪区',3,230708),(1034,98,'金山屯区',3,230709),(1035,98,'五营区',3,230710),(1036,98,'乌马河区',3,230711),(1037,98,'汤旺河区',3,230712),(1038,98,'带岭区',3,230713),(1039,98,'乌伊岭区',3,230714),(1040,98,'红星区',3,230715),(1041,98,'上甘岭区',3,230716),(1042,98,'嘉荫县',3,230722),(1043,98,'铁力市',3,230781),(1044,99,'向阳区',3,230803),(1045,99,'前进区',3,230804),(1046,99,'东风区',3,230805),(1047,99,'郊区',3,230811),(1048,99,'桦南县',3,230822),(1049,99,'桦川县',3,230826),(1050,99,'汤原县',3,230828),(1051,99,'同江市',3,230881),(1052,99,'富锦市',3,230882),(1053,99,'抚远市',3,230883),(1054,100,'新兴区',3,230902),(1055,100,'桃山区',3,230903),(1056,100,'茄子河区',3,230904),(1057,100,'勃利县',3,230921),(1058,101,'东安区',3,231002),(1059,101,'阳明区',3,231003),(1060,101,'爱民区',3,231004),(1061,101,'西安区',3,231005),(1062,101,'林口县',3,231025),(1063,101,'绥芬河市',3,231081),(1064,101,'海林市',3,231083),(1065,101,'宁安市',3,231084),(1066,101,'穆棱市',3,231085),(1067,101,'东宁市',3,231086),(1068,102,'爱辉区',3,231102),(1069,102,'嫩江县',3,231121),(1070,102,'逊克县',3,231123),(1071,102,'孙吴县',3,231124),(1072,102,'北安市',3,231181),(1073,102,'五大连池市',3,231182),(1074,103,'北林区',3,231202),(1075,103,'望奎县',3,231221),(1076,103,'兰西县',3,231222),(1077,103,'青冈县',3,231223),(1078,103,'庆安县',3,231224),(1079,103,'明水县',3,231225),(1080,103,'绥棱县',3,231226),(1081,103,'安达市',3,231281),(1082,103,'肇东市',3,231282),(1083,103,'海伦市',3,231283),(1084,104,'呼玛县',3,232721),(1085,104,'塔河县',3,232722),(1086,104,'漠河县',3,232723),(1087,105,'黄浦区',3,310101),(1088,105,'徐汇区',3,310104),(1089,105,'长宁区',3,310105),(1090,105,'静安区',3,310106),(1091,105,'普陀区',3,310107),(1092,105,'虹口区',3,310109),(1093,105,'杨浦区',3,310110),(1094,105,'闵行区',3,310112),(1095,105,'宝山区',3,310113),(1096,105,'嘉定区',3,310114),(1097,105,'浦东新区',3,310115),(1098,105,'金山区',3,310116),(1099,105,'松江区',3,310117),(1100,105,'青浦区',3,310118),(1101,105,'奉贤区',3,310120),(1102,105,'崇明区',3,310151),(1103,106,'玄武区',3,320102),(1104,106,'秦淮区',3,320104),(1105,106,'建邺区',3,320105),(1106,106,'鼓楼区',3,320106),(1107,106,'浦口区',3,320111),(1108,106,'栖霞区',3,320113),(1109,106,'雨花台区',3,320114),(1110,106,'江宁区',3,320115),(1111,106,'六合区',3,320116),(1112,106,'溧水区',3,320117),(1113,106,'高淳区',3,320118),(1114,107,'锡山区',3,320205),(1115,107,'惠山区',3,320206),(1116,107,'滨湖区',3,320211),(1117,107,'梁溪区',3,320213),(1118,107,'新吴区',3,320214),(1119,107,'江阴市',3,320281),(1120,107,'宜兴市',3,320282),(1121,108,'鼓楼区',3,320302),(1122,108,'云龙区',3,320303),(1123,108,'贾汪区',3,320305),(1124,108,'泉山区',3,320311),(1125,108,'铜山区',3,320312),(1126,108,'丰县',3,320321),(1127,108,'沛县',3,320322),(1128,108,'睢宁县',3,320324),(1129,108,'新沂市',3,320381),(1130,108,'邳州市',3,320382),(1131,109,'天宁区',3,320402),(1132,109,'钟楼区',3,320404),(1133,109,'新北区',3,320411),(1134,109,'武进区',3,320412),(1135,109,'金坛区',3,320413),(1136,109,'溧阳市',3,320481),(1137,110,'虎丘区',3,320505),(1138,110,'吴中区',3,320506),(1139,110,'相城区',3,320507),(1140,110,'姑苏区',3,320508),(1141,110,'吴江区',3,320509),(1142,110,'常熟市',3,320581),(1143,110,'张家港市',3,320582),(1144,110,'昆山市',3,320583),(1145,110,'太仓市',3,320585),(1146,111,'崇川区',3,320602),(1147,111,'港闸区',3,320611),(1148,111,'通州区',3,320612),(1149,111,'海安县',3,320621),(1150,111,'如东县',3,320623),(1151,111,'启东市',3,320681),(1152,111,'如皋市',3,320682),(1153,111,'海门市',3,320684),(1154,112,'连云区',3,320703),(1155,112,'海州区',3,320706),(1156,112,'赣榆区',3,320707),(1157,112,'东海县',3,320722),(1158,112,'灌云县',3,320723),(1159,112,'灌南县',3,320724),(1160,113,'淮安区',3,320803),(1161,113,'淮阴区',3,320804),(1162,113,'清江浦区',3,320812),(1163,113,'洪泽区',3,320813),(1164,113,'涟水县',3,320826),(1165,113,'盱眙县',3,320830),(1166,113,'金湖县',3,320831),(1167,114,'亭湖区',3,320902),(1168,114,'盐都区',3,320903),(1169,114,'大丰区',3,320904),(1170,114,'响水县',3,320921),(1171,114,'滨海县',3,320922),(1172,114,'阜宁县',3,320923),(1173,114,'射阳县',3,320924),(1174,114,'建湖县',3,320925),(1175,114,'东台市',3,320981),(1176,115,'广陵区',3,321002),(1177,115,'邗江区',3,321003),(1178,115,'江都区',3,321012),(1179,115,'宝应县',3,321023),(1180,115,'仪征市',3,321081),(1181,115,'高邮市',3,321084),(1182,116,'京口区',3,321102),(1183,116,'润州区',3,321111),(1184,116,'丹徒区',3,321112),(1185,116,'丹阳市',3,321181),(1186,116,'扬中市',3,321182),(1187,116,'句容市',3,321183),(1188,117,'海陵区',3,321202),(1189,117,'高港区',3,321203),(1190,117,'姜堰区',3,321204),(1191,117,'兴化市',3,321281),(1192,117,'靖江市',3,321282),(1193,117,'泰兴市',3,321283),(1194,118,'宿城区',3,321302),(1195,118,'宿豫区',3,321311),(1196,118,'沭阳县',3,321322),(1197,118,'泗阳县',3,321323),(1198,118,'泗洪县',3,321324),(1199,119,'上城区',3,330102),(1200,119,'下城区',3,330103),(1201,119,'江干区',3,330104),(1202,119,'拱墅区',3,330105),(1203,119,'西湖区',3,330106),(1204,119,'滨江区',3,330108),(1205,119,'萧山区',3,330109),(1206,119,'余杭区',3,330110),(1207,119,'富阳区',3,330111),(1208,119,'桐庐县',3,330122),(1209,119,'淳安县',3,330127),(1210,119,'建德市',3,330182),(1211,119,'临安市',3,330185),(1212,120,'海曙区',3,330203),(1213,120,'江东区',3,330204),(1214,120,'江北区',3,330205),(1215,120,'北仑区',3,330206),(1216,120,'镇海区',3,330211),(1217,120,'鄞州区',3,330212),(1218,120,'象山县',3,330225),(1219,120,'宁海县',3,330226),(1220,120,'余姚市',3,330281),(1221,120,'慈溪市',3,330282),(1222,120,'奉化市',3,330283),(1223,121,'鹿城区',3,330302),(1224,121,'龙湾区',3,330303),(1225,121,'瓯海区',3,330304),(1226,121,'洞头区',3,330305),(1227,121,'永嘉县',3,330324),(1228,121,'平阳县',3,330326),(1229,121,'苍南县',3,330327),(1230,121,'文成县',3,330328),(1231,121,'泰顺县',3,330329),(1232,121,'瑞安市',3,330381),(1233,121,'乐清市',3,330382),(1234,122,'南湖区',3,330402),(1235,122,'秀洲区',3,330411),(1236,122,'嘉善县',3,330421),(1237,122,'海盐县',3,330424),(1238,122,'海宁市',3,330481),(1239,122,'平湖市',3,330482),(1240,122,'桐乡市',3,330483),(1241,123,'吴兴区',3,330502),(1242,123,'南浔区',3,330503),(1243,123,'德清县',3,330521),(1244,123,'长兴县',3,330522),(1245,123,'安吉县',3,330523),(1246,124,'越城区',3,330602),(1247,124,'柯桥区',3,330603),(1248,124,'上虞区',3,330604),(1249,124,'新昌县',3,330624),(1250,124,'诸暨市',3,330681),(1251,124,'嵊州市',3,330683),(1252,125,'婺城区',3,330702),(1253,125,'金东区',3,330703),(1254,125,'武义县',3,330723),(1255,125,'浦江县',3,330726),(1256,125,'磐安县',3,330727),(1257,125,'兰溪市',3,330781),(1258,125,'义乌市',3,330782),(1259,125,'东阳市',3,330783),(1260,125,'永康市',3,330784),(1261,126,'柯城区',3,330802),(1262,126,'衢江区',3,330803),(1263,126,'常山县',3,330822),(1264,126,'开化县',3,330824),(1265,126,'龙游县',3,330825),(1266,126,'江山市',3,330881),(1267,127,'定海区',3,330902),(1268,127,'普陀区',3,330903),(1269,127,'岱山县',3,330921),(1270,127,'嵊泗县',3,330922),(1271,128,'椒江区',3,331002),(1272,128,'黄岩区',3,331003),(1273,128,'路桥区',3,331004),(1274,128,'玉环县',3,331021),(1275,128,'三门县',3,331022),(1276,128,'天台县',3,331023),(1277,128,'仙居县',3,331024),(1278,128,'温岭市',3,331081),(1279,128,'临海市',3,331082),(1280,129,'莲都区',3,331102),(1281,129,'青田县',3,331121),(1282,129,'缙云县',3,331122),(1283,129,'遂昌县',3,331123),(1284,129,'松阳县',3,331124),(1285,129,'云和县',3,331125),(1286,129,'庆元县',3,331126),(1287,129,'景宁畲族自治县',3,331127),(1288,129,'龙泉市',3,331181),(1289,130,'瑶海区',3,340102),(1290,130,'庐阳区',3,340103),(1291,130,'蜀山区',3,340104),(1292,130,'包河区',3,340111),(1293,130,'长丰县',3,340121),(1294,130,'肥东县',3,340122),(1295,130,'肥西县',3,340123),(1296,130,'庐江县',3,340124),(1297,130,'巢湖市',3,340181),(1298,131,'镜湖区',3,340202),(1299,131,'弋江区',3,340203),(1300,131,'鸠江区',3,340207),(1301,131,'三山区',3,340208),(1302,131,'芜湖县',3,340221),(1303,131,'繁昌县',3,340222),(1304,131,'南陵县',3,340223),(1305,131,'无为县',3,340225),(1306,132,'龙子湖区',3,340302),(1307,132,'蚌山区',3,340303),(1308,132,'禹会区',3,340304),(1309,132,'淮上区',3,340311),(1310,132,'怀远县',3,340321),(1311,132,'五河县',3,340322),(1312,132,'固镇县',3,340323),(1313,133,'大通区',3,340402),(1314,133,'田家庵区',3,340403),(1315,133,'谢家集区',3,340404),(1316,133,'八公山区',3,340405),(1317,133,'潘集区',3,340406),(1318,133,'凤台县',3,340421),(1319,133,'寿县',3,340422),(1320,134,'花山区',3,340503),(1321,134,'雨山区',3,340504),(1322,134,'博望区',3,340506),(1323,134,'当涂县',3,340521),(1324,134,'含山县',3,340522),(1325,134,'和县',3,340523),(1326,135,'杜集区',3,340602),(1327,135,'相山区',3,340603),(1328,135,'烈山区',3,340604),(1329,135,'濉溪县',3,340621),(1330,136,'铜官区',3,340705),(1331,136,'义安区',3,340706),(1332,136,'郊区',3,340711),(1333,136,'枞阳县',3,340722),(1334,137,'迎江区',3,340802),(1335,137,'大观区',3,340803),(1336,137,'宜秀区',3,340811),(1337,137,'怀宁县',3,340822),(1338,137,'潜山县',3,340824),(1339,137,'太湖县',3,340825),(1340,137,'宿松县',3,340826),(1341,137,'望江县',3,340827),(1342,137,'岳西县',3,340828),(1343,137,'桐城市',3,340881),(1344,138,'屯溪区',3,341002),(1345,138,'黄山区',3,341003),(1346,138,'徽州区',3,341004),(1347,138,'歙县',3,341021),(1348,138,'休宁县',3,341022),(1349,138,'黟县',3,341023),(1350,138,'祁门县',3,341024),(1351,139,'琅琊区',3,341102),(1352,139,'南谯区',3,341103),(1353,139,'来安县',3,341122),(1354,139,'全椒县',3,341124),(1355,139,'定远县',3,341125),(1356,139,'凤阳县',3,341126),(1357,139,'天长市',3,341181),(1358,139,'明光市',3,341182),(1359,140,'颍州区',3,341202),(1360,140,'颍东区',3,341203),(1361,140,'颍泉区',3,341204),(1362,140,'临泉县',3,341221),(1363,140,'太和县',3,341222),(1364,140,'阜南县',3,341225),(1365,140,'颍上县',3,341226),(1366,140,'界首市',3,341282),(1367,141,'埇桥区',3,341302),(1368,141,'砀山县',3,341321),(1369,141,'萧县',3,341322),(1370,141,'灵璧县',3,341323),(1371,141,'泗县',3,341324),(1372,142,'金安区',3,341502),(1373,142,'裕安区',3,341503),(1374,142,'叶集区',3,341504),(1375,142,'霍邱县',3,341522),(1376,142,'舒城县',3,341523),(1377,142,'金寨县',3,341524),(1378,142,'霍山县',3,341525),(1379,143,'谯城区',3,341602),(1380,143,'涡阳县',3,341621),(1381,143,'蒙城县',3,341622),(1382,143,'利辛县',3,341623),(1383,144,'贵池区',3,341702),(1384,144,'东至县',3,341721),(1385,144,'石台县',3,341722),(1386,144,'青阳县',3,341723),(1387,145,'宣州区',3,341802),(1388,145,'郎溪县',3,341821),(1389,145,'广德县',3,341822),(1390,145,'泾县',3,341823),(1391,145,'绩溪县',3,341824),(1392,145,'旌德县',3,341825),(1393,145,'宁国市',3,341881),(1394,146,'鼓楼区',3,350102),(1395,146,'台江区',3,350103),(1396,146,'仓山区',3,350104),(1397,146,'马尾区',3,350105),(1398,146,'晋安区',3,350111),(1399,146,'闽侯县',3,350121),(1400,146,'连江县',3,350122),(1401,146,'罗源县',3,350123),(1402,146,'闽清县',3,350124),(1403,146,'永泰县',3,350125),(1404,146,'平潭县',3,350128),(1405,146,'福清市',3,350181),(1406,146,'长乐市',3,350182),(1407,147,'思明区',3,350203),(1408,147,'海沧区',3,350205),(1409,147,'湖里区',3,350206),(1410,147,'集美区',3,350211),(1411,147,'同安区',3,350212),(1412,147,'翔安区',3,350213),(1413,148,'城厢区',3,350302),(1414,148,'涵江区',3,350303),(1415,148,'荔城区',3,350304),(1416,148,'秀屿区',3,350305),(1417,148,'仙游县',3,350322),(1418,149,'梅列区',3,350402),(1419,149,'三元区',3,350403),(1420,149,'明溪县',3,350421),(1421,149,'清流县',3,350423),(1422,149,'宁化县',3,350424),(1423,149,'大田县',3,350425),(1424,149,'尤溪县',3,350426),(1425,149,'沙县',3,350427),(1426,149,'将乐县',3,350428),(1427,149,'泰宁县',3,350429),(1428,149,'建宁县',3,350430),(1429,149,'永安市',3,350481),(1430,150,'鲤城区',3,350502),(1431,150,'丰泽区',3,350503),(1432,150,'洛江区',3,350504),(1433,150,'泉港区',3,350505),(1434,150,'惠安县',3,350521),(1435,150,'安溪县',3,350524),(1436,150,'永春县',3,350525),(1437,150,'德化县',3,350526),(1438,150,'金门县',3,350527),(1439,150,'石狮市',3,350581),(1440,150,'晋江市',3,350582),(1441,150,'南安市',3,350583),(1442,151,'芗城区',3,350602),(1443,151,'龙文区',3,350603),(1444,151,'云霄县',3,350622),(1445,151,'漳浦县',3,350623),(1446,151,'诏安县',3,350624),(1447,151,'长泰县',3,350625),(1448,151,'东山县',3,350626),(1449,151,'南靖县',3,350627),(1450,151,'平和县',3,350628),(1451,151,'华安县',3,350629),(1452,151,'龙海市',3,350681),(1453,152,'延平区',3,350702),(1454,152,'建阳区',3,350703),(1455,152,'顺昌县',3,350721),(1456,152,'浦城县',3,350722),(1457,152,'光泽县',3,350723),(1458,152,'松溪县',3,350724),(1459,152,'政和县',3,350725),(1460,152,'邵武市',3,350781),(1461,152,'武夷山市',3,350782),(1462,152,'建瓯市',3,350783),(1463,153,'新罗区',3,350802),(1464,153,'永定区',3,350803),(1465,153,'长汀县',3,350821),(1466,153,'上杭县',3,350823),(1467,153,'武平县',3,350824),(1468,153,'连城县',3,350825),(1469,153,'漳平市',3,350881),(1470,154,'蕉城区',3,350902),(1471,154,'霞浦县',3,350921),(1472,154,'古田县',3,350922),(1473,154,'屏南县',3,350923),(1474,154,'寿宁县',3,350924),(1475,154,'周宁县',3,350925),(1476,154,'柘荣县',3,350926),(1477,154,'福安市',3,350981),(1478,154,'福鼎市',3,350982),(1479,155,'东湖区',3,360102),(1480,155,'西湖区',3,360103),(1481,155,'青云谱区',3,360104),(1482,155,'湾里区',3,360105),(1483,155,'青山湖区',3,360111),(1484,155,'新建区',3,360112),(1485,155,'南昌县',3,360121),(1486,155,'安义县',3,360123),(1487,155,'进贤县',3,360124),(1488,156,'昌江区',3,360202),(1489,156,'珠山区',3,360203),(1490,156,'浮梁县',3,360222),(1491,156,'乐平市',3,360281),(1492,157,'安源区',3,360302),(1493,157,'湘东区',3,360313),(1494,157,'莲花县',3,360321),(1495,157,'上栗县',3,360322),(1496,157,'芦溪县',3,360323),(1497,158,'濂溪区',3,360402),(1498,158,'浔阳区',3,360403),(1499,158,'九江县',3,360421),(1500,158,'武宁县',3,360423),(1501,158,'修水县',3,360424),(1502,158,'永修县',3,360425),(1503,158,'德安县',3,360426),(1504,158,'都昌县',3,360428),(1505,158,'湖口县',3,360429),(1506,158,'彭泽县',3,360430),(1507,158,'瑞昌市',3,360481),(1508,158,'共青城市',3,360482),(1509,158,'庐山市',3,360483),(1510,159,'渝水区',3,360502),(1511,159,'分宜县',3,360521),(1512,160,'月湖区',3,360602),(1513,160,'余江县',3,360622),(1514,160,'贵溪市',3,360681),(1515,161,'章贡区',3,360702),(1516,161,'南康区',3,360703),(1517,161,'赣县',3,360721),(1518,161,'信丰县',3,360722),(1519,161,'大余县',3,360723),(1520,161,'上犹县',3,360724),(1521,161,'崇义县',3,360725),(1522,161,'安远县',3,360726),(1523,161,'龙南县',3,360727),(1524,161,'定南县',3,360728),(1525,161,'全南县',3,360729),(1526,161,'宁都县',3,360730),(1527,161,'于都县',3,360731),(1528,161,'兴国县',3,360732),(1529,161,'会昌县',3,360733),(1530,161,'寻乌县',3,360734),(1531,161,'石城县',3,360735),(1532,161,'瑞金市',3,360781),(1533,162,'吉州区',3,360802),(1534,162,'青原区',3,360803),(1535,162,'吉安县',3,360821),(1536,162,'吉水县',3,360822),(1537,162,'峡江县',3,360823),(1538,162,'新干县',3,360824),(1539,162,'永丰县',3,360825),(1540,162,'泰和县',3,360826),(1541,162,'遂川县',3,360827),(1542,162,'万安县',3,360828),(1543,162,'安福县',3,360829),(1544,162,'永新县',3,360830),(1545,162,'井冈山市',3,360881),(1546,163,'袁州区',3,360902),(1547,163,'奉新县',3,360921),(1548,163,'万载县',3,360922),(1549,163,'上高县',3,360923),(1550,163,'宜丰县',3,360924),(1551,163,'靖安县',3,360925),(1552,163,'铜鼓县',3,360926),(1553,163,'丰城市',3,360981),(1554,163,'樟树市',3,360982),(1555,163,'高安市',3,360983),(1556,164,'临川区',3,361002),(1557,164,'南城县',3,361021),(1558,164,'黎川县',3,361022),(1559,164,'南丰县',3,361023),(1560,164,'崇仁县',3,361024),(1561,164,'乐安县',3,361025),(1562,164,'宜黄县',3,361026),(1563,164,'金溪县',3,361027),(1564,164,'资溪县',3,361028),(1565,164,'东乡县',3,361029),(1566,164,'广昌县',3,361030),(1567,165,'信州区',3,361102),(1568,165,'广丰区',3,361103),(1569,165,'上饶县',3,361121),(1570,165,'玉山县',3,361123),(1571,165,'铅山县',3,361124),(1572,165,'横峰县',3,361125),(1573,165,'弋阳县',3,361126),(1574,165,'余干县',3,361127),(1575,165,'鄱阳县',3,361128),(1576,165,'万年县',3,361129),(1577,165,'婺源县',3,361130),(1578,165,'德兴市',3,361181),(1579,166,'历下区',3,370102),(1580,166,'市中区',3,370103),(1581,166,'槐荫区',3,370104),(1582,166,'天桥区',3,370105),(1583,166,'历城区',3,370112),(1584,166,'长清区',3,370113),(1585,166,'平阴县',3,370124),(1586,166,'济阳县',3,370125),(1587,166,'商河县',3,370126),(1588,166,'章丘市',3,370181),(1589,167,'市南区',3,370202),(1590,167,'市北区',3,370203),(1591,167,'黄岛区',3,370211),(1592,167,'崂山区',3,370212),(1593,167,'李沧区',3,370213),(1594,167,'城阳区',3,370214),(1595,167,'胶州市',3,370281),(1596,167,'即墨市',3,370282),(1597,167,'平度市',3,370283),(1598,167,'莱西市',3,370285),(1599,168,'淄川区',3,370302),(1600,168,'张店区',3,370303),(1601,168,'博山区',3,370304),(1602,168,'临淄区',3,370305),(1603,168,'周村区',3,370306),(1604,168,'桓台县',3,370321),(1605,168,'高青县',3,370322),(1606,168,'沂源县',3,370323),(1607,169,'市中区',3,370402),(1608,169,'薛城区',3,370403),(1609,169,'峄城区',3,370404),(1610,169,'台儿庄区',3,370405),(1611,169,'山亭区',3,370406),(1612,169,'滕州市',3,370481),(1613,170,'东营区',3,370502),(1614,170,'河口区',3,370503),(1615,170,'垦利区',3,370505),(1616,170,'利津县',3,370522),(1617,170,'广饶县',3,370523),(1618,171,'芝罘区',3,370602),(1619,171,'福山区',3,370611),(1620,171,'牟平区',3,370612),(1621,171,'莱山区',3,370613),(1622,171,'长岛县',3,370634),(1623,171,'龙口市',3,370681),(1624,171,'莱阳市',3,370682),(1625,171,'莱州市',3,370683),(1626,171,'蓬莱市',3,370684),(1627,171,'招远市',3,370685),(1628,171,'栖霞市',3,370686),(1629,171,'海阳市',3,370687),(1630,172,'潍城区',3,370702),(1631,172,'寒亭区',3,370703),(1632,172,'坊子区',3,370704),(1633,172,'奎文区',3,370705),(1634,172,'临朐县',3,370724),(1635,172,'昌乐县',3,370725),(1636,172,'青州市',3,370781),(1637,172,'诸城市',3,370782),(1638,172,'寿光市',3,370783),(1639,172,'安丘市',3,370784),(1640,172,'高密市',3,370785),(1641,172,'昌邑市',3,370786),(1642,173,'任城区',3,370811),(1643,173,'兖州区',3,370812),(1644,173,'微山县',3,370826),(1645,173,'鱼台县',3,370827),(1646,173,'金乡县',3,370828),(1647,173,'嘉祥县',3,370829),(1648,173,'汶上县',3,370830),(1649,173,'泗水县',3,370831),(1650,173,'梁山县',3,370832),(1651,173,'曲阜市',3,370881),(1652,173,'邹城市',3,370883),(1653,174,'泰山区',3,370902),(1654,174,'岱岳区',3,370911),(1655,174,'宁阳县',3,370921),(1656,174,'东平县',3,370923),(1657,174,'新泰市',3,370982),(1658,174,'肥城市',3,370983),(1659,175,'环翠区',3,371002),(1660,175,'文登区',3,371003),(1661,175,'荣成市',3,371082),(1662,175,'乳山市',3,371083),(1663,176,'东港区',3,371102),(1664,176,'岚山区',3,371103),(1665,176,'五莲县',3,371121),(1666,176,'莒县',3,371122),(1667,177,'莱城区',3,371202),(1668,177,'钢城区',3,371203),(1669,178,'兰山区',3,371302),(1670,178,'罗庄区',3,371311),(1671,178,'河东区',3,371312),(1672,178,'沂南县',3,371321),(1673,178,'郯城县',3,371322),(1674,178,'沂水县',3,371323),(1675,178,'兰陵县',3,371324),(1676,178,'费县',3,371325),(1677,178,'平邑县',3,371326),(1678,178,'莒南县',3,371327),(1679,178,'蒙阴县',3,371328),(1680,178,'临沭县',3,371329),(1681,179,'德城区',3,371402),(1682,179,'陵城区',3,371403),(1683,179,'宁津县',3,371422),(1684,179,'庆云县',3,371423),(1685,179,'临邑县',3,371424),(1686,179,'齐河县',3,371425),(1687,179,'平原县',3,371426),(1688,179,'夏津县',3,371427),(1689,179,'武城县',3,371428),(1690,179,'乐陵市',3,371481),(1691,179,'禹城市',3,371482),(1692,180,'东昌府区',3,371502),(1693,180,'阳谷县',3,371521),(1694,180,'莘县',3,371522),(1695,180,'茌平县',3,371523),(1696,180,'东阿县',3,371524),(1697,180,'冠县',3,371525),(1698,180,'高唐县',3,371526),(1699,180,'临清市',3,371581),(1700,181,'滨城区',3,371602),(1701,181,'沾化区',3,371603),(1702,181,'惠民县',3,371621),(1703,181,'阳信县',3,371622),(1704,181,'无棣县',3,371623),(1705,181,'博兴县',3,371625),(1706,181,'邹平县',3,371626),(1707,182,'牡丹区',3,371702),(1708,182,'定陶区',3,371703),(1709,182,'曹县',3,371721),(1710,182,'单县',3,371722),(1711,182,'成武县',3,371723),(1712,182,'巨野县',3,371724),(1713,182,'郓城县',3,371725),(1714,182,'鄄城县',3,371726),(1715,182,'东明县',3,371728),(1716,183,'中原区',3,410102),(1717,183,'二七区',3,410103),(1718,183,'管城回族区',3,410104),(1719,183,'金水区',3,410105),(1720,183,'上街区',3,410106),(1721,183,'惠济区',3,410108),(1722,183,'中牟县',3,410122),(1723,183,'巩义市',3,410181),(1724,183,'荥阳市',3,410182),(1725,183,'新密市',3,410183),(1726,183,'新郑市',3,410184),(1727,183,'登封市',3,410185),(1728,184,'龙亭区',3,410202),(1729,184,'顺河回族区',3,410203),(1730,184,'鼓楼区',3,410204),(1731,184,'禹王台区',3,410205),(1732,184,'金明区',3,410211),(1733,184,'祥符区',3,410212),(1734,184,'杞县',3,410221),(1735,184,'通许县',3,410222),(1736,184,'尉氏县',3,410223),(1737,184,'兰考县',3,410225),(1738,185,'老城区',3,410302),(1739,185,'西工区',3,410303),(1740,185,'瀍河回族区',3,410304),(1741,185,'涧西区',3,410305),(1742,185,'吉利区',3,410306),(1743,185,'洛龙区',3,410311),(1744,185,'孟津县',3,410322),(1745,185,'新安县',3,410323),(1746,185,'栾川县',3,410324),(1747,185,'嵩县',3,410325),(1748,185,'汝阳县',3,410326),(1749,185,'宜阳县',3,410327),(1750,185,'洛宁县',3,410328),(1751,185,'伊川县',3,410329),(1752,185,'偃师市',3,410381),(1753,186,'新华区',3,410402),(1754,186,'卫东区',3,410403),(1755,186,'石龙区',3,410404),(1756,186,'湛河区',3,410411),(1757,186,'宝丰县',3,410421),(1758,186,'叶县',3,410422),(1759,186,'鲁山县',3,410423),(1760,186,'郏县',3,410425),(1761,186,'舞钢市',3,410481),(1762,186,'汝州市',3,410482),(1763,187,'文峰区',3,410502),(1764,187,'北关区',3,410503),(1765,187,'殷都区',3,410505),(1766,187,'龙安区',3,410506),(1767,187,'安阳县',3,410522),(1768,187,'汤阴县',3,410523),(1769,187,'滑县',3,410526),(1770,187,'内黄县',3,410527),(1771,187,'林州市',3,410581),(1772,188,'鹤山区',3,410602),(1773,188,'山城区',3,410603),(1774,188,'淇滨区',3,410611),(1775,188,'浚县',3,410621),(1776,188,'淇县',3,410622),(1777,189,'红旗区',3,410702),(1778,189,'卫滨区',3,410703),(1779,189,'凤泉区',3,410704),(1780,189,'牧野区',3,410711),(1781,189,'新乡县',3,410721),(1782,189,'获嘉县',3,410724),(1783,189,'原阳县',3,410725),(1784,189,'延津县',3,410726),(1785,189,'封丘县',3,410727),(1786,189,'长垣县',3,410728),(1787,189,'卫辉市',3,410781),(1788,189,'辉县市',3,410782),(1789,190,'解放区',3,410802),(1790,190,'中站区',3,410803),(1791,190,'马村区',3,410804),(1792,190,'山阳区',3,410811),(1793,190,'修武县',3,410821),(1794,190,'博爱县',3,410822),(1795,190,'武陟县',3,410823),(1796,190,'温县',3,410825),(1797,190,'沁阳市',3,410882),(1798,190,'孟州市',3,410883),(1799,191,'华龙区',3,410902),(1800,191,'清丰县',3,410922),(1801,191,'南乐县',3,410923),(1802,191,'范县',3,410926),(1803,191,'台前县',3,410927),(1804,191,'濮阳县',3,410928),(1805,192,'魏都区',3,411002),(1806,192,'许昌县',3,411023),(1807,192,'鄢陵县',3,411024),(1808,192,'襄城县',3,411025),(1809,192,'禹州市',3,411081),(1810,192,'长葛市',3,411082),(1811,193,'源汇区',3,411102),(1812,193,'郾城区',3,411103),(1813,193,'召陵区',3,411104),(1814,193,'舞阳县',3,411121),(1815,193,'临颍县',3,411122),(1816,194,'湖滨区',3,411202),(1817,194,'陕州区',3,411203),(1818,194,'渑池县',3,411221),(1819,194,'卢氏县',3,411224),(1820,194,'义马市',3,411281),(1821,194,'灵宝市',3,411282),(1822,195,'宛城区',3,411302),(1823,195,'卧龙区',3,411303),(1824,195,'南召县',3,411321),(1825,195,'方城县',3,411322),(1826,195,'西峡县',3,411323),(1827,195,'镇平县',3,411324),(1828,195,'内乡县',3,411325),(1829,195,'淅川县',3,411326),(1830,195,'社旗县',3,411327),(1831,195,'唐河县',3,411328),(1832,195,'新野县',3,411329),(1833,195,'桐柏县',3,411330),(1834,195,'邓州市',3,411381),(1835,196,'梁园区',3,411402),(1836,196,'睢阳区',3,411403),(1837,196,'民权县',3,411421),(1838,196,'睢县',3,411422),(1839,196,'宁陵县',3,411423),(1840,196,'柘城县',3,411424),(1841,196,'虞城县',3,411425),(1842,196,'夏邑县',3,411426),(1843,196,'永城市',3,411481),(1844,197,'浉河区',3,411502),(1845,197,'平桥区',3,411503),(1846,197,'罗山县',3,411521),(1847,197,'光山县',3,411522),(1848,197,'新县',3,411523),(1849,197,'商城县',3,411524),(1850,197,'固始县',3,411525),(1851,197,'潢川县',3,411526),(1852,197,'淮滨县',3,411527),(1853,197,'息县',3,411528),(1854,198,'川汇区',3,411602),(1855,198,'扶沟县',3,411621),(1856,198,'西华县',3,411622),(1857,198,'商水县',3,411623),(1858,198,'沈丘县',3,411624),(1859,198,'郸城县',3,411625),(1860,198,'淮阳县',3,411626),(1861,198,'太康县',3,411627),(1862,198,'鹿邑县',3,411628),(1863,198,'项城市',3,411681),(1864,199,'驿城区',3,411702),(1865,199,'西平县',3,411721),(1866,199,'上蔡县',3,411722),(1867,199,'平舆县',3,411723),(1868,199,'正阳县',3,411724),(1869,199,'确山县',3,411725),(1870,199,'泌阳县',3,411726),(1871,199,'汝南县',3,411727),(1872,199,'遂平县',3,411728),(1873,199,'新蔡县',3,411729),(1874,200,'济源市',3,419001),(1875,201,'江岸区',3,420102),(1876,201,'江汉区',3,420103),(1877,201,'硚口区',3,420104),(1878,201,'汉阳区',3,420105),(1879,201,'武昌区',3,420106),(1880,201,'青山区',3,420107),(1881,201,'洪山区',3,420111),(1882,201,'东西湖区',3,420112),(1883,201,'汉南区',3,420113),(1884,201,'蔡甸区',3,420114),(1885,201,'江夏区',3,420115),(1886,201,'黄陂区',3,420116),(1887,201,'新洲区',3,420117),(1888,202,'黄石港区',3,420202),(1889,202,'西塞山区',3,420203),(1890,202,'下陆区',3,420204),(1891,202,'铁山区',3,420205),(1892,202,'阳新县',3,420222),(1893,202,'大冶市',3,420281),(1894,203,'茅箭区',3,420302),(1895,203,'张湾区',3,420303),(1896,203,'郧阳区',3,420304),(1897,203,'郧西县',3,420322),(1898,203,'竹山县',3,420323),(1899,203,'竹溪县',3,420324),(1900,203,'房县',3,420325),(1901,203,'丹江口市',3,420381),(1902,204,'西陵区',3,420502),(1903,204,'伍家岗区',3,420503),(1904,204,'点军区',3,420504),(1905,204,'猇亭区',3,420505),(1906,204,'夷陵区',3,420506),(1907,204,'远安县',3,420525),(1908,204,'兴山县',3,420526),(1909,204,'秭归县',3,420527),(1910,204,'长阳土家族自治县',3,420528),(1911,204,'五峰土家族自治县',3,420529),(1912,204,'宜都市',3,420581),(1913,204,'当阳市',3,420582),(1914,204,'枝江市',3,420583),(1915,205,'襄城区',3,420602),(1916,205,'樊城区',3,420606),(1917,205,'襄州区',3,420607),(1918,205,'南漳县',3,420624),(1919,205,'谷城县',3,420625),(1920,205,'保康县',3,420626),(1921,205,'老河口市',3,420682),(1922,205,'枣阳市',3,420683),(1923,205,'宜城市',3,420684),(1924,206,'梁子湖区',3,420702),(1925,206,'华容区',3,420703),(1926,206,'鄂城区',3,420704),(1927,207,'东宝区',3,420802),(1928,207,'掇刀区',3,420804),(1929,207,'京山县',3,420821),(1930,207,'沙洋县',3,420822),(1931,207,'钟祥市',3,420881),(1932,208,'孝南区',3,420902),(1933,208,'孝昌县',3,420921),(1934,208,'大悟县',3,420922),(1935,208,'云梦县',3,420923),(1936,208,'应城市',3,420981),(1937,208,'安陆市',3,420982),(1938,208,'汉川市',3,420984),(1939,209,'沙市区',3,421002),(1940,209,'荆州区',3,421003),(1941,209,'公安县',3,421022),(1942,209,'监利县',3,421023),(1943,209,'江陵县',3,421024),(1944,209,'石首市',3,421081),(1945,209,'洪湖市',3,421083),(1946,209,'松滋市',3,421087),(1947,210,'黄州区',3,421102),(1948,210,'团风县',3,421121),(1949,210,'红安县',3,421122),(1950,210,'罗田县',3,421123),(1951,210,'英山县',3,421124),(1952,210,'浠水县',3,421125),(1953,210,'蕲春县',3,421126),(1954,210,'黄梅县',3,421127),(1955,210,'麻城市',3,421181),(1956,210,'武穴市',3,421182),(1957,211,'咸安区',3,421202),(1958,211,'嘉鱼县',3,421221),(1959,211,'通城县',3,421222),(1960,211,'崇阳县',3,421223),(1961,211,'通山县',3,421224),(1962,211,'赤壁市',3,421281),(1963,212,'曾都区',3,421303),(1964,212,'随县',3,421321),(1965,212,'广水市',3,421381),(1966,213,'恩施市',3,422801),(1967,213,'利川市',3,422802),(1968,213,'建始县',3,422822),(1969,213,'巴东县',3,422823),(1970,213,'宣恩县',3,422825),(1971,213,'咸丰县',3,422826),(1972,213,'来凤县',3,422827),(1973,213,'鹤峰县',3,422828),(1974,214,'仙桃市',3,429004),(1975,214,'潜江市',3,429005),(1976,214,'天门市',3,429006),(1977,214,'神农架林区',3,429021),(1978,215,'芙蓉区',3,430102),(1979,215,'天心区',3,430103),(1980,215,'岳麓区',3,430104),(1981,215,'开福区',3,430105),(1982,215,'雨花区',3,430111),(1983,215,'望城区',3,430112),(1984,215,'长沙县',3,430121),(1985,215,'宁乡县',3,430124),(1986,215,'浏阳市',3,430181),(1987,216,'荷塘区',3,430202),(1988,216,'芦淞区',3,430203),(1989,216,'石峰区',3,430204),(1990,216,'天元区',3,430211),(1991,216,'株洲县',3,430221),(1992,216,'攸县',3,430223),(1993,216,'茶陵县',3,430224),(1994,216,'炎陵县',3,430225),(1995,216,'醴陵市',3,430281),(1996,217,'雨湖区',3,430302),(1997,217,'岳塘区',3,430304),(1998,217,'湘潭县',3,430321),(1999,217,'湘乡市',3,430381),(2000,217,'韶山市',3,430382),(2001,218,'珠晖区',3,430405),(2002,218,'雁峰区',3,430406),(2003,218,'石鼓区',3,430407),(2004,218,'蒸湘区',3,430408),(2005,218,'南岳区',3,430412),(2006,218,'衡阳县',3,430421),(2007,218,'衡南县',3,430422),(2008,218,'衡山县',3,430423),(2009,218,'衡东县',3,430424),(2010,218,'祁东县',3,430426),(2011,218,'耒阳市',3,430481),(2012,218,'常宁市',3,430482),(2013,219,'双清区',3,430502),(2014,219,'大祥区',3,430503),(2015,219,'北塔区',3,430511),(2016,219,'邵东县',3,430521),(2017,219,'新邵县',3,430522),(2018,219,'邵阳县',3,430523),(2019,219,'隆回县',3,430524),(2020,219,'洞口县',3,430525),(2021,219,'绥宁县',3,430527),(2022,219,'新宁县',3,430528),(2023,219,'城步苗族自治县',3,430529),(2024,219,'武冈市',3,430581),(2025,220,'岳阳楼区',3,430602),(2026,220,'云溪区',3,430603),(2027,220,'君山区',3,430611),(2028,220,'岳阳县',3,430621),(2029,220,'华容县',3,430623),(2030,220,'湘阴县',3,430624),(2031,220,'平江县',3,430626),(2032,220,'汨罗市',3,430681),(2033,220,'临湘市',3,430682),(2034,221,'武陵区',3,430702),(2035,221,'鼎城区',3,430703),(2036,221,'安乡县',3,430721),(2037,221,'汉寿县',3,430722),(2038,221,'澧县',3,430723),(2039,221,'临澧县',3,430724),(2040,221,'桃源县',3,430725),(2041,221,'石门县',3,430726),(2042,221,'津市市',3,430781),(2043,222,'永定区',3,430802),(2044,222,'武陵源区',3,430811),(2045,222,'慈利县',3,430821),(2046,222,'桑植县',3,430822),(2047,223,'资阳区',3,430902),(2048,223,'赫山区',3,430903),(2049,223,'南县',3,430921),(2050,223,'桃江县',3,430922),(2051,223,'安化县',3,430923),(2052,223,'沅江市',3,430981),(2053,224,'北湖区',3,431002),(2054,224,'苏仙区',3,431003),(2055,224,'桂阳县',3,431021),(2056,224,'宜章县',3,431022),(2057,224,'永兴县',3,431023),(2058,224,'嘉禾县',3,431024),(2059,224,'临武县',3,431025),(2060,224,'汝城县',3,431026),(2061,224,'桂东县',3,431027),(2062,224,'安仁县',3,431028),(2063,224,'资兴市',3,431081),(2064,225,'零陵区',3,431102),(2065,225,'冷水滩区',3,431103),(2066,225,'祁阳县',3,431121),(2067,225,'东安县',3,431122),(2068,225,'双牌县',3,431123),(2069,225,'道县',3,431124),(2070,225,'江永县',3,431125),(2071,225,'宁远县',3,431126),(2072,225,'蓝山县',3,431127),(2073,225,'新田县',3,431128),(2074,225,'江华瑶族自治县',3,431129),(2075,226,'鹤城区',3,431202),(2076,226,'中方县',3,431221),(2077,226,'沅陵县',3,431222),(2078,226,'辰溪县',3,431223),(2079,226,'溆浦县',3,431224),(2080,226,'会同县',3,431225),(2081,226,'麻阳苗族自治县',3,431226),(2082,226,'新晃侗族自治县',3,431227),(2083,226,'芷江侗族自治县',3,431228),(2084,226,'靖州苗族侗族自治县',3,431229),(2085,226,'通道侗族自治县',3,431230),(2086,226,'洪江市',3,431281),(2087,227,'娄星区',3,431302),(2088,227,'双峰县',3,431321),(2089,227,'新化县',3,431322),(2090,227,'冷水江市',3,431381),(2091,227,'涟源市',3,431382),(2092,228,'吉首市',3,433101),(2093,228,'泸溪县',3,433122),(2094,228,'凤凰县',3,433123),(2095,228,'花垣县',3,433124),(2096,228,'保靖县',3,433125),(2097,228,'古丈县',3,433126),(2098,228,'永顺县',3,433127),(2099,228,'龙山县',3,433130),(2100,229,'荔湾区',3,440103),(2101,229,'越秀区',3,440104),(2102,229,'海珠区',3,440105),(2103,229,'天河区',3,440106),(2104,229,'白云区',3,440111),(2105,229,'黄埔区',3,440112),(2106,229,'番禺区',3,440113),(2107,229,'花都区',3,440114),(2108,229,'南沙区',3,440115),(2109,229,'从化区',3,440117),(2110,229,'增城区',3,440118),(2111,230,'武江区',3,440203),(2112,230,'浈江区',3,440204),(2113,230,'曲江区',3,440205),(2114,230,'始兴县',3,440222),(2115,230,'仁化县',3,440224),(2116,230,'翁源县',3,440229),(2117,230,'乳源瑶族自治县',3,440232),(2118,230,'新丰县',3,440233),(2119,230,'乐昌市',3,440281),(2120,230,'南雄市',3,440282),(2121,231,'罗湖区',3,440303),(2122,231,'福田区',3,440304),(2123,231,'南山区',3,440305),(2124,231,'宝安区',3,440306),(2125,231,'龙岗区',3,440307),(2126,231,'盐田区',3,440308),(2127,232,'香洲区',3,440402),(2128,232,'斗门区',3,440403),(2129,232,'金湾区',3,440404),(2130,233,'龙湖区',3,440507),(2131,233,'金平区',3,440511),(2132,233,'濠江区',3,440512),(2133,233,'潮阳区',3,440513),(2134,233,'潮南区',3,440514),(2135,233,'澄海区',3,440515),(2136,233,'南澳县',3,440523),(2137,234,'禅城区',3,440604),(2138,234,'南海区',3,440605),(2139,234,'顺德区',3,440606),(2140,234,'三水区',3,440607),(2141,234,'高明区',3,440608),(2142,235,'蓬江区',3,440703),(2143,235,'江海区',3,440704),(2144,235,'新会区',3,440705),(2145,235,'台山市',3,440781),(2146,235,'开平市',3,440783),(2147,235,'鹤山市',3,440784),(2148,235,'恩平市',3,440785),(2149,236,'赤坎区',3,440802),(2150,236,'霞山区',3,440803),(2151,236,'坡头区',3,440804),(2152,236,'麻章区',3,440811),(2153,236,'遂溪县',3,440823),(2154,236,'徐闻县',3,440825),(2155,236,'廉江市',3,440881),(2156,236,'雷州市',3,440882),(2157,236,'吴川市',3,440883),(2158,237,'茂南区',3,440902),(2159,237,'电白区',3,440904),(2160,237,'高州市',3,440981),(2161,237,'化州市',3,440982),(2162,237,'信宜市',3,440983),(2163,238,'端州区',3,441202),(2164,238,'鼎湖区',3,441203),(2165,238,'高要区',3,441204),(2166,238,'广宁县',3,441223),(2167,238,'怀集县',3,441224),(2168,238,'封开县',3,441225),(2169,238,'德庆县',3,441226),(2170,238,'四会市',3,441284),(2171,239,'惠城区',3,441302),(2172,239,'惠阳区',3,441303),(2173,239,'博罗县',3,441322),(2174,239,'惠东县',3,441323),(2175,239,'龙门县',3,441324),(2176,240,'梅江区',3,441402),(2177,240,'梅县区',3,441403),(2178,240,'大埔县',3,441422),(2179,240,'丰顺县',3,441423),(2180,240,'五华县',3,441424),(2181,240,'平远县',3,441426),(2182,240,'蕉岭县',3,441427),(2183,240,'兴宁市',3,441481),(2184,241,'城区',3,441502),(2185,241,'海丰县',3,441521),(2186,241,'陆河县',3,441523),(2187,241,'陆丰市',3,441581),(2188,242,'源城区',3,441602),(2189,242,'紫金县',3,441621),(2190,242,'龙川县',3,441622),(2191,242,'连平县',3,441623),(2192,242,'和平县',3,441624),(2193,242,'东源县',3,441625),(2194,243,'江城区',3,441702),(2195,243,'阳东区',3,441704),(2196,243,'阳西县',3,441721),(2197,243,'阳春市',3,441781),(2198,244,'清城区',3,441802),(2199,244,'清新区',3,441803),(2200,244,'佛冈县',3,441821),(2201,244,'阳山县',3,441823),(2202,244,'连山壮族瑶族自治县',3,441825),(2203,244,'连南瑶族自治县',3,441826),(2204,244,'英德市',3,441881),(2205,244,'连州市',3,441882),(2206,245,'东莞市',3,441900),(2207,246,'中山市',3,442000),(2208,247,'湘桥区',3,445102),(2209,247,'潮安区',3,445103),(2210,247,'饶平县',3,445122),(2211,248,'榕城区',3,445202),(2212,248,'揭东区',3,445203),(2213,248,'揭西县',3,445222),(2214,248,'惠来县',3,445224),(2215,248,'普宁市',3,445281),(2216,249,'云城区',3,445302),(2217,249,'云安区',3,445303),(2218,249,'新兴县',3,445321),(2219,249,'郁南县',3,445322),(2220,249,'罗定市',3,445381),(2221,250,'兴宁区',3,450102),(2222,250,'青秀区',3,450103),(2223,250,'江南区',3,450105),(2224,250,'西乡塘区',3,450107),(2225,250,'良庆区',3,450108),(2226,250,'邕宁区',3,450109),(2227,250,'武鸣区',3,450110),(2228,250,'隆安县',3,450123),(2229,250,'马山县',3,450124),(2230,250,'上林县',3,450125),(2231,250,'宾阳县',3,450126),(2232,250,'横县',3,450127),(2233,251,'城中区',3,450202),(2234,251,'鱼峰区',3,450203),(2235,251,'柳南区',3,450204),(2236,251,'柳北区',3,450205),(2237,251,'柳江区',3,450206),(2238,251,'柳城县',3,450222),(2239,251,'鹿寨县',3,450223),(2240,251,'融安县',3,450224),(2241,251,'融水苗族自治县',3,450225),(2242,251,'三江侗族自治县',3,450226),(2243,252,'秀峰区',3,450302),(2244,252,'叠彩区',3,450303),(2245,252,'象山区',3,450304),(2246,252,'七星区',3,450305),(2247,252,'雁山区',3,450311),(2248,252,'临桂区',3,450312),(2249,252,'阳朔县',3,450321),(2250,252,'灵川县',3,450323),(2251,252,'全州县',3,450324),(2252,252,'兴安县',3,450325),(2253,252,'永福县',3,450326),(2254,252,'灌阳县',3,450327),(2255,252,'龙胜各族自治县',3,450328),(2256,252,'资源县',3,450329),(2257,252,'平乐县',3,450330),(2258,252,'荔浦县',3,450331),(2259,252,'恭城瑶族自治县',3,450332),(2260,253,'万秀区',3,450403),(2261,253,'长洲区',3,450405),(2262,253,'龙圩区',3,450406),(2263,253,'苍梧县',3,450421),(2264,253,'藤县',3,450422),(2265,253,'蒙山县',3,450423),(2266,253,'岑溪市',3,450481),(2267,254,'海城区',3,450502),(2268,254,'银海区',3,450503),(2269,254,'铁山港区',3,450512),(2270,254,'合浦县',3,450521),(2271,255,'港口区',3,450602),(2272,255,'防城区',3,450603),(2273,255,'上思县',3,450621),(2274,255,'东兴市',3,450681),(2275,256,'钦南区',3,450702),(2276,256,'钦北区',3,450703),(2277,256,'灵山县',3,450721),(2278,256,'浦北县',3,450722),(2279,257,'港北区',3,450802),(2280,257,'港南区',3,450803),(2281,257,'覃塘区',3,450804),(2282,257,'平南县',3,450821),(2283,257,'桂平市',3,450881),(2284,258,'玉州区',3,450902),(2285,258,'福绵区',3,450903),(2286,258,'容县',3,450921),(2287,258,'陆川县',3,450922),(2288,258,'博白县',3,450923),(2289,258,'兴业县',3,450924),(2290,258,'北流市',3,450981),(2291,259,'右江区',3,451002),(2292,259,'田阳县',3,451021),(2293,259,'田东县',3,451022),(2294,259,'平果县',3,451023),(2295,259,'德保县',3,451024),(2296,259,'那坡县',3,451026),(2297,259,'凌云县',3,451027),(2298,259,'乐业县',3,451028),(2299,259,'田林县',3,451029),(2300,259,'西林县',3,451030),(2301,259,'隆林各族自治县',3,451031),(2302,259,'靖西市',3,451081),(2303,260,'八步区',3,451102),(2304,260,'平桂区',3,451103),(2305,260,'昭平县',3,451121),(2306,260,'钟山县',3,451122),(2307,260,'富川瑶族自治县',3,451123),(2308,261,'金城江区',3,451202),(2309,261,'南丹县',3,451221),(2310,261,'天峨县',3,451222),(2311,261,'凤山县',3,451223),(2312,261,'东兰县',3,451224),(2313,261,'罗城仫佬族自治县',3,451225),(2314,261,'环江毛南族自治县',3,451226),(2315,261,'巴马瑶族自治县',3,451227),(2316,261,'都安瑶族自治县',3,451228),(2317,261,'大化瑶族自治县',3,451229),(2318,261,'宜州市',3,451281),(2319,262,'兴宾区',3,451302),(2320,262,'忻城县',3,451321),(2321,262,'象州县',3,451322),(2322,262,'武宣县',3,451323),(2323,262,'金秀瑶族自治县',3,451324),(2324,262,'合山市',3,451381),(2325,263,'江州区',3,451402),(2326,263,'扶绥县',3,451421),(2327,263,'宁明县',3,451422),(2328,263,'龙州县',3,451423),(2329,263,'大新县',3,451424),(2330,263,'天等县',3,451425),(2331,263,'凭祥市',3,451481),(2332,264,'秀英区',3,460105),(2333,264,'龙华区',3,460106),(2334,264,'琼山区',3,460107),(2335,264,'美兰区',3,460108),(2336,265,'市辖区',3,460201),(2337,265,'海棠区',3,460202),(2338,265,'吉阳区',3,460203),(2339,265,'天涯区',3,460204),(2340,265,'崖州区',3,460205),(2341,266,'西沙群岛',3,460321),(2342,266,'南沙群岛',3,460322),(2343,266,'中沙群岛的岛礁及其海域',3,460323),(2344,267,'儋州市',3,460400),(2345,268,'五指山市',3,469001),(2346,268,'琼海市',3,469002),(2347,268,'文昌市',3,469005),(2348,268,'万宁市',3,469006),(2349,268,'东方市',3,469007),(2350,268,'定安县',3,469021),(2351,268,'屯昌县',3,469022),(2352,268,'澄迈县',3,469023),(2353,268,'临高县',3,469024),(2354,268,'白沙黎族自治县',3,469025),(2355,268,'昌江黎族自治县',3,469026),(2356,268,'乐东黎族自治县',3,469027),(2357,268,'陵水黎族自治县',3,469028),(2358,268,'保亭黎族苗族自治县',3,469029),(2359,268,'琼中黎族苗族自治县',3,469030),(2360,269,'万州区',3,500101),(2361,269,'涪陵区',3,500102),(2362,269,'渝中区',3,500103),(2363,269,'大渡口区',3,500104),(2364,269,'江北区',3,500105),(2365,269,'沙坪坝区',3,500106),(2366,269,'九龙坡区',3,500107),(2367,269,'南岸区',3,500108),(2368,269,'北碚区',3,500109),(2369,269,'綦江区',3,500110),(2370,269,'大足区',3,500111),(2371,269,'渝北区',3,500112),(2372,269,'巴南区',3,500113),(2373,269,'黔江区',3,500114),(2374,269,'长寿区',3,500115),(2375,269,'江津区',3,500116),(2376,269,'合川区',3,500117),(2377,269,'永川区',3,500118),(2378,269,'南川区',3,500119),(2379,269,'璧山区',3,500120),(2380,269,'铜梁区',3,500151),(2381,269,'潼南区',3,500152),(2382,269,'荣昌区',3,500153),(2383,269,'开州区',3,500154),(2384,270,'梁平县',3,500228),(2385,270,'城口县',3,500229),(2386,270,'丰都县',3,500230),(2387,270,'垫江县',3,500231),(2388,270,'武隆县',3,500232),(2389,270,'忠县',3,500233),(2390,270,'云阳县',3,500235),(2391,270,'奉节县',3,500236),(2392,270,'巫山县',3,500237),(2393,270,'巫溪县',3,500238),(2394,270,'石柱土家族自治县',3,500240),(2395,270,'秀山土家族苗族自治县',3,500241),(2396,270,'酉阳土家族苗族自治县',3,500242),(2397,270,'彭水苗族土家族自治县',3,500243),(2398,271,'锦江区',3,510104),(2399,271,'青羊区',3,510105),(2400,271,'金牛区',3,510106),(2401,271,'武侯区',3,510107),(2402,271,'成华区',3,510108),(2403,271,'龙泉驿区',3,510112),(2404,271,'青白江区',3,510113),(2405,271,'新都区',3,510114),(2406,271,'温江区',3,510115),(2407,271,'双流区',3,510116),(2408,271,'金堂县',3,510121),(2409,271,'郫县',3,510124),(2410,271,'大邑县',3,510129),(2411,271,'蒲江县',3,510131),(2412,271,'新津县',3,510132),(2413,271,'都江堰市',3,510181),(2414,271,'彭州市',3,510182),(2415,271,'邛崃市',3,510183),(2416,271,'崇州市',3,510184),(2417,271,'简阳市',3,510185),(2418,272,'自流井区',3,510302),(2419,272,'贡井区',3,510303),(2420,272,'大安区',3,510304),(2421,272,'沿滩区',3,510311),(2422,272,'荣县',3,510321),(2423,272,'富顺县',3,510322),(2424,273,'东区',3,510402),(2425,273,'西区',3,510403),(2426,273,'仁和区',3,510411),(2427,273,'米易县',3,510421),(2428,273,'盐边县',3,510422),(2429,274,'江阳区',3,510502),(2430,274,'纳溪区',3,510503),(2431,274,'龙马潭区',3,510504),(2432,274,'泸县',3,510521),(2433,274,'合江县',3,510522),(2434,274,'叙永县',3,510524),(2435,274,'古蔺县',3,510525),(2436,275,'旌阳区',3,510603),(2437,275,'中江县',3,510623),(2438,275,'罗江县',3,510626),(2439,275,'广汉市',3,510681),(2440,275,'什邡市',3,510682),(2441,275,'绵竹市',3,510683),(2442,276,'涪城区',3,510703),(2443,276,'游仙区',3,510704),(2444,276,'安州区',3,510705),(2445,276,'三台县',3,510722),(2446,276,'盐亭县',3,510723),(2447,276,'梓潼县',3,510725),(2448,276,'北川羌族自治县',3,510726),(2449,276,'平武县',3,510727),(2450,276,'江油市',3,510781),(2451,277,'利州区',3,510802),(2452,277,'昭化区',3,510811),(2453,277,'朝天区',3,510812),(2454,277,'旺苍县',3,510821),(2455,277,'青川县',3,510822),(2456,277,'剑阁县',3,510823),(2457,277,'苍溪县',3,510824),(2458,278,'船山区',3,510903),(2459,278,'安居区',3,510904),(2460,278,'蓬溪县',3,510921),(2461,278,'射洪县',3,510922),(2462,278,'大英县',3,510923),(2463,279,'市中区',3,511002),(2464,279,'东兴区',3,511011),(2465,279,'威远县',3,511024),(2466,279,'资中县',3,511025),(2467,279,'隆昌县',3,511028),(2468,280,'市中区',3,511102),(2469,280,'沙湾区',3,511111),(2470,280,'五通桥区',3,511112),(2471,280,'金口河区',3,511113),(2472,280,'犍为县',3,511123),(2473,280,'井研县',3,511124),(2474,280,'夹江县',3,511126),(2475,280,'沐川县',3,511129),(2476,280,'峨边彝族自治县',3,511132),(2477,280,'马边彝族自治县',3,511133),(2478,280,'峨眉山市',3,511181),(2479,281,'顺庆区',3,511302),(2480,281,'高坪区',3,511303),(2481,281,'嘉陵区',3,511304),(2482,281,'南部县',3,511321),(2483,281,'营山县',3,511322),(2484,281,'蓬安县',3,511323),(2485,281,'仪陇县',3,511324),(2486,281,'西充县',3,511325),(2487,281,'阆中市',3,511381),(2488,282,'东坡区',3,511402),(2489,282,'彭山区',3,511403),(2490,282,'仁寿县',3,511421),(2491,282,'洪雅县',3,511423),(2492,282,'丹棱县',3,511424),(2493,282,'青神县',3,511425),(2494,283,'翠屏区',3,511502),(2495,283,'南溪区',3,511503),(2496,283,'宜宾县',3,511521),(2497,283,'江安县',3,511523),(2498,283,'长宁县',3,511524),(2499,283,'高县',3,511525),(2500,283,'珙县',3,511526),(2501,283,'筠连县',3,511527),(2502,283,'兴文县',3,511528),(2503,283,'屏山县',3,511529),(2504,284,'广安区',3,511602),(2505,284,'前锋区',3,511603),(2506,284,'岳池县',3,511621),(2507,284,'武胜县',3,511622),(2508,284,'邻水县',3,511623),(2509,284,'华蓥市',3,511681),(2510,285,'通川区',3,511702),(2511,285,'达川区',3,511703),(2512,285,'宣汉县',3,511722),(2513,285,'开江县',3,511723),(2514,285,'大竹县',3,511724),(2515,285,'渠县',3,511725),(2516,285,'万源市',3,511781),(2517,286,'雨城区',3,511802),(2518,286,'名山区',3,511803),(2519,286,'荥经县',3,511822),(2520,286,'汉源县',3,511823),(2521,286,'石棉县',3,511824),(2522,286,'天全县',3,511825),(2523,286,'芦山县',3,511826),(2524,286,'宝兴县',3,511827),(2525,287,'巴州区',3,511902),(2526,287,'恩阳区',3,511903),(2527,287,'通江县',3,511921),(2528,287,'南江县',3,511922),(2529,287,'平昌县',3,511923),(2530,288,'雁江区',3,512002),(2531,288,'安岳县',3,512021),(2532,288,'乐至县',3,512022),(2533,289,'马尔康市',3,513201),(2534,289,'汶川县',3,513221),(2535,289,'理县',3,513222),(2536,289,'茂县',3,513223),(2537,289,'松潘县',3,513224),(2538,289,'九寨沟县',3,513225),(2539,289,'金川县',3,513226),(2540,289,'小金县',3,513227),(2541,289,'黑水县',3,513228),(2542,289,'壤塘县',3,513230),(2543,289,'阿坝县',3,513231),(2544,289,'若尔盖县',3,513232),(2545,289,'红原县',3,513233),(2546,290,'康定市',3,513301),(2547,290,'泸定县',3,513322),(2548,290,'丹巴县',3,513323),(2549,290,'九龙县',3,513324),(2550,290,'雅江县',3,513325),(2551,290,'道孚县',3,513326),(2552,290,'炉霍县',3,513327),(2553,290,'甘孜县',3,513328),(2554,290,'新龙县',3,513329),(2555,290,'德格县',3,513330),(2556,290,'白玉县',3,513331),(2557,290,'石渠县',3,513332),(2558,290,'色达县',3,513333),(2559,290,'理塘县',3,513334),(2560,290,'巴塘县',3,513335),(2561,290,'乡城县',3,513336),(2562,290,'稻城县',3,513337),(2563,290,'得荣县',3,513338),(2564,291,'西昌市',3,513401),(2565,291,'木里藏族自治县',3,513422),(2566,291,'盐源县',3,513423),(2567,291,'德昌县',3,513424),(2568,291,'会理县',3,513425),(2569,291,'会东县',3,513426),(2570,291,'宁南县',3,513427),(2571,291,'普格县',3,513428),(2572,291,'布拖县',3,513429),(2573,291,'金阳县',3,513430),(2574,291,'昭觉县',3,513431),(2575,291,'喜德县',3,513432),(2576,291,'冕宁县',3,513433),(2577,291,'越西县',3,513434),(2578,291,'甘洛县',3,513435),(2579,291,'美姑县',3,513436),(2580,291,'雷波县',3,513437),(2581,292,'南明区',3,520102),(2582,292,'云岩区',3,520103),(2583,292,'花溪区',3,520111),(2584,292,'乌当区',3,520112),(2585,292,'白云区',3,520113),(2586,292,'观山湖区',3,520115),(2587,292,'开阳县',3,520121),(2588,292,'息烽县',3,520122),(2589,292,'修文县',3,520123),(2590,292,'清镇市',3,520181),(2591,293,'钟山区',3,520201),(2592,293,'六枝特区',3,520203),(2593,293,'水城县',3,520221),(2594,293,'盘县',3,520222),(2595,294,'红花岗区',3,520302),(2596,294,'汇川区',3,520303),(2597,294,'播州区',3,520304),(2598,294,'桐梓县',3,520322),(2599,294,'绥阳县',3,520323),(2600,294,'正安县',3,520324),(2601,294,'道真仡佬族苗族自治县',3,520325),(2602,294,'务川仡佬族苗族自治县',3,520326),(2603,294,'凤冈县',3,520327),(2604,294,'湄潭县',3,520328),(2605,294,'余庆县',3,520329),(2606,294,'习水县',3,520330),(2607,294,'赤水市',3,520381),(2608,294,'仁怀市',3,520382),(2609,295,'西秀区',3,520402),(2610,295,'平坝区',3,520403),(2611,295,'普定县',3,520422),(2612,295,'镇宁布依族苗族自治县',3,520423),(2613,295,'关岭布依族苗族自治县',3,520424),(2614,295,'紫云苗族布依族自治县',3,520425),(2615,296,'七星关区',3,520502),(2616,296,'大方县',3,520521),(2617,296,'黔西县',3,520522),(2618,296,'金沙县',3,520523),(2619,296,'织金县',3,520524),(2620,296,'纳雍县',3,520525),(2621,296,'威宁彝族回族苗族自治县',3,520526),(2622,296,'赫章县',3,520527),(2623,297,'碧江区',3,520602),(2624,297,'万山区',3,520603),(2625,297,'江口县',3,520621),(2626,297,'玉屏侗族自治县',3,520622),(2627,297,'石阡县',3,520623),(2628,297,'思南县',3,520624),(2629,297,'印江土家族苗族自治县',3,520625),(2630,297,'德江县',3,520626),(2631,297,'沿河土家族自治县',3,520627),(2632,297,'松桃苗族自治县',3,520628),(2633,298,'兴义市',3,522301),(2634,298,'兴仁县',3,522322),(2635,298,'普安县',3,522323),(2636,298,'晴隆县',3,522324),(2637,298,'贞丰县',3,522325),(2638,298,'望谟县',3,522326),(2639,298,'册亨县',3,522327),(2640,298,'安龙县',3,522328),(2641,299,'凯里市',3,522601),(2642,299,'黄平县',3,522622),(2643,299,'施秉县',3,522623),(2644,299,'三穗县',3,522624),(2645,299,'镇远县',3,522625),(2646,299,'岑巩县',3,522626),(2647,299,'天柱县',3,522627),(2648,299,'锦屏县',3,522628),(2649,299,'剑河县',3,522629),(2650,299,'台江县',3,522630),(2651,299,'黎平县',3,522631),(2652,299,'榕江县',3,522632),(2653,299,'从江县',3,522633),(2654,299,'雷山县',3,522634),(2655,299,'麻江县',3,522635),(2656,299,'丹寨县',3,522636),(2657,300,'都匀市',3,522701),(2658,300,'福泉市',3,522702),(2659,300,'荔波县',3,522722),(2660,300,'贵定县',3,522723),(2661,300,'瓮安县',3,522725),(2662,300,'独山县',3,522726),(2663,300,'平塘县',3,522727),(2664,300,'罗甸县',3,522728),(2665,300,'长顺县',3,522729),(2666,300,'龙里县',3,522730),(2667,300,'惠水县',3,522731),(2668,300,'三都水族自治县',3,522732),(2669,301,'五华区',3,530102),(2670,301,'盘龙区',3,530103),(2671,301,'官渡区',3,530111),(2672,301,'西山区',3,530112),(2673,301,'东川区',3,530113),(2674,301,'呈贡区',3,530114),(2675,301,'晋宁县',3,530122),(2676,301,'富民县',3,530124),(2677,301,'宜良县',3,530125),(2678,301,'石林彝族自治县',3,530126),(2679,301,'嵩明县',3,530127),(2680,301,'禄劝彝族苗族自治县',3,530128),(2681,301,'寻甸回族彝族自治县',3,530129),(2682,301,'安宁市',3,530181),(2683,302,'麒麟区',3,530302),(2684,302,'沾益区',3,530303),(2685,302,'马龙县',3,530321),(2686,302,'陆良县',3,530322),(2687,302,'师宗县',3,530323),(2688,302,'罗平县',3,530324),(2689,302,'富源县',3,530325),(2690,302,'会泽县',3,530326),(2691,302,'宣威市',3,530381),(2692,303,'红塔区',3,530402),(2693,303,'江川区',3,530403),(2694,303,'澄江县',3,530422),(2695,303,'通海县',3,530423),(2696,303,'华宁县',3,530424),(2697,303,'易门县',3,530425),(2698,303,'峨山彝族自治县',3,530426),(2699,303,'新平彝族傣族自治县',3,530427),(2700,303,'元江哈尼族彝族傣族自治县',3,530428),(2701,304,'隆阳区',3,530502),(2702,304,'施甸县',3,530521),(2703,304,'龙陵县',3,530523),(2704,304,'昌宁县',3,530524),(2705,304,'腾冲市',3,530581),(2706,305,'昭阳区',3,530602),(2707,305,'鲁甸县',3,530621),(2708,305,'巧家县',3,530622),(2709,305,'盐津县',3,530623),(2710,305,'大关县',3,530624),(2711,305,'永善县',3,530625),(2712,305,'绥江县',3,530626),(2713,305,'镇雄县',3,530627),(2714,305,'彝良县',3,530628),(2715,305,'威信县',3,530629),(2716,305,'水富县',3,530630),(2717,306,'古城区',3,530702),(2718,306,'玉龙纳西族自治县',3,530721),(2719,306,'永胜县',3,530722),(2720,306,'华坪县',3,530723),(2721,306,'宁蒗彝族自治县',3,530724),(2722,307,'思茅区',3,530802),(2723,307,'宁洱哈尼族彝族自治县',3,530821),(2724,307,'墨江哈尼族自治县',3,530822),(2725,307,'景东彝族自治县',3,530823),(2726,307,'景谷傣族彝族自治县',3,530824),(2727,307,'镇沅彝族哈尼族拉祜族自治县',3,530825),(2728,307,'江城哈尼族彝族自治县',3,530826),(2729,307,'孟连傣族拉祜族佤族自治县',3,530827),(2730,307,'澜沧拉祜族自治县',3,530828),(2731,307,'西盟佤族自治县',3,530829),(2732,308,'临翔区',3,530902),(2733,308,'凤庆县',3,530921),(2734,308,'云县',3,530922),(2735,308,'永德县',3,530923),(2736,308,'镇康县',3,530924),(2737,308,'双江拉祜族佤族布朗族傣族自治县',3,530925),(2738,308,'耿马傣族佤族自治县',3,530926),(2739,308,'沧源佤族自治县',3,530927),(2740,309,'楚雄市',3,532301),(2741,309,'双柏县',3,532322),(2742,309,'牟定县',3,532323),(2743,309,'南华县',3,532324),(2744,309,'姚安县',3,532325),(2745,309,'大姚县',3,532326),(2746,309,'永仁县',3,532327),(2747,309,'元谋县',3,532328),(2748,309,'武定县',3,532329),(2749,309,'禄丰县',3,532331),(2750,310,'个旧市',3,532501),(2751,310,'开远市',3,532502),(2752,310,'蒙自市',3,532503),(2753,310,'弥勒市',3,532504),(2754,310,'屏边苗族自治县',3,532523),(2755,310,'建水县',3,532524),(2756,310,'石屏县',3,532525),(2757,310,'泸西县',3,532527),(2758,310,'元阳县',3,532528),(2759,310,'红河县',3,532529),(2760,310,'金平苗族瑶族傣族自治县',3,532530),(2761,310,'绿春县',3,532531),(2762,310,'河口瑶族自治县',3,532532),(2763,311,'文山市',3,532601),(2764,311,'砚山县',3,532622),(2765,311,'西畴县',3,532623),(2766,311,'麻栗坡县',3,532624),(2767,311,'马关县',3,532625),(2768,311,'丘北县',3,532626),(2769,311,'广南县',3,532627),(2770,311,'富宁县',3,532628),(2771,312,'景洪市',3,532801),(2772,312,'勐海县',3,532822),(2773,312,'勐腊县',3,532823),(2774,313,'大理市',3,532901),(2775,313,'漾濞彝族自治县',3,532922),(2776,313,'祥云县',3,532923),(2777,313,'宾川县',3,532924),(2778,313,'弥渡县',3,532925),(2779,313,'南涧彝族自治县',3,532926),(2780,313,'巍山彝族回族自治县',3,532927),(2781,313,'永平县',3,532928),(2782,313,'云龙县',3,532929),(2783,313,'洱源县',3,532930),(2784,313,'剑川县',3,532931),(2785,313,'鹤庆县',3,532932),(2786,314,'瑞丽市',3,533102),(2787,314,'芒市',3,533103),(2788,314,'梁河县',3,533122),(2789,314,'盈江县',3,533123),(2790,314,'陇川县',3,533124),(2791,315,'泸水市',3,533301),(2792,315,'福贡县',3,533323),(2793,315,'贡山独龙族怒族自治县',3,533324),(2794,315,'兰坪白族普米族自治县',3,533325),(2795,316,'香格里拉市',3,533401),(2796,316,'德钦县',3,533422),(2797,316,'维西傈僳族自治县',3,533423),(2798,317,'城关区',3,540102),(2799,317,'堆龙德庆区',3,540103),(2800,317,'林周县',3,540121),(2801,317,'当雄县',3,540122),(2802,317,'尼木县',3,540123),(2803,317,'曲水县',3,540124),(2804,317,'达孜县',3,540126),(2805,317,'墨竹工卡县',3,540127),(2806,318,'桑珠孜区',3,540202),(2807,318,'南木林县',3,540221),(2808,318,'江孜县',3,540222),(2809,318,'定日县',3,540223),(2810,318,'萨迦县',3,540224),(2811,318,'拉孜县',3,540225),(2812,318,'昂仁县',3,540226),(2813,318,'谢通门县',3,540227),(2814,318,'白朗县',3,540228),(2815,318,'仁布县',3,540229),(2816,318,'康马县',3,540230),(2817,318,'定结县',3,540231),(2818,318,'仲巴县',3,540232),(2819,318,'亚东县',3,540233),(2820,318,'吉隆县',3,540234),(2821,318,'聂拉木县',3,540235),(2822,318,'萨嘎县',3,540236),(2823,318,'岗巴县',3,540237),(2824,319,'卡若区',3,540302),(2825,319,'江达县',3,540321),(2826,319,'贡觉县',3,540322),(2827,319,'类乌齐县',3,540323),(2828,319,'丁青县',3,540324),(2829,319,'察雅县',3,540325),(2830,319,'八宿县',3,540326),(2831,319,'左贡县',3,540327),(2832,319,'芒康县',3,540328),(2833,319,'洛隆县',3,540329),(2834,319,'边坝县',3,540330),(2835,320,'巴宜区',3,540402),(2836,320,'工布江达县',3,540421),(2837,320,'米林县',3,540422),(2838,320,'墨脱县',3,540423),(2839,320,'波密县',3,540424),(2840,320,'察隅县',3,540425),(2841,320,'朗县',3,540426),(2842,321,'乃东区',3,540502),(2843,321,'扎囊县',3,540521),(2844,321,'贡嘎县',3,540522),(2845,321,'桑日县',3,540523),(2846,321,'琼结县',3,540524),(2847,321,'曲松县',3,540525),(2848,321,'措美县',3,540526),(2849,321,'洛扎县',3,540527),(2850,321,'加查县',3,540528),(2851,321,'隆子县',3,540529),(2852,321,'错那县',3,540530),(2853,321,'浪卡子县',3,540531),(2854,322,'那曲县',3,542421),(2855,322,'嘉黎县',3,542422),(2856,322,'比如县',3,542423),(2857,322,'聂荣县',3,542424),(2858,322,'安多县',3,542425),(2859,322,'申扎县',3,542426),(2860,322,'索县',3,542427),(2861,322,'班戈县',3,542428),(2862,322,'巴青县',3,542429),(2863,322,'尼玛县',3,542430),(2864,322,'双湖县',3,542431),(2865,323,'普兰县',3,542521),(2866,323,'札达县',3,542522),(2867,323,'噶尔县',3,542523),(2868,323,'日土县',3,542524),(2869,323,'革吉县',3,542525),(2870,323,'改则县',3,542526),(2871,323,'措勤县',3,542527),(2872,324,'新城区',3,610102),(2873,324,'碑林区',3,610103),(2874,324,'莲湖区',3,610104),(2875,324,'灞桥区',3,610111),(2876,324,'未央区',3,610112),(2877,324,'雁塔区',3,610113),(2878,324,'阎良区',3,610114),(2879,324,'临潼区',3,610115),(2880,324,'长安区',3,610116),(2881,324,'高陵区',3,610117),(2882,324,'蓝田县',3,610122),(2883,324,'周至县',3,610124),(2884,324,'户县',3,610125),(2885,325,'王益区',3,610202),(2886,325,'印台区',3,610203),(2887,325,'耀州区',3,610204),(2888,325,'宜君县',3,610222),(2889,326,'渭滨区',3,610302),(2890,326,'金台区',3,610303),(2891,326,'陈仓区',3,610304),(2892,326,'凤翔县',3,610322),(2893,326,'岐山县',3,610323),(2894,326,'扶风县',3,610324),(2895,326,'眉县',3,610326),(2896,326,'陇县',3,610327),(2897,326,'千阳县',3,610328),(2898,326,'麟游县',3,610329),(2899,326,'凤县',3,610330),(2900,326,'太白县',3,610331),(2901,327,'秦都区',3,610402),(2902,327,'杨陵区',3,610403),(2903,327,'渭城区',3,610404),(2904,327,'三原县',3,610422),(2905,327,'泾阳县',3,610423),(2906,327,'乾县',3,610424),(2907,327,'礼泉县',3,610425),(2908,327,'永寿县',3,610426),(2909,327,'彬县',3,610427),(2910,327,'长武县',3,610428),(2911,327,'旬邑县',3,610429),(2912,327,'淳化县',3,610430),(2913,327,'武功县',3,610431),(2914,327,'兴平市',3,610481),(2915,328,'临渭区',3,610502),(2916,328,'华州区',3,610503),(2917,328,'潼关县',3,610522),(2918,328,'大荔县',3,610523),(2919,328,'合阳县',3,610524),(2920,328,'澄城县',3,610525),(2921,328,'蒲城县',3,610526),(2922,328,'白水县',3,610527),(2923,328,'富平县',3,610528),(2924,328,'韩城市',3,610581),(2925,328,'华阴市',3,610582),(2926,329,'宝塔区',3,610602),(2927,329,'安塞区',3,610603),(2928,329,'延长县',3,610621),(2929,329,'延川县',3,610622),(2930,329,'子长县',3,610623),(2931,329,'志丹县',3,610625),(2932,329,'吴起县',3,610626),(2933,329,'甘泉县',3,610627),(2934,329,'富县',3,610628),(2935,329,'洛川县',3,610629),(2936,329,'宜川县',3,610630),(2937,329,'黄龙县',3,610631),(2938,329,'黄陵县',3,610632),(2939,330,'汉台区',3,610702),(2940,330,'南郑县',3,610721),(2941,330,'城固县',3,610722),(2942,330,'洋县',3,610723),(2943,330,'西乡县',3,610724),(2944,330,'勉县',3,610725),(2945,330,'宁强县',3,610726),(2946,330,'略阳县',3,610727),(2947,330,'镇巴县',3,610728),(2948,330,'留坝县',3,610729),(2949,330,'佛坪县',3,610730),(2950,331,'榆阳区',3,610802),(2951,331,'横山区',3,610803),(2952,331,'神木县',3,610821),(2953,331,'府谷县',3,610822),(2954,331,'靖边县',3,610824),(2955,331,'定边县',3,610825),(2956,331,'绥德县',3,610826),(2957,331,'米脂县',3,610827),(2958,331,'佳县',3,610828),(2959,331,'吴堡县',3,610829),(2960,331,'清涧县',3,610830),(2961,331,'子洲县',3,610831),(2962,332,'汉滨区',3,610902),(2963,332,'汉阴县',3,610921),(2964,332,'石泉县',3,610922),(2965,332,'宁陕县',3,610923),(2966,332,'紫阳县',3,610924),(2967,332,'岚皋县',3,610925),(2968,332,'平利县',3,610926),(2969,332,'镇坪县',3,610927),(2970,332,'旬阳县',3,610928),(2971,332,'白河县',3,610929),(2972,333,'商州区',3,611002),(2973,333,'洛南县',3,611021),(2974,333,'丹凤县',3,611022),(2975,333,'商南县',3,611023),(2976,333,'山阳县',3,611024),(2977,333,'镇安县',3,611025),(2978,333,'柞水县',3,611026),(2979,334,'城关区',3,620102),(2980,334,'七里河区',3,620103),(2981,334,'西固区',3,620104),(2982,334,'安宁区',3,620105),(2983,334,'红古区',3,620111),(2984,334,'永登县',3,620121),(2985,334,'皋兰县',3,620122),(2986,334,'榆中县',3,620123),(2987,335,'嘉峪关市',3,620201),(2988,336,'金川区',3,620302),(2989,336,'永昌县',3,620321),(2990,337,'白银区',3,620402),(2991,337,'平川区',3,620403),(2992,337,'靖远县',3,620421),(2993,337,'会宁县',3,620422),(2994,337,'景泰县',3,620423),(2995,338,'秦州区',3,620502),(2996,338,'麦积区',3,620503),(2997,338,'清水县',3,620521),(2998,338,'秦安县',3,620522),(2999,338,'甘谷县',3,620523),(3000,338,'武山县',3,620524),(3001,338,'张家川回族自治县',3,620525),(3002,339,'凉州区',3,620602),(3003,339,'民勤县',3,620621),(3004,339,'古浪县',3,620622),(3005,339,'天祝藏族自治县',3,620623),(3006,340,'甘州区',3,620702),(3007,340,'肃南裕固族自治县',3,620721),(3008,340,'民乐县',3,620722),(3009,340,'临泽县',3,620723),(3010,340,'高台县',3,620724),(3011,340,'山丹县',3,620725),(3012,341,'崆峒区',3,620802),(3013,341,'泾川县',3,620821),(3014,341,'灵台县',3,620822),(3015,341,'崇信县',3,620823),(3016,341,'华亭县',3,620824),(3017,341,'庄浪县',3,620825),(3018,341,'静宁县',3,620826),(3019,342,'肃州区',3,620902),(3020,342,'金塔县',3,620921),(3021,342,'瓜州县',3,620922),(3022,342,'肃北蒙古族自治县',3,620923),(3023,342,'阿克塞哈萨克族自治县',3,620924),(3024,342,'玉门市',3,620981),(3025,342,'敦煌市',3,620982),(3026,343,'西峰区',3,621002),(3027,343,'庆城县',3,621021),(3028,343,'环县',3,621022),(3029,343,'华池县',3,621023),(3030,343,'合水县',3,621024),(3031,343,'正宁县',3,621025),(3032,343,'宁县',3,621026),(3033,343,'镇原县',3,621027),(3034,344,'安定区',3,621102),(3035,344,'通渭县',3,621121),(3036,344,'陇西县',3,621122),(3037,344,'渭源县',3,621123),(3038,344,'临洮县',3,621124),(3039,344,'漳县',3,621125),(3040,344,'岷县',3,621126),(3041,345,'武都区',3,621202),(3042,345,'成县',3,621221),(3043,345,'文县',3,621222),(3044,345,'宕昌县',3,621223),(3045,345,'康县',3,621224),(3046,345,'西和县',3,621225),(3047,345,'礼县',3,621226),(3048,345,'徽县',3,621227),(3049,345,'两当县',3,621228),(3050,346,'临夏市',3,622901),(3051,346,'临夏县',3,622921),(3052,346,'康乐县',3,622922),(3053,346,'永靖县',3,622923),(3054,346,'广河县',3,622924),(3055,346,'和政县',3,622925),(3056,346,'东乡族自治县',3,622926),(3057,346,'积石山保安族东乡族撒拉族自治县',3,622927),(3058,347,'合作市',3,623001),(3059,347,'临潭县',3,623021),(3060,347,'卓尼县',3,623022),(3061,347,'舟曲县',3,623023),(3062,347,'迭部县',3,623024),(3063,347,'玛曲县',3,623025),(3064,347,'碌曲县',3,623026),(3065,347,'夏河县',3,623027),(3066,348,'城东区',3,630102),(3067,348,'城中区',3,630103),(3068,348,'城西区',3,630104),(3069,348,'城北区',3,630105),(3070,348,'大通回族土族自治县',3,630121),(3071,348,'湟中县',3,630122),(3072,348,'湟源县',3,630123),(3073,349,'乐都区',3,630202),(3074,349,'平安区',3,630203),(3075,349,'民和回族土族自治县',3,630222),(3076,349,'互助土族自治县',3,630223),(3077,349,'化隆回族自治县',3,630224),(3078,349,'循化撒拉族自治县',3,630225),(3079,350,'门源回族自治县',3,632221),(3080,350,'祁连县',3,632222),(3081,350,'海晏县',3,632223),(3082,350,'刚察县',3,632224),(3083,351,'同仁县',3,632321),(3084,351,'尖扎县',3,632322),(3085,351,'泽库县',3,632323),(3086,351,'河南蒙古族自治县',3,632324),(3087,352,'共和县',3,632521),(3088,352,'同德县',3,632522),(3089,352,'贵德县',3,632523),(3090,352,'兴海县',3,632524),(3091,352,'贵南县',3,632525),(3092,353,'玛沁县',3,632621),(3093,353,'班玛县',3,632622),(3094,353,'甘德县',3,632623),(3095,353,'达日县',3,632624),(3096,353,'久治县',3,632625),(3097,353,'玛多县',3,632626),(3098,354,'玉树市',3,632701),(3099,354,'杂多县',3,632722),(3100,354,'称多县',3,632723),(3101,354,'治多县',3,632724),(3102,354,'囊谦县',3,632725),(3103,354,'曲麻莱县',3,632726),(3104,355,'格尔木市',3,632801),(3105,355,'德令哈市',3,632802),(3106,355,'乌兰县',3,632821),(3107,355,'都兰县',3,632822),(3108,355,'天峻县',3,632823),(3109,356,'兴庆区',3,640104),(3110,356,'西夏区',3,640105),(3111,356,'金凤区',3,640106),(3112,356,'永宁县',3,640121),(3113,356,'贺兰县',3,640122),(3114,356,'灵武市',3,640181),(3115,357,'大武口区',3,640202),(3116,357,'惠农区',3,640205),(3117,357,'平罗县',3,640221),(3118,358,'利通区',3,640302),(3119,358,'红寺堡区',3,640303),(3120,358,'盐池县',3,640323),(3121,358,'同心县',3,640324),(3122,358,'青铜峡市',3,640381),(3123,359,'原州区',3,640402),(3124,359,'西吉县',3,640422),(3125,359,'隆德县',3,640423),(3126,359,'泾源县',3,640424),(3127,359,'彭阳县',3,640425),(3128,360,'沙坡头区',3,640502),(3129,360,'中宁县',3,640521),(3130,360,'海原县',3,640522),(3131,361,'天山区',3,650102),(3132,361,'沙依巴克区',3,650103),(3133,361,'新市区',3,650104),(3134,361,'水磨沟区',3,650105),(3135,361,'头屯河区',3,650106),(3136,361,'达坂城区',3,650107),(3137,361,'米东区',3,650109),(3138,361,'乌鲁木齐县',3,650121),(3139,362,'独山子区',3,650202),(3140,362,'克拉玛依区',3,650203),(3141,362,'白碱滩区',3,650204),(3142,362,'乌尔禾区',3,650205),(3143,363,'高昌区',3,650402),(3144,363,'鄯善县',3,650421),(3145,363,'托克逊县',3,650422),(3146,364,'伊州区',3,650502),(3147,364,'巴里坤哈萨克自治县',3,650521),(3148,364,'伊吾县',3,650522),(3149,365,'昌吉市',3,652301),(3150,365,'阜康市',3,652302),(3151,365,'呼图壁县',3,652323),(3152,365,'玛纳斯县',3,652324),(3153,365,'奇台县',3,652325),(3154,365,'吉木萨尔县',3,652327),(3155,365,'木垒哈萨克自治县',3,652328),(3156,366,'博乐市',3,652701),(3157,366,'阿拉山口市',3,652702),(3158,366,'精河县',3,652722),(3159,366,'温泉县',3,652723),(3160,367,'库尔勒市',3,652801),(3161,367,'轮台县',3,652822),(3162,367,'尉犁县',3,652823),(3163,367,'若羌县',3,652824),(3164,367,'且末县',3,652825),(3165,367,'焉耆回族自治县',3,652826),(3166,367,'和静县',3,652827),(3167,367,'和硕县',3,652828),(3168,367,'博湖县',3,652829),(3169,368,'阿克苏市',3,652901),(3170,368,'温宿县',3,652922),(3171,368,'库车县',3,652923),(3172,368,'沙雅县',3,652924),(3173,368,'新和县',3,652925),(3174,368,'拜城县',3,652926),(3175,368,'乌什县',3,652927),(3176,368,'阿瓦提县',3,652928),(3177,368,'柯坪县',3,652929),(3178,369,'阿图什市',3,653001),(3179,369,'阿克陶县',3,653022),(3180,369,'阿合奇县',3,653023),(3181,369,'乌恰县',3,653024),(3182,370,'喀什市',3,653101),(3183,370,'疏附县',3,653121),(3184,370,'疏勒县',3,653122),(3185,370,'英吉沙县',3,653123),(3186,370,'泽普县',3,653124),(3187,370,'莎车县',3,653125),(3188,370,'叶城县',3,653126),(3189,370,'麦盖提县',3,653127),(3190,370,'岳普湖县',3,653128),(3191,370,'伽师县',3,653129),(3192,370,'巴楚县',3,653130),(3193,370,'塔什库尔干塔吉克自治县',3,653131),(3194,371,'和田市',3,653201),(3195,371,'和田县',3,653221),(3196,371,'墨玉县',3,653222),(3197,371,'皮山县',3,653223),(3198,371,'洛浦县',3,653224),(3199,371,'策勒县',3,653225),(3200,371,'于田县',3,653226),(3201,371,'民丰县',3,653227),(3202,372,'伊宁市',3,654002),(3203,372,'奎屯市',3,654003),(3204,372,'霍尔果斯市',3,654004),(3205,372,'伊宁县',3,654021),(3206,372,'察布查尔锡伯自治县',3,654022),(3207,372,'霍城县',3,654023),(3208,372,'巩留县',3,654024),(3209,372,'新源县',3,654025),(3210,372,'昭苏县',3,654026),(3211,372,'特克斯县',3,654027),(3212,372,'尼勒克县',3,654028),(3213,373,'塔城市',3,654201),(3214,373,'乌苏市',3,654202),(3215,373,'额敏县',3,654221),(3216,373,'沙湾县',3,654223),(3217,373,'托里县',3,654224),(3218,373,'裕民县',3,654225),(3219,373,'和布克赛尔蒙古自治县',3,654226),(3220,374,'阿勒泰市',3,654301),(3221,374,'布尔津县',3,654321),(3222,374,'富蕴县',3,654322),(3223,374,'福海县',3,654323),(3224,374,'哈巴河县',3,654324),(3225,374,'青河县',3,654325),(3226,374,'吉木乃县',3,654326),(3227,375,'石河子市',3,659001),(3228,375,'阿拉尔市',3,659002),(3229,375,'图木舒克市',3,659003),(3230,375,'五家渠市',3,659004),(3231,375,'铁门关市',3,659006);
/*!40000 ALTER TABLE `ax_region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ax_role`
--

DROP TABLE IF EXISTS `ax_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ax_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(63) NOT NULL COMMENT '角色名称',
  `desc` varchar(1023) DEFAULT NULL COMMENT '角色描述',
  `enabled` tinyint(1) DEFAULT '1' COMMENT '是否启用',
  `add_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `deleted` tinyint(1) DEFAULT '0' COMMENT '逻辑删除',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COMMENT='角色表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ax_role`
--

LOCK TABLES `ax_role` WRITE;
/*!40000 ALTER TABLE `ax_role` DISABLE KEYS */;
INSERT INTO `ax_role` VALUES (1,'超级管理员','所有模块的权限',1,'2019-01-01 00:00:00','2019-01-01 00:00:00',0),(2,'商场管理员','只有商场模块的操作权限',1,'2019-01-01 00:00:00','2019-01-07 15:15:12',0),(3,'推广管理员','只有推广模块的操作权限',1,'2019-01-01 00:00:00','2019-01-07 15:15:24',0);
/*!40000 ALTER TABLE `ax_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ax_search_history`
--

DROP TABLE IF EXISTS `ax_search_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ax_search_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户表的用户ID',
  `keyword` varchar(63) NOT NULL COMMENT '搜索关键字',
  `from` varchar(63) NOT NULL DEFAULT '' COMMENT '搜索来源，如pc、wx、app',
  `add_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `deleted` tinyint(1) DEFAULT '0' COMMENT '逻辑删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='搜索历史表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ax_search_history`
--

LOCK TABLES `ax_search_history` WRITE;
/*!40000 ALTER TABLE `ax_search_history` DISABLE KEYS */;
INSERT INTO `ax_search_history` VALUES (1,1,'67815','wx','2019-09-29 16:32:20','2019-09-29 16:32:20',0),(2,1,'67815','wx','2019-09-29 16:39:24','2019-09-29 16:39:24',0);
/*!40000 ALTER TABLE `ax_search_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ax_storage`
--

DROP TABLE IF EXISTS `ax_storage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ax_storage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(63) NOT NULL COMMENT '文件的唯一索引',
  `name` varchar(255) NOT NULL COMMENT '文件名',
  `type` varchar(20) NOT NULL COMMENT '文件类型',
  `size` int(11) NOT NULL COMMENT '文件大小',
  `url` varchar(255) DEFAULT NULL COMMENT '文件访问链接',
  `add_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `deleted` tinyint(1) DEFAULT '0' COMMENT '逻辑删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COMMENT='文件存储表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ax_storage`
--

LOCK TABLES `ax_storage` WRITE;
/*!40000 ALTER TABLE `ax_storage` DISABLE KEYS */;
INSERT INTO `ax_storage` VALUES (1,'l9nmi2pz702q6fdderqj.jpg','11.jpg','image/jpeg',30890,'http://localhost:8080/wx/storage/fetch/l9nmi2pz702q6fdderqj.jpg','2019-09-26 17:01:42','2019-09-26 17:01:42',0),(2,'xjssf03b2va2vj67d3ne.jpg','11.jpg','image/jpeg',30890,'http://localhost:8080/wx/storage/fetch/xjssf03b2va2vj67d3ne.jpg','2019-09-26 17:02:06','2019-09-26 17:02:06',0),(3,'wpuvr7zpsahpoqqkskrs.jpg','11.jpg','image/jpeg',30890,'http://localhost:8080/wx/storage/fetch/wpuvr7zpsahpoqqkskrs.jpg','2019-09-26 17:02:10','2019-09-26 17:02:10',0),(4,'eigz6xhvseu5eg3kn1jd.jpg','11.jpg','image/jpeg',30890,'http://localhost:8080/wx/storage/fetch/eigz6xhvseu5eg3kn1jd.jpg','2019-09-26 17:02:59','2019-09-26 17:02:59',0),(5,'iu5qi3c1wx319c4sp3hm.jpg','11.jpg','image/jpeg',30890,'http://localhost:8080/wx/storage/fetch/iu5qi3c1wx319c4sp3hm.jpg','2019-09-26 17:04:12','2019-09-26 17:04:12',0),(6,'9y9j40y7m0yhrz6zed6a.jpg','11.jpg','image/jpeg',30890,'http://localhost:8080/wx/storage/fetch/9y9j40y7m0yhrz6zed6a.jpg','2019-09-26 17:04:16','2019-09-26 17:04:16',0),(7,'ov2guofj67sng9cnkmh3.jpg','11.jpg','image/jpeg',30890,'http://localhost:8080/wx/storage/fetch/ov2guofj67sng9cnkmh3.jpg','2019-09-26 17:04:42','2019-09-26 17:04:42',0),(8,'ztypc86cuc1g6qu0ktmo.jpg','11.jpg','image/jpeg',30890,'http://localhost:8080/wx/storage/fetch/ztypc86cuc1g6qu0ktmo.jpg','2019-09-26 17:04:45','2019-09-26 17:04:45',0),(9,'roho3qleyqaz36vnkfcg.jpg','11.jpg','image/jpeg',30890,'http://localhost:8080/wx/storage/fetch/roho3qleyqaz36vnkfcg.jpg','2019-09-26 17:05:32','2019-09-26 17:05:32',0),(10,'z7a7nni9iav2pafgsyj0.jpg','11.jpg','image/jpeg',30890,'http://localhost:8080/wx/storage/fetch/z7a7nni9iav2pafgsyj0.jpg','2019-09-26 17:07:10','2019-09-26 17:07:10',0),(11,'faq6qoim4klnee18eot3.jpg','11.jpg','image/jpeg',30890,'http://localhost:8080/wx/storage/fetch/faq6qoim4klnee18eot3.jpg','2019-09-26 17:09:16','2019-09-26 17:09:16',0),(12,'embvraefwkqaxlayqu4v.jpg','11.jpg','image/jpeg',30890,'http://localhost:8080/wx/storage/fetch/embvraefwkqaxlayqu4v.jpg','2019-09-26 17:09:23','2019-09-26 17:09:23',0),(13,'qil2z0m26qka5g4oam0e.jpg','11.jpg','image/jpeg',30890,'http://localhost:8080/wx/storage/fetch/qil2z0m26qka5g4oam0e.jpg','2019-09-26 17:09:35','2019-09-26 17:09:35',0),(14,'i0cjuj49bmji2mstr51c.jpg','11.jpg','image/jpeg',30890,'http://localhost:8080/wx/storage/fetch/i0cjuj49bmji2mstr51c.jpg','2019-09-26 17:09:45','2019-09-26 17:09:45',0),(15,'m3vaq0jpkuzrgoetppvf.jpg','48.jpg','image/jpeg',25069,'http://localhost:8080/wx/storage/fetch/m3vaq0jpkuzrgoetppvf.jpg','2019-09-26 17:09:49','2019-09-26 17:09:49',0),(16,'n5ya3f8776kavbilzf6n.jpg','11.jpg','image/jpeg',30890,'http://localhost:8080/wx/storage/fetch/n5ya3f8776kavbilzf6n.jpg','2019-09-26 17:09:53','2019-09-26 17:09:53',0),(17,'hfow07sxr5cfhh87ror8.jpg','11.jpg','image/jpeg',30890,'http://localhost:8080/wx/storage/fetch/hfow07sxr5cfhh87ror8.jpg','2019-09-26 17:10:15','2019-09-26 17:10:15',0),(18,'gxraeuik7vunlhn0l8eh.jpg','11.jpg','image/jpeg',30890,'http://localhost:8080/wx/storage/fetch/gxraeuik7vunlhn0l8eh.jpg','2019-09-26 17:14:34','2019-09-26 17:14:34',0),(19,'rqjh4f9wj0qkfs7nn4f6.jpg','11.jpg','image/jpeg',30890,'http://localhost:8080/wx/storage/fetch/rqjh4f9wj0qkfs7nn4f6.jpg','2019-09-29 10:22:19','2019-09-29 10:22:19',0);
/*!40000 ALTER TABLE `ax_storage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ax_system`
--

DROP TABLE IF EXISTS `ax_system`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ax_system` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key_name` varchar(255) NOT NULL COMMENT '系统配置名',
  `key_value` varchar(255) NOT NULL COMMENT '系统配置值',
  `add_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `deleted` tinyint(1) DEFAULT '0' COMMENT '逻辑删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='系统配置表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ax_system`
--

LOCK TABLES `ax_system` WRITE;
/*!40000 ALTER TABLE `ax_system` DISABLE KEYS */;
INSERT INTO `ax_system` VALUES (1,'ax_wx_catlog_goods','4','2019-09-26 16:56:42','2019-09-26 16:56:42',0),(2,'ax_wx_index_topic','4','2019-09-26 16:56:43','2019-09-26 16:56:43',0),(3,'ax_mall_qq','553286301','2019-09-26 16:56:43','2019-09-26 17:18:20',0),(4,'ax_order_unconfirm','7','2019-09-26 16:56:43','2019-09-26 16:56:43',0),(5,'ax_wx_index_brand','4','2019-09-26 16:56:43','2019-09-26 16:56:43',0),(6,'ax_wx_index_hot','6','2019-09-26 16:56:43','2019-09-26 16:56:43',0),(7,'ax_order_comment','7','2019-09-26 16:56:43','2019-09-26 16:56:43',0),(8,'ax_mall_address','上海','2019-09-26 16:56:43','2019-09-26 17:18:19',0),(9,'ax_wx_index_new','6','2019-09-26 16:56:43','2019-09-26 16:56:43',0),(10,'ax_order_unpaid','30','2019-09-26 16:56:43','2019-09-26 16:56:43',0),(11,'ax_wx_share','false','2019-09-26 16:56:43','2019-09-26 16:56:43',0),(12,'ax_mall_name','ax','2019-09-26 16:56:43','2019-09-26 17:18:20',0),(13,'ax_wx_catlog_list','4','2019-09-26 16:56:43','2019-09-26 16:56:43',0),(14,'ax_express_freight_value','8','2019-09-26 16:56:44','2019-09-26 17:17:53',0),(15,'ax_express_freight_min','10','2019-09-26 16:56:44','2019-09-26 17:17:54',0),(16,'ax_mall_phone','021-xxxx-xxxx','2019-09-26 16:56:44','2019-09-26 17:18:20',0);
/*!40000 ALTER TABLE `ax_system` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ax_topic`
--

DROP TABLE IF EXISTS `ax_topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ax_topic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '''' COMMENT '专题标题',
  `subtitle` varchar(255) DEFAULT '''' COMMENT '专题子标题',
  `content` text COMMENT '专题内容，富文本格式',
  `price` decimal(10,2) DEFAULT '0.00' COMMENT '专题相关商品最低价',
  `read_count` varchar(255) DEFAULT '1k' COMMENT '专题阅读量',
  `pic_url` varchar(255) DEFAULT '' COMMENT '专题图片',
  `sort_order` int(11) DEFAULT '100' COMMENT '排序',
  `goods` varchar(1023) DEFAULT '' COMMENT '专题相关商品，采用JSON数组格式',
  `add_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `deleted` tinyint(1) DEFAULT '0' COMMENT '逻辑删除',
  PRIMARY KEY (`id`),
  KEY `topic_id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=320 DEFAULT CHARSET=utf8mb4 COMMENT='专题表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ax_topic`
--

LOCK TABLES `ax_topic` WRITE;
/*!40000 ALTER TABLE `ax_topic` DISABLE KEYS */;
INSERT INTO `ax_topic` VALUES (319,'测试专题','测试子专题','<p>测试内容</p>',0.01,'1k','http://localhost:8080/wx/storage/fetch/gxraeuik7vunlhn0l8eh.jpg',100,'[1181004]','2019-09-26 17:15:03','2019-09-26 17:15:03',0);
/*!40000 ALTER TABLE `ax_topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ax_user`
--

DROP TABLE IF EXISTS `ax_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ax_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(63) NOT NULL COMMENT '用户名称',
  `password` varchar(63) NOT NULL DEFAULT '' COMMENT '用户密码',
  `gender` tinyint(3) NOT NULL DEFAULT '0' COMMENT '性别：0 未知， 1男， 1 女',
  `birthday` date DEFAULT NULL COMMENT '生日',
  `last_login_time` datetime DEFAULT NULL COMMENT '最近一次登录时间',
  `last_login_ip` varchar(63) NOT NULL DEFAULT '' COMMENT '最近一次登录IP地址',
  `user_level` tinyint(3) DEFAULT '0' COMMENT '0 普通用户，1 VIP用户，2 高级VIP用户',
  `nickname` varchar(63) NOT NULL DEFAULT '' COMMENT '用户昵称或网络名称',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '用户手机号码',
  `avatar` varchar(255) NOT NULL DEFAULT '' COMMENT '用户头像图片',
  `weixin_openid` varchar(63) NOT NULL DEFAULT '' COMMENT '微信登录openid',
  `session_key` varchar(100) NOT NULL DEFAULT '' COMMENT '微信登录会话KEY',
  `status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0 可用, 1 禁用, 2 注销',
  `add_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `deleted` tinyint(1) DEFAULT '0' COMMENT '逻辑删除',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_name` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ax_user`
--

LOCK TABLES `ax_user` WRITE;
/*!40000 ALTER TABLE `ax_user` DISABLE KEYS */;
INSERT INTO `ax_user` VALUES (1,'user123','$2a$10$lTu9qi0hr19OC800Db.eludFr0AXuJUSrMHi/iPYhKRlPFeqJxlye',1,NULL,'2019-09-29 14:41:49','0:0:0:0:0:0:0:1',0,'user123','','','','',0,'2019-04-20 22:17:43','2019-09-29 14:41:49',0);
/*!40000 ALTER TABLE `ax_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ax_user_formid`
--

DROP TABLE IF EXISTS `ax_user_formid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ax_user_formid` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `formId` varchar(63) NOT NULL COMMENT '缓存的FormId',
  `isprepay` tinyint(1) NOT NULL COMMENT '是FormId还是prepayId',
  `useAmount` int(2) NOT NULL COMMENT '可用次数，fromId为1，prepay为3，用1次减1',
  `expire_time` datetime NOT NULL COMMENT '过期时间，腾讯规定为7天',
  `openId` varchar(63) NOT NULL COMMENT '微信登录openid',
  `add_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `deleted` tinyint(1) DEFAULT '0' COMMENT '逻辑删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ax_user_formid`
--

LOCK TABLES `ax_user_formid` WRITE;
/*!40000 ALTER TABLE `ax_user_formid` DISABLE KEYS */;
/*!40000 ALTER TABLE `ax_user_formid` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-29 16:41:25
