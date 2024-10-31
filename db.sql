/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - xueshenggongyu
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`xueshenggongyu` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `xueshenggongyu`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/jspmm2ql6/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/jspmm2ql6/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/jspmm2ql6/upload/picture3.jpg'),(4,'picture4','http://localhost:8080/jspmm2ql6/upload/picture4.jpg'),(5,'picture5','http://localhost:8080/jspmm2ql6/upload/picture5.jpg'),(6,'homepage',NULL);

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字   ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (1,'sex_types','性别',1,'男',NULL,'2021-03-08 20:50:29'),(2,'sex_types','性别',2,'女',NULL,'2021-03-08 20:50:29'),(3,'politics_types','政治面貌',1,'群众',NULL,'2021-03-08 20:50:29'),(4,'politics_types','政治面貌',2,'党员',NULL,'2021-03-08 20:50:29'),(5,'weisheng_types','卫生状态',1,'优秀',NULL,'2021-03-08 20:50:29'),(6,'weisheng_types','卫生状态',2,'良好',NULL,'2021-03-08 20:50:30'),(7,'weisheng_types','卫生状态',3,'差',NULL,'2021-03-08 20:50:30'),(8,'banji_types','班级',1,'一班',NULL,'2021-03-08 20:50:30'),(9,'banji_types','班级',2,'二班',NULL,'2021-03-08 20:50:30'),(10,'banji_types','班级',3,'三班',NULL,'2021-03-08 20:50:30'),(11,'banji_types','班级',4,'四班',NULL,'2021-03-08 20:50:30'),(12,'banji_types','班级',5,'qqqq',NULL,'2021-03-09 09:23:09');

/*Table structure for table `fangke` */

DROP TABLE IF EXISTS `fangke`;

CREATE TABLE `fangke` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(200) DEFAULT NULL COMMENT '姓名   ',
  `phone` varchar(200) DEFAULT NULL COMMENT '手机号  ',
  `id_number` varchar(200) DEFAULT NULL COMMENT '身份证号   ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `zhuzhi` varchar(200) DEFAULT NULL COMMENT '住址',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='访客管理';

/*Data for the table `fangke` */

insert  into `fangke`(`id`,`name`,`phone`,`id_number`,`sex_types`,`zhuzhi`,`create_time`) values (1,'张1','17703789991','410224199610232011',2,'北京','2021-03-08 21:10:18'),(2,'张2','17703789992','410224199610232012',2,'987','2021-03-08 21:12:11'),(3,'张2','17703789991','410224199610232011',2,'的说法是','2021-03-09 09:20:46');

/*Table structure for table `sushe` */

DROP TABLE IF EXISTS `sushe`;

CREATE TABLE `sushe` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `building` varchar(200) DEFAULT NULL COMMENT '楼栋  ',
  `unit` varchar(200) DEFAULT NULL COMMENT '单元  ',
  `room` varchar(200) DEFAULT NULL COMMENT '房间号  ',
  `sushe_number` int(11) DEFAULT '0' COMMENT '已住人员',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='宿舍信息';

/*Data for the table `sushe` */

insert  into `sushe`(`id`,`building`,`unit`,`room`,`sushe_number`,`create_time`) values (1,'9','9','9',2,'2021-03-08 16:05:05'),(2,'9','9','10',8,'2021-03-08 16:27:16');

/*Table structure for table `sushe_yonghu` */

DROP TABLE IF EXISTS `sushe_yonghu`;

