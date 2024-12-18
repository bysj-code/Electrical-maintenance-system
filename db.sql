/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - diqnqiweixiuxitong
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`diqnqiweixiuxitong` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `diqnqiweixiuxitong`;

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '提问用户',
  `chat_issue` varchar(200) DEFAULT NULL COMMENT '问题',
  `issue_time` timestamp NULL DEFAULT NULL COMMENT '问题时间 Search111',
  `chat_reply` varchar(200) DEFAULT NULL COMMENT '回复',
  `reply_time` timestamp NULL DEFAULT NULL COMMENT '回复时间 Search111',
  `zhuangtai_types` int(255) DEFAULT NULL COMMENT '状态',
  `chat_types` int(11) DEFAULT NULL COMMENT '数据类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='客服聊天';

/*Data for the table `chat` */

insert  into `chat`(`id`,`yonghu_id`,`chat_issue`,`issue_time`,`chat_reply`,`reply_time`,`zhuangtai_types`,`chat_types`,`insert_time`) values (1,1,'1111',NULL,NULL,NULL,1,1,'2023-03-11 13:36:10'),(2,4,'2222',NULL,NULL,NULL,2,1,'2023-03-11 14:36:16'),(3,4,NULL,NULL,'灌灌灌灌','2023-03-11 14:44:19',NULL,2,'2023-03-11 14:44:20');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1111','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2023-03-11 13:23:50'),(2,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2023-03-11 13:23:50'),(3,'sex_types','性别类型',1,'男',NULL,NULL,'2023-03-11 13:23:50'),(4,'sex_types','性别类型',2,'女',NULL,NULL,'2023-03-11 13:23:50'),(5,'news_types','新闻类型',1,'新闻类型1',NULL,NULL,'2023-03-11 13:23:50'),(6,'news_types','新闻类型',2,'新闻类型2',NULL,NULL,'2023-03-11 13:23:50'),(7,'chat_types','数据类型',1,'问题',NULL,NULL,'2023-03-11 13:23:51'),(8,'chat_types','数据类型',2,'回复',NULL,NULL,'2023-03-11 13:23:51'),(9,'zhuangtai_types','状态',1,'未回复',NULL,NULL,'2023-03-11 13:23:51'),(10,'zhuangtai_types','状态',2,'已回复',NULL,NULL,'2023-03-11 13:23:51'),(11,'weixiuyuyue_types','物品维修类型',1,'物品维修类型1',NULL,NULL,'2023-03-11 13:23:51'),(12,'weixiuyuyue_types','物品维修类型',2,'物品维修类型2',NULL,NULL,'2023-03-11 13:23:51'),(13,'weixiuyuyue_types','物品维修类型',3,'物品维修类型3',NULL,NULL,'2023-03-11 13:23:51'),(14,'weixiuyuyue_types','物品维修类型',4,'物品维修类型4',NULL,NULL,'2023-03-11 13:23:51'),(15,'weixiuyuyue_yesno_types','预约状态',1,'待审核',NULL,NULL,'2023-03-11 13:23:51'),(16,'weixiuyuyue_yesno_types','预约状态',2,'同意',NULL,NULL,'2023-03-11 13:23:51'),(17,'weixiuyuyue_yesno_types','预约状态',3,'拒绝',NULL,NULL,'2023-03-11 13:23:51'),(18,'weixiudingdan_types','维修状态',1,'已录入',NULL,NULL,'2023-03-11 13:23:51'),(19,'weixiudingdan_types','维修状态',2,'已维修',NULL,NULL,'2023-03-11 13:23:51'),(20,'weixiudingdan_types','维修状态',3,'已支付',NULL,NULL,'2023-03-11 13:23:51'),(21,'weixiuyuyue_types','物品维修类型',5,'物品维修类型5',NULL,'','2023-03-11 14:44:32');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` text COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','upload/gonggao1.jpg',1,'2023-03-11 13:24:34','公告详情1','2023-03-11 13:24:34'),(2,'公告名称2','upload/gonggao2.jpg',1,'2023-03-11 13:24:34','公告详情2','2023-03-11 13:24:34'),(3,'公告名称3','upload/gonggao3.jpg',2,'2023-03-11 13:24:34','公告详情3','2023-03-11 13:24:34'),(4,'公告名称4','upload/gonggao4.jpg',1,'2023-03-11 13:24:34','公告详情4','2023-03-11 13:24:34'),(5,'公告名称5','upload/gonggao5.jpg',2,'2023-03-11 13:24:34','公告详情5','2023-03-11 13:24:34'),(6,'公告名称6','upload/gonggao6.jpg',2,'2023-03-11 13:24:34','公告详情6','2023-03-11 13:24:34'),(7,'公告名称7','upload/gonggao7.jpg',2,'2023-03-11 13:24:34','公告详情7','2023-03-11 13:24:34'),(8,'公告名称8','upload/gonggao8.jpg',1,'2023-03-11 13:24:34','公告详情8','2023-03-11 13:24:34'),(9,'公告名称9','upload/gonggao9.jpg',1,'2023-03-11 13:24:34','公告详情9','2023-03-11 13:24:34'),(10,'公告名称10','upload/gonggao10.jpg',2,'2023-03-11 13:24:34','公告详情10','2023-03-11 13:24:34'),(11,'公告名称11','upload/gonggao11.jpg',2,'2023-03-11 13:24:34','公告详情11','2023-03-11 13:24:34'),(12,'公告名称12','upload/gonggao12.jpg',1,'2023-03-11 13:24:34','公告详情12','2023-03-11 13:24:34'),(13,'公告名称13','upload/gonggao13.jpg',2,'2023-03-11 13:24:34','公告详情13','2023-03-11 13:24:34'),(14,'公告名称14','upload/gonggao14.jpg',2,'2023-03-11 13:24:34','公告详情14','2023-03-11 13:24:34');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `news_name` varchar(200) DEFAULT NULL COMMENT '新闻名称 Search111  ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '新闻图片 ',
  `news_types` int(11) NOT NULL COMMENT '新闻类型 Search111  ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '新闻发布时间 ',
  `news_content` text COMMENT '新闻详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='新闻信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_photo`,`news_types`,`insert_time`,`news_content`,`create_time`) values (1,'新闻名称1','upload/news1.jpg',1,'2023-03-11 13:24:34','新闻详情1','2023-03-11 13:24:34'),(2,'新闻名称2','upload/news2.jpg',2,'2023-03-11 13:24:34','新闻详情2','2023-03-11 13:24:34'),(3,'新闻名称3','upload/news3.jpg',2,'2023-03-11 13:24:34','新闻详情3','2023-03-11 13:24:34'),(4,'新闻名称4','upload/news4.jpg',2,'2023-03-11 13:24:34','新闻详情4','2023-03-11 13:24:34'),(5,'新闻名称5','upload/news5.jpg',2,'2023-03-11 13:24:34','新闻详情5','2023-03-11 13:24:34'),(6,'新闻名称6','upload/news6.jpg',1,'2023-03-11 13:24:34','新闻详情6','2023-03-11 13:24:34'),(7,'新闻名称7','upload/news7.jpg',2,'2023-03-11 13:24:34','新闻详情7','2023-03-11 13:24:34'),(8,'新闻名称8','upload/news8.jpg',1,'2023-03-11 13:24:34','新闻详情8','2023-03-11 13:24:34'),(9,'新闻名称9','upload/news9.jpg',1,'2023-03-11 13:24:34','新闻详情9','2023-03-11 13:24:34'),(10,'新闻名称10','upload/news10.jpg',2,'2023-03-11 13:24:34','新闻详情10','2023-03-11 13:24:34'),(11,'新闻名称11','upload/news11.jpg',1,'2023-03-11 13:24:34','新闻详情11','2023-03-11 13:24:34'),(12,'新闻名称12','upload/news12.jpg',2,'2023-03-11 13:24:34','新闻详情12','2023-03-11 13:24:34'),(13,'新闻名称13','upload/news13.jpg',2,'2023-03-11 13:24:34','新闻详情13','2023-03-11 13:24:34'),(14,'新闻名称14','upload/news14.jpg',2,'2023-03-11 13:24:34','新闻详情14','2023-03-11 13:24:34');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '学生id',
  `username` varchar(100) NOT NULL COMMENT '学生名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','yonghu','用户','kcfyy1r3atoufcz90o68zx47wiolw22n','2023-03-11 13:35:49','2023-03-11 15:40:44'),(2,1,'admin','users','管理员','10cjmnxdd9ic0142rub1nf5e5qo2yxvt','2023-03-11 14:18:32','2023-03-11 15:51:02'),(3,1,'a1','weixiuyuan','维修员','3r0bjsh2hbylu6xydt4k2xkpbdey2w28','2023-03-11 14:28:08','2023-03-11 15:43:02'),(4,4,'a5','yonghu','用户','dyzg8oictswbvoq334fz8snbbxat6vhi','2023-03-11 14:35:39','2023-03-11 15:40:08');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '学生名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-03-11 13:23:50');

