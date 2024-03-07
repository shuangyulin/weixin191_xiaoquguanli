/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - xiaoquguanlixitong
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`xiaoquguanlixitong` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `xiaoquguanlixitong`;

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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='投诉建议';

/*Data for the table `chat` */

insert  into `chat`(`id`,`yonghu_id`,`chat_issue`,`issue_time`,`chat_reply`,`reply_time`,`zhuangtai_types`,`chat_types`,`insert_time`) values (3,1,'投诉信息',NULL,NULL,NULL,2,1,'2022-02-26 20:00:37'),(4,1,'投诉2',NULL,NULL,NULL,2,1,'2022-02-26 20:09:46'),(5,NULL,NULL,NULL,'回复1','2022-02-26 20:19:45',NULL,2,'2022-02-26 20:19:46'),(6,1,NULL,NULL,'回复2','2022-02-26 20:19:51',NULL,2,'2022-02-26 20:19:51'),(7,1,NULL,NULL,'回复1','2022-02-26 20:19:56',NULL,2,'2022-02-26 20:19:57'),(8,NULL,NULL,NULL,'回复3','2022-02-26 20:20:05',NULL,2,'2022-02-26 20:20:06'),(9,1,NULL,NULL,'回复3','2022-02-26 20:20:11',NULL,2,'2022-02-26 20:20:11');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/xiaoquguanlixitong/upload/config1.jpg'),(2,'轮播图2','http://localhost:8080/xiaoquguanlixitong/upload/config2.jpg'),(3,'轮播图3','http://localhost:8080/xiaoquguanlixitong/upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'ruzhudengji_types','入住房屋类型',1,'入住房屋类型1',NULL,NULL,'2022-02-26 17:51:55'),(2,'ruzhudengji_types','入住房屋类型',2,'入住房屋类型2',NULL,NULL,'2022-02-26 17:51:55'),(3,'ruzhudengji_types','入住房屋类型',3,'入住房屋类型3',NULL,NULL,'2022-02-26 17:51:55'),(4,'fangwuxinxi_types','房屋类型',1,'房屋类型1',NULL,NULL,'2022-02-26 17:51:55'),(5,'fangwuxinxi_types','房屋类型',2,'房屋类型2',NULL,NULL,'2022-02-26 17:51:55'),(6,'fangwuxinxi_types','房屋类型',3,'房屋类型3',NULL,NULL,'2022-02-26 17:51:55'),(7,'chat_types','数据类型',1,'问题',NULL,NULL,'2022-02-26 17:51:55'),(8,'chat_types','数据类型',2,'回复',NULL,NULL,'2022-02-26 17:51:55'),(9,'zhuangtai_types','状态',1,'未回复',NULL,NULL,'2022-02-26 17:51:55'),(10,'zhuangtai_types','状态',2,'已回复',NULL,NULL,'2022-02-26 17:51:55'),(11,'guzhangweixiu_yesno_types','审核状态',1,'未审核',NULL,NULL,'2022-02-26 17:51:55'),(12,'guzhangweixiu_yesno_types','审核状态',2,'通过',NULL,NULL,'2022-02-26 17:51:55'),(13,'guzhangweixiu_yesno_types','审核状态',3,'拒绝',NULL,NULL,'2022-02-26 17:51:55'),(14,'guzhangweixiu_types','设施类型',1,'设施类型1',NULL,NULL,'2022-02-26 17:51:55'),(15,'guzhangweixiu_types','设施类型',2,'设施类型2',NULL,NULL,'2022-02-26 17:51:55'),(16,'guzhangweixiu_types','设施类型',3,'设施类型3',NULL,NULL,'2022-02-26 17:51:55'),(17,'sex_types','性别',1,'男',NULL,NULL,'2022-02-26 17:51:55'),(18,'sex_types','性别',2,'女',NULL,NULL,'2022-02-26 17:51:55'),(19,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2022-02-26 17:51:56'),(20,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2022-02-26 17:51:56'),(21,'news_types','公告类型',3,'公告类型3',NULL,NULL,'2022-02-26 17:51:56');