CREATE TABLE `sushe_yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `sushe_id` int(11) DEFAULT NULL COMMENT '宿舍id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='人员与宿舍关系';

/*Data for the table `sushe_yonghu` */

insert  into `sushe_yonghu`(`id`,`yonghu_id`,`sushe_id`,`create_time`) values (5,9,2,'2021-03-08 19:51:17'),(6,8,2,'2021-03-08 19:51:20'),(7,7,2,'2021-03-08 19:51:23'),(8,6,2,'2021-03-08 19:51:28'),(9,5,2,'2021-03-08 19:51:34'),(10,10,2,'2021-03-09 09:16:49'),(11,4,2,'2021-03-09 09:17:24'),(12,3,2,'2021-03-09 09:17:33');

/*Table structure for table `susheweisheng` */

DROP TABLE IF EXISTS `susheweisheng`;

CREATE TABLE `susheweisheng` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `sushe_id` int(11) DEFAULT NULL COMMENT '宿舍id',
  `weisheng_types` int(11) DEFAULT NULL COMMENT '卫生',
  `weisheng_content` varchar(200) DEFAULT NULL COMMENT '卫生详情',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '检查时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='宿舍卫生';

/*Data for the table `susheweisheng` */

insert  into `susheweisheng`(`id`,`sushe_id`,`weisheng_types`,`weisheng_content`,`insert_time`,`create_time`) values (8,2,3,'差劲\r\n','2021-03-08 21:17:02','2021-03-08 21:17:02'),(9,1,3,'897\r\n','2021-03-08 21:17:12','2021-03-08 21:17:12'),(10,2,3,'87\r\n','2021-03-09 09:11:52','2021-03-09 09:11:52'),(11,2,2,'还可以\r\n','2021-03-09 09:21:25','2021-03-09 09:21:25');

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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','vg1owkzodrtcxn1o6xot3le96cytizgf','2020-12-17 17:09:11','2021-02-03 11:47:45'),(2,1,'1','dangyuan','党员','lrlu96f87l1btzsvhmq0cx248eoowb3t','2020-12-17 17:17:02','2020-12-17 18:17:03'),(3,1,'1','zhibu','支部','w8efhq9xkrz3c3fz6dgztk9trch8dnk8','2020-12-17 17:18:21','2020-12-17 18:18:21'),(4,1608197383165,'001','zhibu','支部','7q33efdzk68psx37dpjek8p8h6uwq7ow','2020-12-17 17:36:24','2021-01-22 10:38:07'),(5,1608198583190,'001','dangyuan','党员','p64k1bj6iwvrditvy4jzanyq44zbq6ed','2020-12-17 17:52:50','2020-12-17 18:52:50'),(6,1608199057450,'003','dangyuan','党员','g26ivuguh0qebktkl0hyj1jymxt2svnn','2020-12-17 18:03:00','2020-12-17 19:03:01'),(7,1608199181916,'004','zhibu','支部','13u05cup4ivaoeyin2shic24xi7oge2f','2020-12-17 18:03:40','2020-12-17 19:03:41'),(8,6,'admin1','users','学院管理员','y46uj8gv4ezllt5p5ufrge1f2bpjv3cs','2021-01-29 14:52:36','2021-02-03 11:47:53'),(9,7,'admin2','users','宿舍管理员','qrx3mk3gn2e5ye90s0ab3gq54nouf8rw','2021-02-02 12:02:15','2021-02-03 11:59:01'),(10,10,'11','users','学生','u31dzvfagnj9tppkjr9nvxtzbhukx5vx','2021-02-02 13:21:38','2021-02-03 12:39:22'),(11,1,'abo','users','学院管理员','f2ul3z66wpuo4a0rl77sk921n9yf8mkb','2021-02-03 10:52:40','2021-02-03 11:52:40'),(12,8,'admin3','users','财务管理员','9ymzdcsml2b96mln6x6cs3i2xi661643','2021-02-03 11:05:39','2021-02-03 15:10:11'),(13,11,'999','users','学生','mya6tv1l67d8s6r6tan7ezy7z4w8lgzw','2021-02-03 11:29:09','2021-02-03 14:45:27'),(14,4,'999','yonghu','用户','1ahtqregeq3nku278h35h1479bb0iy04','2021-02-04 13:40:27','2021-02-23 16:37:12'),(15,1,'99','yonghu','用户','8ql2zqwd0wm3ugg19omnr4q6bs9dvl61','2021-02-04 14:52:51','2021-02-20 19:03:24'),(16,7,'admin2','users','初审管理员','3mqhpytktmhhpz29r6dtrbynyvtl525i','2021-02-04 15:50:09','2021-02-22 11:07:10'),(17,3,'77','users','用户','xh0tje5duprxv13usx62b3f2tzwiv7rw','2021-02-18 09:42:20','2021-03-08 22:33:01'),(18,6,'admin1','users','管理员','6ie072nod3ligtdtw0iqzp210aw7yyqd','2021-02-19 16:42:49','2021-03-09 10:14:55'),(19,6,'88','yonghu','用户','yw7yxi7we78b3vh9kkvl2sk98m0pl24c','2021-02-20 10:35:45','2021-02-20 11:39:03'),(20,2,'22','yonghu','用户','m3qi8ns8kwjwk2fbb3x74ppv5ftmf00p','2021-02-20 10:54:51','2021-02-22 10:27:37'),(21,8,'admin3','users','政审管理员','p1vflp8rs17msr05d6vwo622f1bk095c','2021-02-20 11:39:06','2021-02-22 11:09:33'),(22,9,'admin4','users','武装部管理员','0ljqhzh9zhhlq3ftkczskvs9ur5oj1fy','2021-02-20 13:31:20','2021-02-20 19:06:45'),(23,5,'55','yonghu','用户','jzxw4912iminddl1v1csr7md5g9z04uz','2021-02-20 17:25:51','2021-02-23 17:15:21'),(24,13,'77','users','舍管管理员','gt28ff27xhxzmvjc7oy74s3jgfr7gstx','2021-02-23 15:21:29','2021-02-23 16:21:29'),(25,14,'admin2','users','舍管管理员','wm7ners2segz27n1g4sojmx8ios2d0jk','2021-02-23 16:03:05','2021-02-23 17:03:47'),(26,14,'admin2','users','售票管理员','iwqonlhzy22vjgsh90jxc016vvpr8i1e','2021-02-24 13:54:16','2021-02-24 15:53:23'),(27,15,'admin3','users','检票管理员','97icqm027wx11oba95zlnjl613h2haeq','2021-02-24 13:57:11','2021-02-24 16:26:45'),(28,18,'78','users','售票管理员','bxbiasroyq8hgxljhgygmils0450zegz','2021-02-24 14:53:44','2021-02-24 15:53:45'),(29,12,'99','yonghu','用户','3gh882ib9001cag4ua5bzg0v8h8smi7e','2021-03-01 16:52:26','2021-03-01 18:14:30'),(30,7,'a1','yonghu','用户','m7whd20qf9h0tb8k2tkg0c0v9wa6s3x5','2021-03-01 21:06:49','2021-03-02 12:08:40'),(31,8,'a2','yonghu','用户','94sgqh9kog3hrvaej848n42ujqrpl9pa','2021-03-02 11:09:17','2021-03-02 12:31:59'),(32,13,'a8','yonghu','用户','0tvaz76fd0qt7ngvckt7yqn5hffyesbn','2021-03-02 11:45:55','2021-03-02 14:10:18'),(33,15,'a6','yonghu','用户','u1gplzr2wfrg122mhd8hc9ocr55urh2i','2021-03-02 14:07:02','2021-03-02 15:16:52'),(34,9,'a44','yonghu','学生','s67u4kc3y8ejbxqkb1u8xx9aja1rsanr','2021-03-02 19:38:30','2021-03-02 22:30:48'),(35,7,'a1','yonghu','班干部','qj2bnplfmd8s22635ehshtnd51t2e4ob','2021-03-02 20:01:11','2021-03-02 21:07:59'),(36,19,'a1','users','任课教师','4vk0esxevb1d8az0n3hoxrheaqycsbey','2021-03-02 20:10:49','2021-03-02 21:13:31'),(37,20,'a2','users','辅导员','91g7c31vr8y7r6tahrrmq8k9fvlmzacw','2021-03-02 20:16:36','2021-03-02 21:32:01'),(38,9,'a9','yonghu','用户','fsw9b9ui47qboyt9n780tm2kyhsicakk','2021-03-08 21:36:22','2021-03-09 10:24:35');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','123456','管理员','2021-01-29 14:51:13');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `name` varchar(200) DEFAULT NULL COMMENT '姓名   ',
  `phone` varchar(200) DEFAULT NULL COMMENT '手机号  ',
  `id_number` varchar(200) DEFAULT NULL COMMENT '身份证号   ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `banji_types` int(11) DEFAULT NULL COMMENT '班级   ',
  `my_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `nation` varchar(200) DEFAULT NULL COMMENT '民族',
  `politics_types` int(11) DEFAULT NULL COMMENT '政治面貌',
  `birthplace` varchar(200) DEFAULT NULL COMMENT '籍贯',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`name`,`phone`,`id_number`,`sex_types`,`banji_types`,`my_photo`,`nation`,`politics_types`,`birthplace`,`create_time`) values (1,'a1','123456','张1','17703789991','410224199610232011',2,1,'http://localhost:8080/xueshenggongyu/file/download?fileName=1615196222937.jpg','汉',2,'审犯罪','2021-03-08 17:37:07'),(2,'a2','123456','张2','17703789992','410224199610232012',2,2,'http://localhost:8080/xueshenggongyu/file/download?fileName=1615196249924.jpg','汉',1,'河南开封','2021-03-08 17:37:35'),(3,'a3','123456','张三','17703789993','410224199610232014',2,1,'http://localhost:8080/xueshenggongyu/file/download?fileName=1615196285046.jpg','汉',1,'审犯罪11','2021-03-08 17:38:11'),(4,'a4','123456','张4','17703789994','410224199610232014',2,3,'http://localhost:8080/xueshenggongyu/file/download?fileName=1615196332351.jpg','汉',2,'审犯罪9','2021-03-08 17:38:58'),(5,'a5','123456','张5','17703789995','410224199610232015',2,1,'http://localhost:8080/xueshenggongyu/file/download?fileName=1615196370216.jpg','汉',1,'浙江温州','2021-03-08 17:39:37'),(6,'a6','123456','张6','17703789996','410224199610232016',2,4,'http://localhost:8080/xueshenggongyu/file/download?fileName=1615204162797.jpg','汉',2,'审犯罪','2021-03-08 19:49:27'),(7,'a7','123456','张7','17703789997','410224199610232017',2,3,'http://localhost:8080/xueshenggongyu/file/download?fileName=1615204162797.jpg','汉',2,'审犯罪','2021-03-08 19:49:27'),(8,'a8','123456','张8','17703789998','410224199610232018',2,2,'http://localhost:8080/xueshenggongyu/file/download?fileName=1615204162797.jpg','汉',2,'审犯罪','2021-03-08 19:49:27'),(9,'a9','123456','张9','17703789999','410224199610232019',2,4,'http://localhost:8080/xueshenggongyu/file/download?fileName=1615204162797.jpg','汉',2,'审犯罪12','2021-03-08 19:49:27'),(10,'a10','123456','张10','17703789910','410224199610232021',2,3,'http://localhost:8080/xueshenggongyu/file/download?fileName=1615252535923.jpg','维吾尔族',2,'浙江温州1','2021-03-09 09:15:39');

/*Table structure for table `yonghuweisheng` */

DROP TABLE IF EXISTS `yonghuweisheng`;

CREATE TABLE `yonghuweisheng` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `weisheng_types` int(11) DEFAULT NULL COMMENT '卫生',
  `weisheng_content` varchar(200) DEFAULT NULL COMMENT '卫生详情',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '检查时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='学生卫生';

/*Data for the table `yonghuweisheng` */

insert  into `yonghuweisheng`(`id`,`yonghu_id`,`weisheng_types`,`weisheng_content`,`insert_time`,`create_time`) values (1,9,2,'还可以\r\n','2021-03-08 21:19:23','2021-03-08 21:19:23'),(2,8,3,'差劲1\r\n','2021-03-09 09:12:28','2021-03-09 09:12:28'),(3,10,3,'个人卫生差劲\r\n','2021-03-09 09:21:44','2021-03-09 09:21:44');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