/*Table structure for table `weixiudingdan` */

DROP TABLE IF EXISTS `weixiudingdan`;

CREATE TABLE `weixiudingdan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `weixiuyuan_id` int(11) DEFAULT NULL COMMENT '维修员',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `weixiudingdan_uuid_number` varchar(200) DEFAULT NULL COMMENT '维修编号',
  `weixiudingdan_name` varchar(200) DEFAULT NULL COMMENT '物品名称  Search111 ',
  `weixiudingdan_photo` varchar(200) DEFAULT NULL COMMENT '物品照片',
  `weixiuyuyue_types` int(11) DEFAULT NULL COMMENT '维修类型 Search111',
  `weixiudingdan_baojia` decimal(10,2) DEFAULT NULL COMMENT '维修价格',
  `yuyue_time` timestamp NULL DEFAULT NULL COMMENT '维修时间',
  `weixiudingdan_content` text COMMENT '维修内容',
  `weixiudingdan_types` int(11) DEFAULT NULL COMMENT '维修状态 Search111',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='物品维修订单';

/*Data for the table `weixiudingdan` */

insert  into `weixiudingdan`(`id`,`weixiuyuan_id`,`yonghu_id`,`weixiudingdan_uuid_number`,`weixiudingdan_name`,`weixiudingdan_photo`,`weixiuyuyue_types`,`weixiudingdan_baojia`,`yuyue_time`,`weixiudingdan_content`,`weixiudingdan_types`,`insert_time`,`create_time`) values (1,1,2,'1678512274195','物品名称1','upload/weixiudingdan1.jpg',1,'580.77','2023-03-11 13:24:34','维修内容1',1,'2023-03-11 13:24:34','2023-03-11 13:24:34'),(2,1,3,'1678512274160','物品名称2','upload/weixiudingdan2.jpg',4,'128.55','2023-03-11 13:24:34','维修内容2',1,'2023-03-11 13:24:34','2023-03-11 13:24:34'),(3,1,3,'1678512274196','物品名称3','upload/weixiudingdan3.jpg',1,'177.95','2023-03-11 13:24:34','维修内容3',1,'2023-03-11 13:24:34','2023-03-11 13:24:34'),(4,3,1,'1678512274175','物品名称4','upload/weixiudingdan4.jpg',3,'199.89','2023-03-11 13:24:34','维修内容4',1,'2023-03-11 13:24:34','2023-03-11 13:24:34'),(5,1,1,'1678512274157','物品名称5','upload/weixiudingdan5.jpg',3,'794.59','2023-03-11 13:24:34','维修内容5',2,'2023-03-11 13:24:34','2023-03-11 13:24:34'),(6,3,1,'1678512274171','物品名称6','upload/weixiudingdan6.jpg',2,'430.46','2023-03-11 13:24:34','维修内容6',1,'2023-03-11 13:24:34','2023-03-11 13:24:34'),(7,1,1,'1678512274139','物品名称7','upload/weixiudingdan7.jpg',4,'162.98','2023-03-11 13:24:34','维修内容7',3,'2023-03-11 13:24:34','2023-03-11 13:24:34'),(8,3,3,'1678512274113','物品名称8','upload/weixiudingdan8.jpg',4,'453.72','2023-03-11 13:24:34','维修内容8',2,'2023-03-11 13:24:34','2023-03-11 13:24:34'),(9,1,2,'1678512274113','物品名称9','upload/weixiudingdan9.jpg',4,'91.43','2023-03-11 13:24:34','维修内容9',1,'2023-03-11 13:24:34','2023-03-11 13:24:34'),(10,1,2,'1678512274138','物品名称10','upload/weixiudingdan10.jpg',2,'725.84','2023-03-11 13:24:34','维修内容10',3,'2023-03-11 13:24:34','2023-03-11 13:24:34'),(11,3,2,'1678512274129','物品名称11','upload/weixiudingdan11.jpg',1,'821.80','2023-03-11 13:24:34','维修内容11',3,'2023-03-11 13:24:34','2023-03-11 13:24:34'),(12,3,1,'1678512274116','物品名称12','upload/weixiudingdan12.jpg',2,'573.63','2023-03-11 13:24:34','维修内容12',1,'2023-03-11 13:24:34','2023-03-11 13:24:34'),(13,2,1,'1678512274155','物品名称13','upload/weixiudingdan13.jpg',1,'757.09','2023-03-11 13:24:34','维修内容13',3,'2023-03-11 13:24:34','2023-03-11 13:24:34'),(14,2,1,'1678512274133','物品名称14','upload/weixiudingdan14.jpg',4,'91.28','2023-03-11 13:24:34','维修内容14',3,'2023-03-11 13:24:34','2023-03-11 13:24:34'),(15,1,1,'1678516299546','物品11','/upload/1678516312285.jpg',3,'300.00','2023-03-11 14:31:57','<p>哈根达斯公司</p>',3,'2023-03-11 14:32:00','2023-03-11 14:32:00'),(16,1,4,'1678517009156','物品1122','/upload/1678517019842.jpg',3,'33.90','2023-03-11 14:43:47','<p>供电公司根深蒂固</p>',2,'2023-03-11 14:43:49','2023-03-11 14:43:49');

/*Table structure for table `weixiuyuan` */

DROP TABLE IF EXISTS `weixiuyuan`;

CREATE TABLE `weixiuyuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `weixiuyuan_name` varchar(200) DEFAULT NULL COMMENT '维修员姓名 Search111 ',
  `weixiuyuan_phone` varchar(200) DEFAULT NULL COMMENT '维修员手机号',
  `weixiuyuan_id_number` varchar(200) DEFAULT NULL COMMENT '维修员身份证号',
  `weixiuyuan_photo` varchar(200) DEFAULT NULL COMMENT '维修员头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `weixiuyuan_email` varchar(200) DEFAULT NULL COMMENT '维修员邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='维修员';

