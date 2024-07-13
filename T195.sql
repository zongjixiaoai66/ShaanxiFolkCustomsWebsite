/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t195`;
CREATE DATABASE IF NOT EXISTS `t195` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t195`;

DROP TABLE IF EXISTS `address`;
CREATE TABLE IF NOT EXISTS `address` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int NOT NULL COMMENT '创建用户',
  `address_name` varchar(200) NOT NULL COMMENT '收货人 ',
  `address_phone` varchar(200) NOT NULL COMMENT '电话 ',
  `address_dizhi` varchar(200) NOT NULL COMMENT '地址 ',
  `isdefault_types` int NOT NULL COMMENT '是否默认地址 ',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='收货地址';

DELETE FROM `address`;
INSERT INTO `address` (`id`, `yonghu_id`, `address_name`, `address_phone`, `address_dizhi`, `isdefault_types`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, 2, '收货人1', '17703786901', '地址1', 1, '2022-03-18 05:35:12', '2022-03-18 05:35:12', '2022-03-18 05:35:12'),
	(2, 3, '收货人2', '17703786902', '地址2', 1, '2022-03-18 05:35:12', '2022-03-18 05:35:12', '2022-03-18 05:35:12'),
	(3, 2, '收货人3', '17703786903', '地址3', 1, '2022-03-18 05:35:12', '2022-03-18 05:35:12', '2022-03-18 05:35:12'),
	(4, 1, '收货人4', '17703786904', '地址4', 1, '2022-03-18 05:35:12', '2022-03-18 05:35:12', '2022-03-18 05:35:12'),
	(5, 2, '收货人5', '17703786905', '地址5', 1, '2022-03-18 05:35:12', '2022-03-18 05:35:12', '2022-03-18 05:35:12');

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int DEFAULT NULL COMMENT '所属用户',
  `shangpin_id` int DEFAULT NULL COMMENT '商品',
  `buy_number` int DEFAULT NULL COMMENT '购买数量',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='购物车';