/*Table structure for table `fangwuxinxi` */

DROP TABLE IF EXISTS `fangwuxinxi`;

CREATE TABLE `fangwuxinxi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `fangwuxinxi_name` varchar(200) DEFAULT NULL COMMENT '房屋名称 Search111',
  `fangwuxinxi_photo` varchar(200) DEFAULT NULL COMMENT '房屋图片',
  `fangwuxinxi_types` int(11) DEFAULT NULL COMMENT '房屋类型 Search111',
  `fangwuxinxi_size` varchar(200) DEFAULT NULL COMMENT '房屋大小',
  `fangwuxinxi_buju` varchar(200) DEFAULT NULL COMMENT '房屋布局',
  `fangwuxinxi_content` text COMMENT '详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='房屋信息';

/*Data for the table `fangwuxinxi` */

insert  into `fangwuxinxi`(`id`,`fangwuxinxi_name`,`fangwuxinxi_photo`,`fangwuxinxi_types`,`fangwuxinxi_size`,`fangwuxinxi_buju`,`fangwuxinxi_content`,`create_time`) values (1,'房屋名称1','http://localhost:8080/xiaoquguanlixitong/upload/1645874783088.jpg',3,'房屋大小1','房屋布局1','<p>详情1</p>','2022-02-26 17:52:01'),(2,'房屋名称2','http://localhost:8080/xiaoquguanlixitong/upload/1645874774645.jpg',2,'房屋大小2','房屋布局2','<p>详情2</p>','2022-02-26 17:52:01'),(3,'房屋名称3','http://localhost:8080/xiaoquguanlixitong/upload/1645874766877.jpg',1,'房屋大小3','房屋布局3','<p>详情3</p>','2022-02-26 17:52:01'),(4,'房屋名称4','http://localhost:8080/xiaoquguanlixitong/upload/1645874757266.jpg',1,'房屋大小4','房屋布局4','<p>详情4</p>','2022-02-26 17:52:01'),(5,'房屋名称5','http://localhost:8080/xiaoquguanlixitong/upload/1645874745945.jpg',3,'房屋大小5','房屋布局5','<p>详情5</p>','2022-02-26 17:52:01');

/*Table structure for table `guzhangweixiu` */

DROP TABLE IF EXISTS `guzhangweixiu`;

CREATE TABLE `guzhangweixiu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `ruzhudengji_name` varchar(200) DEFAULT NULL COMMENT '维修设施',
  `guzhangweixiu_types` int(200) DEFAULT NULL COMMENT '设施类型',
  `ruzhudengji_text` text COMMENT '详细地址',
  `guzhangweixiu_yesno_types` int(11) DEFAULT NULL COMMENT '审核状态',
  `guzhangweixiu_yesno_text` text COMMENT '审核结果',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='故障维修';

/*Data for the table `guzhangweixiu` */

insert  into `guzhangweixiu`(`id`,`yonghu_id`,`ruzhudengji_name`,`guzhangweixiu_types`,`ruzhudengji_text`,`guzhangweixiu_yesno_types`,`guzhangweixiu_yesno_text`,`create_time`) values (2,2,'维修设施2',2,'详细地址2',1,NULL,'2022-02-26 17:52:01'),(3,3,'维修设施3',1,'详细地址3',1,NULL,'2022-02-26 17:52:01'),(4,2,'维修设施4',3,'详细地址4',3,'拒绝原因','2022-02-26 17:52:01'),(5,1,'维修设施5',3,'详细地址5',2,'9999','2022-02-26 17:52:01'),(6,1,'设备名称',1,'维修地址在什么地方 详情信息 管理看到会进行审核 通过 和拒绝',2,'通过原因','2022-02-26 20:10:31');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告标题1',1,'http://localhost:8080/xiaoquguanlixitong/upload/news1.jpg','2022-02-26 17:52:01','公告详情1','2022-02-26 17:52:01'),(2,'公告标题2',1,'http://localhost:8080/xiaoquguanlixitong/upload/news2.jpg','2022-02-26 17:52:01','公告详情2','2022-02-26 17:52:01'),(3,'公告标题3',2,'http://localhost:8080/xiaoquguanlixitong/upload/news3.jpg','2022-02-26 17:52:01','公告详情3','2022-02-26 17:52:01'),(4,'公告标题4',2,'http://localhost:8080/xiaoquguanlixitong/upload/news4.jpg','2022-02-26 17:52:01','公告详情4','2022-02-26 17:52:01'),(5,'公告标题5',1,'http://localhost:8080/xiaoquguanlixitong/upload/news5.jpg','2022-02-26 17:52:01','公告详情5','2022-02-26 17:52:01');