/*Data for the table `weixiuyuan` */

insert  into `weixiuyuan`(`id`,`username`,`password`,`weixiuyuan_name`,`weixiuyuan_phone`,`weixiuyuan_id_number`,`weixiuyuan_photo`,`sex_types`,`weixiuyuan_email`,`create_time`) values (1,'a1','123456','维修员姓名1','17703786901','410224199010102001','upload/weixiuyuan1.jpg',1,'1@qq.com','2023-03-11 13:24:34'),(2,'a2','123456','维修员姓名2','17703786902','410224199010102002','upload/weixiuyuan2.jpg',1,'2@qq.com','2023-03-11 13:24:34'),(3,'a3','123456','维修员姓名3','17703786903','410224199010102003','upload/weixiuyuan3.jpg',1,'3@qq.com','2023-03-11 13:24:34');

/*Table structure for table `weixiuyuyue` */

DROP TABLE IF EXISTS `weixiuyuyue`;

CREATE TABLE `weixiuyuyue` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `weixiuyuan_id` int(11) DEFAULT NULL COMMENT '维修员',
  `weixiuyuyue_name` varchar(200) DEFAULT NULL COMMENT '物品名称  Search111 ',
  `weixiuyuyue_uuid_number` varchar(200) DEFAULT NULL COMMENT '预约编号',
  `weixiuyuyue_photo` varchar(200) DEFAULT NULL COMMENT '物品照片',
  `weixiuyuyue_types` int(11) DEFAULT NULL COMMENT '物品维修类型 Search111',
  `yuyue_time` timestamp NULL DEFAULT NULL COMMENT '预约维修时间',
  `weixiuyuyue_content` text COMMENT '物品损坏详情',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `weixiuyuyue_yesno_types` int(11) DEFAULT NULL COMMENT '预约状态 Search111',
  `weixiuyuyue_yesno_text` text COMMENT '审核意见',
  `weixiuyuyue_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='物品维修预约';

/*Data for the table `weixiuyuyue` */

insert  into `weixiuyuyue`(`id`,`yonghu_id`,`weixiuyuan_id`,`weixiuyuyue_name`,`weixiuyuyue_uuid_number`,`weixiuyuyue_photo`,`weixiuyuyue_types`,`yuyue_time`,`weixiuyuyue_content`,`insert_time`,`weixiuyuyue_yesno_types`,`weixiuyuyue_yesno_text`,`weixiuyuyue_shenhe_time`,`create_time`) values (1,2,1,'物品名称1','1678512274194','upload/weixiuyuyue1.jpg',4,'2023-03-11 13:24:34','物品损坏详情1','2023-03-11 13:24:34',1,NULL,NULL,'2023-03-11 13:24:34'),(2,1,3,'物品名称2','1678512274159','upload/weixiuyuyue2.jpg',4,'2023-03-11 13:24:34','物品损坏详情2','2023-03-11 13:24:34',1,NULL,NULL,'2023-03-11 13:24:34'),(3,2,3,'物品名称3','1678512274115','upload/weixiuyuyue3.jpg',4,'2023-03-11 13:24:34','物品损坏详情3','2023-03-11 13:24:34',1,NULL,NULL,'2023-03-11 13:24:34'),(4,1,2,'物品名称4','1678512274142','upload/weixiuyuyue4.jpg',2,'2023-03-11 13:24:34','物品损坏详情4','2023-03-11 13:24:34',1,NULL,NULL,'2023-03-11 13:24:34'),(5,3,2,'物品名称5','1678512274141','upload/weixiuyuyue5.jpg',4,'2023-03-11 13:24:34','物品损坏详情5','2023-03-11 13:24:34',1,NULL,NULL,'2023-03-11 13:24:34'),(6,2,3,'物品名称6','1678512274139','upload/weixiuyuyue6.jpg',2,'2023-03-11 13:24:34','物品损坏详情6','2023-03-11 13:24:34',1,NULL,NULL,'2023-03-11 13:24:34'),(7,3,2,'物品名称7','1678512274166','upload/weixiuyuyue7.jpg',1,'2023-03-11 13:24:34','物品损坏详情7','2023-03-11 13:24:34',1,NULL,NULL,'2023-03-11 13:24:34'),(8,1,1,'物品名称8','1678512274159','upload/weixiuyuyue8.jpg',2,'2023-03-11 13:24:34','物品损坏详情8','2023-03-11 13:24:34',1,NULL,NULL,'2023-03-11 13:24:34'),(9,2,3,'物品名称9','1678512274145','upload/weixiuyuyue9.jpg',3,'2023-03-11 13:24:34','物品损坏详情9','2023-03-11 13:24:34',1,NULL,NULL,'2023-03-11 13:24:34'),(10,3,1,'物品名称10','1678512274182','upload/weixiuyuyue10.jpg',1,'2023-03-11 13:24:34','物品损坏详情10','2023-03-11 13:24:34',1,NULL,NULL,'2023-03-11 13:24:34'),(11,1,3,'物品名称11','1678512274174','upload/weixiuyuyue11.jpg',2,'2023-03-11 13:24:34','物品损坏详情11','2023-03-11 13:24:34',1,NULL,NULL,'2023-03-11 13:24:34'),(12,1,2,'物品名称12','1678512274120','upload/weixiuyuyue12.jpg',3,'2023-03-11 13:24:34','物品损坏详情12','2023-03-11 13:24:34',1,NULL,NULL,'2023-03-11 13:24:34'),(13,1,3,'物品名称13','1678512274112','upload/weixiuyuyue13.jpg',2,'2023-03-11 13:24:34','物品损坏详情13','2023-03-11 13:24:34',1,NULL,NULL,'2023-03-11 13:24:34'),(14,2,2,'物品名称14','1678512274176','upload/weixiuyuyue14.jpg',3,'2023-03-11 13:24:34','物品损坏详情14','2023-03-11 13:24:34',1,NULL,NULL,'2023-03-11 13:24:34'),(15,1,1,'物品111','1678512979845','upload/1678513041579.jpg',2,'2023-12-01 00:09:00','司法所大大的','2023-03-11 13:37:41',2,'灌灌灌灌灌','2023-03-11 14:29:30','2023-03-11 13:37:41'),(16,1,1,'物品111','1678516883467','upload/1678516891258.jpg',3,'2023-09-27 04:01:00','广东省广东省固定事故','2023-03-11 14:41:47',2,'来吧,有时间','2023-03-11 14:43:23','2023-03-11 14:41:47');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`new_money`,`yonghu_email`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199010102001','upload/yonghu1.jpg',2,'9612.75','1@qq.com','2023-03-11 13:24:34'),(2,'a2','123456','用户姓名2','17703786902','410224199010102002','upload/yonghu2.jpg',1,'159.94','2@qq.com','2023-03-11 13:24:34'),(3,'a3','123456','用户姓名3','17703786903','410224199010102003','upload/yonghu3.jpg',2,'977.90','3@qq.com','2023-03-11 13:24:34'),(4,'a5','123456','张5','17788889999','410222477778888999','upload/1678516556379.jpg',2,'0.00','5@qq.com','2023-03-11 14:35:31');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