DELETE FROM `cart`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(4, '轮播图1', 'http://localhost:8080/zhongguoshanximinsuwang/upload/1647583718929.jpg'),
	(5, '轮播图2', 'http://localhost:8080/zhongguoshanximinsuwang/upload/1647583730378.jpg'),
	(6, '轮播图3', 'http://localhost:8080/zhongguoshanximinsuwang/upload/1647583744331.jpg');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'isdefault_types', '是否默认地址', 1, '否', NULL, NULL, '2022-03-18 05:35:01'),
	(2, 'isdefault_types', '是否默认地址', 2, '是', NULL, NULL, '2022-03-18 05:35:01'),
	(3, 'shangxia_types', '上下架', 1, '上架', NULL, NULL, '2022-03-18 05:35:01'),
	(4, 'shangxia_types', '上下架', 2, '下架', NULL, NULL, '2022-03-18 05:35:01'),
	(5, 'shangpin_types', '商品类型', 1, '食品', NULL, NULL, '2022-03-18 05:35:01'),
	(6, 'shangpin_types', '商品类型', 2, '服装', NULL, NULL, '2022-03-18 05:35:01'),
	(7, 'shangpin_types', '商品类型', 3, '玩具', NULL, NULL, '2022-03-18 05:35:01'),
	(8, 'shangpin_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2022-03-18 05:35:01'),
	(9, 'shangpin_order_types', '订单类型', 1, '已评价', NULL, NULL, '2022-03-18 05:35:01'),
	(10, 'shangpin_order_types', '订单类型', 2, '退款', NULL, NULL, '2022-03-18 05:35:01'),
	(11, 'shangpin_order_types', '订单类型', 3, '已支付', NULL, NULL, '2022-03-18 05:35:01'),
	(12, 'shangpin_order_types', '订单类型', 4, '已发货', NULL, NULL, '2022-03-18 05:35:01'),
	(13, 'shangpin_order_types', '订单类型', 5, '已收货', NULL, NULL, '2022-03-18 05:35:01'),
	(14, 'shangpin_order_payment_types', '订单支付类型', 1, '现金', NULL, NULL, '2022-03-18 05:35:01'),
	(15, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2022-03-18 05:35:02'),
	(16, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2022-03-18 05:35:02'),
	(17, 'news_types', '公告类型', 1, '公告类型1', NULL, NULL, '2022-03-18 05:35:02'),
	(18, 'news_types', '公告类型', 2, '公告类型2', NULL, NULL, '2022-03-18 05:35:02'),
	(19, 'minshu_types', '民俗类型', 1, '历史1', NULL, NULL, '2022-03-18 05:35:02'),
	(20, 'minshu_types', '民俗类型', 2, '风俗2', NULL, NULL, '2022-03-18 05:35:02'),
	(21, 'minshu_types', '民俗类型', 2, '娱乐', NULL, NULL, '2022-03-18 05:35:02');

DROP TABLE IF EXISTS `minshu`;
CREATE TABLE IF NOT EXISTS `minshu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `minshu_name` varchar(200) DEFAULT NULL COMMENT '民俗标题 Search111  ',
  `minshu_photo` varchar(200) DEFAULT NULL COMMENT '民俗图片 ',
  `minshu_types` int NOT NULL COMMENT '民俗类型 Search111',
  `minshu_content` text COMMENT '民俗详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='民俗介绍';

DELETE FROM `minshu`;
INSERT INTO `minshu` (`id`, `minshu_name`, `minshu_photo`, `minshu_types`, `minshu_content`, `create_time`) VALUES
	(1, '民俗标题1', 'http://localhost:8080/zhongguoshanximinsuwang/upload/1647582694955.jpeg', 2, '<p>民俗详情1</p>', '2022-03-18 05:35:12'),
	(2, '民俗标题2', 'http://localhost:8080/zhongguoshanximinsuwang/upload/1647582682752.jpeg', 1, '<p>民俗详情2</p>', '2022-03-18 05:35:12'),
	(3, '民俗标题3', 'http://localhost:8080/zhongguoshanximinsuwang/upload/1647582669762.jpeg', 1, '<p>民俗详情3</p>', '2022-03-18 05:35:12'),
	(4, '民俗标题4', 'http://localhost:8080/zhongguoshanximinsuwang/upload/1647582659432.jpeg', 2, '<p>民俗详情4</p>', '2022-03-18 05:35:12'),
	(5, '民俗标题5', 'http://localhost:8080/zhongguoshanximinsuwang/upload/1647582651476.jpeg', 1, '<p>民俗详情5</p>', '2022-03-18 05:35:12');

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题 Search111  ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `news_types` int NOT NULL COMMENT '公告类型 Search111',
  `news_content` text COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='公告信息';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `news_name`, `news_photo`, `news_types`, `news_content`, `create_time`) VALUES
	(1, '公告标题1', 'http://localhost:8080/zhongguoshanximinsuwang/upload/news1.jpg', 1, '公告详情1', '2022-03-18 05:35:12'),
	(2, '公告标题2', 'http://localhost:8080/zhongguoshanximinsuwang/upload/news2.jpg', 1, '公告详情2', '2022-03-18 05:35:12'),
	(3, '公告标题3', 'http://localhost:8080/zhongguoshanximinsuwang/upload/news3.jpg', 1, '公告详情3', '2022-03-18 05:35:12'),
	(4, '公告标题4', 'http://localhost:8080/zhongguoshanximinsuwang/upload/news4.jpg', 2, '公告详情4', '2022-03-18 05:35:12'),
	(5, '公告标题5', 'http://localhost:8080/zhongguoshanximinsuwang/upload/news5.jpg', 1, '公告详情5', '2022-03-18 05:35:12');

DROP TABLE IF EXISTS `shangpin`;
CREATE TABLE IF NOT EXISTS `shangpin` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shangpin_name` varchar(200) DEFAULT NULL COMMENT '商品名称  Search111 ',
  `shangpin_photo` varchar(200) DEFAULT NULL COMMENT '商品照片',
  `shangpin_types` int DEFAULT NULL COMMENT '商品类型 Search111',
  `shangpin_kucun_number` int DEFAULT NULL COMMENT '商品库存',
  `shangpin_old_money` decimal(10,2) DEFAULT NULL COMMENT '商品原价 ',
  `shangpin_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价/积分 ',
  `shangpin_clicknum` int DEFAULT NULL COMMENT '点击次数 ',
  `shangxia_types` int DEFAULT NULL COMMENT '是否上架 ',
  `shangpin_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `shangpin_content` text COMMENT '商品简介 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='商品';

DELETE FROM `shangpin`;
INSERT INTO `shangpin` (`id`, `shangpin_name`, `shangpin_photo`, `shangpin_types`, `shangpin_kucun_number`, `shangpin_old_money`, `shangpin_new_money`, `shangpin_clicknum`, `shangxia_types`, `shangpin_delete`, `shangpin_content`, `create_time`) VALUES
	(1, '商品名称1', 'http://localhost:8080/zhongguoshanximinsuwang/upload/shangpin1.jpg', 2, 100, 998.92, 211.04, 407, 1, 1, '商品简介1', '2022-03-18 05:35:12'),
	(2, '商品名称2', 'http://localhost:8080/zhongguoshanximinsuwang/upload/shangpin2.jpg', 1, 101, 528.68, 475.37, 73, 1, 1, '商品简介2', '2022-03-18 05:35:12'),
	(3, '商品名称3', 'http://localhost:8080/zhongguoshanximinsuwang/upload/shangpin3.jpg', 2, 103, 949.91, 242.36, 372, 1, 1, '商品简介3', '2022-03-18 05:35:12'),
	(4, '商品名称4', 'http://localhost:8080/zhongguoshanximinsuwang/upload/shangpin4.jpg', 1, 104, 578.23, 248.19, 212, 1, 1, '商品简介4', '2022-03-18 05:35:12'),
	(5, '商品名称5', 'http://localhost:8080/zhongguoshanximinsuwang/upload/shangpin5.jpg', 2, 105, 858.28, 455.73, 188, 2, 1, '商品简介5', '2022-03-18 05:35:12');

DROP TABLE IF EXISTS `shangpin_collection`;
CREATE TABLE IF NOT EXISTS `shangpin_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_id` int DEFAULT NULL COMMENT '商品',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `shangpin_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COMMENT='商品收藏';

DELETE FROM `shangpin_collection`;
INSERT INTO `shangpin_collection` (`id`, `shangpin_id`, `yonghu_id`, `shangpin_collection_types`, `insert_time`, `create_time`) VALUES
	(2, 2, 2, 1, '2022-03-18 05:35:12', '2022-03-18 05:35:12'),
	(6, 5, 1, 1, '2022-03-18 06:10:29', '2022-03-18 06:10:29'),
	(7, 2, 1, 1, '2024-05-17 02:09:33', '2024-05-17 02:09:33');

DROP TABLE IF EXISTS `shangpin_commentback`;
CREATE TABLE IF NOT EXISTS `shangpin_commentback` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_id` int DEFAULT NULL COMMENT '商品',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `shangpin_commentback_text` text COMMENT '评价内容',
  `reply_text` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='商品评价';

DELETE FROM `shangpin_commentback`;
INSERT INTO `shangpin_commentback` (`id`, `shangpin_id`, `yonghu_id`, `shangpin_commentback_text`, `reply_text`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, 1, 3, '评价内容1', '回复信息1', '2022-03-18 05:35:12', '2022-03-18 05:35:12', '2022-03-18 05:35:12'),
	(2, 2, 3, '评价内容2', '回复信息2', '2022-03-18 05:35:12', '2022-03-18 05:35:12', '2022-03-18 05:35:12'),
	(3, 3, 2, '评价内容3', '回复信息3', '2022-03-18 05:35:12', '2022-03-18 05:35:12', '2022-03-18 05:35:12'),
	(4, 4, 2, '评价内容4', '回复信息4', '2022-03-18 05:35:12', '2022-03-18 05:35:12', '2022-03-18 05:35:12'),
	(5, 5, 3, '评价内容5', '回复信息5', '2022-03-18 05:35:12', '2022-03-18 05:35:12', '2022-03-18 05:35:12'),
	(6, 1, 1, '评价内容1111', '回复内容111', '2022-03-18 06:12:58', '2022-03-18 06:13:24', '2022-03-18 06:12:58');

DROP TABLE IF EXISTS `shangpin_order`;
CREATE TABLE IF NOT EXISTS `shangpin_order` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单号',
  `address_id` int DEFAULT NULL COMMENT '收货地址 ',
  `shangpin_id` int DEFAULT NULL COMMENT '商品',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `buy_number` int DEFAULT NULL COMMENT '购买数量',
  `shangpin_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `shangpin_order_types` int DEFAULT NULL COMMENT '订单类型',
  `shangpin_order_payment_types` int DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='商品订单';

DELETE FROM `shangpin_order`;
INSERT INTO `shangpin_order` (`id`, `shangpin_order_uuid_number`, `address_id`, `shangpin_id`, `yonghu_id`, `buy_number`, `shangpin_order_true_price`, `shangpin_order_types`, `shangpin_order_payment_types`, `insert_time`, `create_time`) VALUES
	(1, '1647583895496', 4, 1, 1, 1, 211.04, 1, 1, '2022-03-18 06:11:36', '2022-03-18 06:11:36'),
	(2, '1647583895496', 4, 5, 1, 3, 1367.19, 2, 1, '2022-03-18 06:11:36', '2022-03-18 06:11:36'),
	(3, '1715911785863', 4, 2, 1, 1, 475.37, 3, 1, '2024-05-17 02:09:46', '2024-05-17 02:09:46');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'admin', 'users', '管理员', 'ekllnc29bcswx19jrbv6va8ys9tr1bjm', '2022-03-18 05:34:10', '2024-05-17 03:07:49'),
	(2, 1, 'a1', 'yonghu', '用户', 'prtejhro1e4o6dhvanbwsyf6hz86ls2v', '2022-03-18 05:48:01', '2024-05-17 03:09:10');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2022-04-30 16:00:00');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_phone`, `yonghu_id_number`, `yonghu_photo`, `sex_types`, `yonghu_email`, `new_money`, `create_time`) VALUES
	(1, '用户1', '123456', '用户姓名1', '17703786901', '410224199610232001', 'http://localhost:8080/zhongguoshanximinsuwang/upload/yonghu1.jpg', 2, '1@qq.com', 10341.38, '2022-03-18 05:35:12'),
	(2, '用户2', '123456', '用户姓名2', '17703786902', '410224199610232002', 'http://localhost:8080/zhongguoshanximinsuwang/upload/yonghu2.jpg', 1, '2@qq.com', 395.60, '2022-03-18 05:35:12'),
	(3, '用户3', '123456', '用户姓名3', '17703786903', '410224199610232003', 'http://localhost:8080/zhongguoshanximinsuwang/upload/yonghu3.jpg', 1, '3@qq.com', 842.83, '2022-03-18 05:35:12');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