/*Table structure for table `ruzhudengji` */

DROP TABLE IF EXISTS `ruzhudengji`;

CREATE TABLE `ruzhudengji` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `ruzhudengji_name` varchar(200) DEFAULT NULL COMMENT '入住地址 Search111',
  `ruzhudengji_photo` varchar(200) DEFAULT NULL COMMENT '房屋图片',
  `ruzhudengji_types` int(11) DEFAULT NULL COMMENT '入住房屋类型 Search111',
  `ruzhudengji_shijian` varchar(200) DEFAULT NULL COMMENT '入住时间',
  `ruzhudengji_renyuan` varchar(200) DEFAULT NULL COMMENT '入住人员',
  `ruzhudengji_content` text COMMENT '详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='入住登记';

/*Data for the table `ruzhudengji` */

insert  into `ruzhudengji`(`id`,`yonghu_id`,`ruzhudengji_name`,`ruzhudengji_photo`,`ruzhudengji_types`,`ruzhudengji_shijian`,`ruzhudengji_renyuan`,`ruzhudengji_content`,`create_time`) values (1,1,'入住地址1','http://localhost:8080/xiaoquguanlixitong/upload/1645874783088.jpg',2,'入住时间1','入住人员1','详情1','2022-02-26 17:52:01'),(2,3,'入住地址2','http://localhost:8080/xiaoquguanlixitong/upload/1645874774645.jpg',3,'入住时间2','入住人员2','详情2','2022-02-26 17:52:01'),(3,2,'入住地址3','http://localhost:8080/xiaoquguanlixitong/upload/1645874766877.jpg',1,'入住时间3','入住人员3','详情3','2022-02-26 17:52:01'),(4,3,'入住地址4','http://localhost:8080/xiaoquguanlixitong/upload/1645874757266.jpg',2,'入住时间4','入住人员4','详情4','2022-02-26 17:52:01'),(5,1,'入住地址5','http://localhost:8080/xiaoquguanlixitong/upload/1645874745945.jpg',2,'入住时间5','入住人员5','详情5','2022-02-26 17:52:01');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','by7j9i1crjjsmce2gomolpc8lttcfnft','2022-02-26 19:25:10','2022-02-26 21:26:31'),(2,1,'a1','yonghu','用户','raqy6ewhtmhh9mru78ygxf9fgobmpbvo','2022-02-26 19:31:25','2022-02-26 21:28:36');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-02-25 15:59:12');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号 ',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `yonghu_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_photo`,`yonghu_phone`,`yonghu_id_number`,`yonghu_email`,`sex_types`,`yonghu_delete`,`create_time`) values (1,'a1','123456','用户姓名1','http://localhost:8080/xiaoquguanlixitong/upload/yonghu1.jpg','17703786901','410224199610232001','1@qq.com',1,1,'2022-02-26 17:52:01'),(2,'a2','123456','用户姓名2','http://localhost:8080/xiaoquguanlixitong/upload/yonghu2.jpg','17703786902','410224199610232002','2@qq.com',2,1,'2022-02-26 17:52:01'),(3,'a3','123456','用户姓名3','http://localhost:8080/xiaoquguanlixitong/upload/yonghu3.jpg','17703786903','410224199610232003','3@qq.com',2,1,'2022-02-26 17:52:01');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
