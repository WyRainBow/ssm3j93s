/*
 Navicat Premium Data Transfer

 Source Server         : 127.0.0.1
 Source Server Type    : MySQL
 Source Server Version : 80032 (8.0.32)
 Source Host           : localhost:3306
 Source Schema         : ssm3j93s

 Target Server Type    : MySQL
 Target Server Version : 80032 (8.0.32)
 File Encoding         : 65001

 Date: 08/04/2024 22:59:04
*/
DROP DATABASE IF EXISTS ssm3j93s ;
CREATE DATABASE ssm3j93s CHARACTER SET utf8;
use ssm3j93s ;
SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `address` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '地址',
  `name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '收货人',
  `phone` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '电话',
  `isdefault` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1616461458762 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '地址' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES (1, '2021-03-23 08:52:01', 1, '宇宙银河系金星1号', '金某', '13823888881', '是');
INSERT INTO `address` VALUES (2, '2021-03-23 08:52:01', 2, '宇宙银河系木星1号', '木某', '13823888882', '是');
INSERT INTO `address` VALUES (3, '2021-03-23 08:52:01', 3, '宇宙银河系水星1号', '水某', '13823888883', '是');
INSERT INTO `address` VALUES (4, '2021-03-23 08:52:01', 4, '宇宙银河系火星1号', '火某', '13823888884', '是');
INSERT INTO `address` VALUES (5, '2021-03-23 08:52:01', 5, '宇宙银河系土星1号', '土某', '13823888885', '是');
INSERT INTO `address` VALUES (6, '2021-03-23 08:52:01', 6, '宇宙银河系月球1号', '月某', '13823888886', '是');
INSERT INTO `address` VALUES (1616461458761, '2021-03-23 09:04:18', 1616461418657, '广东省揭阳市榕城区中山街道大头爱宠水族馆中兴园', '陈一', '12312312312', '是');

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT 'yaopinxinxi' COMMENT '商品表名',
  `userid` bigint NOT NULL COMMENT '用户id',
  `goodid` bigint NOT NULL COMMENT '商品id',
  `goodname` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '图片',
  `buynumber` int NOT NULL COMMENT '购买数量',
  `price` float NULL DEFAULT NULL COMMENT '单价',
  `discountprice` float NULL DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1616461551404 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '购物车表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cart
-- ----------------------------

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '配置文件' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES (1, 'picture1', 'http://localhost:8080/ssm3j93s/upload/1616461112611.jpg');
INSERT INTO `config` VALUES (2, 'picture2', 'http://localhost:8080/ssm3j93s/upload/1616461121505.jpg');
INSERT INTO `config` VALUES (3, 'picture3', 'http://localhost:8080/ssm3j93s/upload/1616461324006.jpg');
INSERT INTO `config` VALUES (6, 'homepage', NULL);

-- ----------------------------
-- Table structure for discussyaopinxinxi
-- ----------------------------
DROP TABLE IF EXISTS `discussyaopinxinxi`;
CREATE TABLE `discussyaopinxinxi`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `nickname` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '评论内容',
  `reply` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '回复内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1616461784996 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '药品信息评论表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of discussyaopinxinxi
-- ----------------------------
INSERT INTO `discussyaopinxinxi` VALUES (141, '2021-03-23 08:52:01', 1, 1, '用户名1', '评论内容1', '回复内容1');
INSERT INTO `discussyaopinxinxi` VALUES (142, '2021-03-23 08:52:01', 2, 2, '用户名2', '评论内容2', '回复内容2');
INSERT INTO `discussyaopinxinxi` VALUES (143, '2021-03-23 08:52:01', 3, 3, '用户名3', '评论内容3', '回复内容3');
INSERT INTO `discussyaopinxinxi` VALUES (144, '2021-03-23 08:52:01', 4, 4, '用户名4', '评论内容4', '回复内容4');
INSERT INTO `discussyaopinxinxi` VALUES (145, '2021-03-23 08:52:01', 5, 5, '用户名5', '评论内容5', '回复内容5');
INSERT INTO `discussyaopinxinxi` VALUES (146, '2021-03-23 08:52:01', 6, 6, '用户名6', '评论内容6', '回复内容6');
INSERT INTO `discussyaopinxinxi` VALUES (1616461784995, '2021-03-23 09:09:44', 1616461284309, 1616461418657, '2', 'efghgj', NULL);

-- ----------------------------
-- Table structure for messages
-- ----------------------------
DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '留言人id',
  `username` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '留言内容',
  `reply` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '回复内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1616461598460 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '留言板' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of messages
-- ----------------------------
INSERT INTO `messages` VALUES (131, '2021-03-23 08:52:01', 1, '用户名1', '留言内容1', '回复内容1');
INSERT INTO `messages` VALUES (132, '2021-03-23 08:52:01', 2, '用户名2', '留言内容2', '回复内容2');
INSERT INTO `messages` VALUES (133, '2021-03-23 08:52:01', 3, '用户名3', '留言内容3', '回复内容3');
INSERT INTO `messages` VALUES (134, '2021-03-23 08:52:01', 4, '用户名4', '留言内容4', '回复内容4');
INSERT INTO `messages` VALUES (135, '2021-03-23 08:52:01', 5, '用户名5', '留言内容5', '回复内容5');
INSERT INTO `messages` VALUES (136, '2021-03-23 08:52:01', 6, '用户名6', '留言内容6', '回复内容6');
INSERT INTO `messages` VALUES (1616461598459, '2021-03-23 09:06:38', 1616461418657, '2', '建议增加药品种类', '1');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '标题',
  `introduction` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '简介',
  `picture` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '图片',
  `content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1616461312346 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '医药指南' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (121, '2021-03-23 08:52:01', '标题1', '简介1', 'http://localhost:8080/ssm3j93s/upload/news_picture1.jpg', '内容1');
INSERT INTO `news` VALUES (122, '2021-03-23 08:52:01', '标题2', '简介2', 'http://localhost:8080/ssm3j93s/upload/1616460911758.jpg', '<p>内容2</p>');
INSERT INTO `news` VALUES (123, '2021-03-23 08:52:01', '标题3', '简介3', 'http://localhost:8080/ssm3j93s/upload/1616460921207.jpg', '<p>内容3</p>');
INSERT INTO `news` VALUES (124, '2021-03-23 08:52:01', '标题4', '简介4', 'http://localhost:8080/ssm3j93s/upload/1616460946557.jpg', '<p>内容4</p>');
INSERT INTO `news` VALUES (125, '2021-03-23 08:52:01', '标题5', '简介5', 'http://localhost:8080/ssm3j93s/upload/news_picture5.jpg', '内容5');
INSERT INTO `news` VALUES (126, '2021-03-23 08:52:01', '标题6', '简介6', 'http://localhost:8080/ssm3j93s/upload/1616460933559.jpg', '<p>内容6</p>');
INSERT INTO `news` VALUES (1616461312345, '2021-03-23 09:01:51', '药品科普', '药品基础知识', 'http://localhost:8080/ssm3j93s/upload/1616461298340.jpg', '<p><img src=\"http://localhost:8080/ssm3j93s/upload/1616461310172.png\"></p>');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT 'yaopinxinxi' COMMENT '商品表名',
  `userid` bigint NOT NULL COMMENT '用户id',
  `goodid` bigint NOT NULL COMMENT '商品id',
  `goodname` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '商品图片',
  `buynumber` int NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT 0 COMMENT '价格/积分',
  `discountprice` float NULL DEFAULT 0 COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT 0 COMMENT '总价格/总积分',
  `discounttotal` float NULL DEFAULT 0 COMMENT '折扣总价格',
  `type` int NULL DEFAULT 1 COMMENT '支付类型',
  `status` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '状态',
  `address` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `orderid`(`orderid` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1712500352127 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '订单' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (1616461613279, '2021-03-23 09:06:52', '2021323965299432930', 'yaopinxinxi', 1616461418657, 1616461284309, '氯他雷定片', 'http://localhost:8080/ssm3j93s/upload/1616461249125.jpg', 3, 15, 15, 45, 45, 1, '已完成', '广东省揭阳市榕城区中山街道大头爱宠水族馆中兴园');
INSERT INTO `orders` VALUES (1712500352126, '2024-04-07 22:32:31', '20244722323141647706', 'yaopinxinxi', 1616461418657, 42, '药品名称2', 'http://localhost:8080/ssm3j93s/upload/1616460865058.jpg', 1, 99.9, 99.9, 99.9, 99.9, 1, '已退款', '广东省揭阳市榕城区中山街道大头爱宠水族馆中兴园');

-- ----------------------------
-- Table structure for storeup
-- ----------------------------
DROP TABLE IF EXISTS `storeup`;
CREATE TABLE `storeup`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `refid` bigint NULL DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '表名',
  `name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1616461554047 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '收藏表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of storeup
-- ----------------------------
INSERT INTO `storeup` VALUES (1616461554046, '2021-03-23 09:05:53', 1616461418657, 45, 'yaopinxinxi', '药品名称5', 'http://localhost:8080/ssm3j93s/upload/1616460885587.jpg');

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '用户名',
  `tablename` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '表名',
  `role` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '角色',
  `token` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = 'token表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES (1, 21, '员工1', 'yuangong', '员工', 'h3nfa7ui4apyyx256ltfi1mcpflnjjon', '2021-03-23 08:53:27', '2021-03-23 09:53:28');
INSERT INTO `token` VALUES (2, 1, 'yuanren', 'users', '管理员', '6s6v531yh6a8cy0gno1maw56adb4op08', '2021-03-23 08:54:06', '2024-04-08 23:37:48');
INSERT INTO `token` VALUES (3, 1616461189001, '1', 'yuangong', '员工', 'ih02h3ota5hpnf8tqzxew3pjs7ury86s', '2021-03-23 09:02:11', '2024-04-08 23:51:33');
INSERT INTO `token` VALUES (4, 1616461418657, '2', 'yonghu', '用户', 'kwhikanwp8f3a9g731b79qw9qhizmrbv', '2021-03-23 09:03:43', '2024-04-08 23:34:54');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '密码',
  `role` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '用户表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin', '123456', '管理员', '2021-03-23 08:52:01');

-- ----------------------------
-- Table structure for yaopinchuku
-- ----------------------------
DROP TABLE IF EXISTS `yaopinchuku`;
CREATE TABLE `yaopinchuku`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yaopinmingcheng` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '药品名称',
  `yaopinleibie` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '药品类别',
  `guige` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '规格',
  `changjia` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '厂家',
  `shuliang` int NULL DEFAULT NULL COMMENT '数量',
  `beizhu` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '备注',
  `chukuriqi` date NULL DEFAULT NULL COMMENT '出库日期',
  `yuangonggonghao` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '员工姓名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1616461735548 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '药品出库' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of yaopinchuku
-- ----------------------------
INSERT INTO `yaopinchuku` VALUES (61, '2021-03-23 08:52:01', '药品名称1', '药品类别1', '规格1', '厂家1', 1, '备注1', '2021-03-23', '员工工号1', '员工姓名1');
INSERT INTO `yaopinchuku` VALUES (62, '2021-03-23 08:52:01', '药品名称2', '药品类别2', '规格2', '厂家2', 2, '备注2', '2021-03-23', '员工工号2', '员工姓名2');
INSERT INTO `yaopinchuku` VALUES (63, '2021-03-23 08:52:01', '药品名称3', '药品类别3', '规格3', '厂家3', 3, '备注3', '2021-03-23', '员工工号3', '员工姓名3');
INSERT INTO `yaopinchuku` VALUES (64, '2021-03-23 08:52:01', '药品名称4', '药品类别4', '规格4', '厂家4', 4, '备注4', '2021-03-23', '员工工号4', '员工姓名4');
INSERT INTO `yaopinchuku` VALUES (65, '2021-03-23 08:52:01', '药品名称5', '药品类别5', '规格5', '厂家5', 5, '备注5', '2021-03-23', '员工工号5', '员工姓名5');
INSERT INTO `yaopinchuku` VALUES (66, '2021-03-23 08:52:01', '药品名称6', '药品类别6', '规格6', '厂家6', 6, '备注6', '2021-03-23', '员工工号6', '员工姓名6');
INSERT INTO `yaopinchuku` VALUES (1616461714007, '2021-03-23 09:08:33', '氯他雷定片', '抗过敏药物', '12片/盒', '仁和', 2, '销售出库', '2021-03-23', '1', '张明');
INSERT INTO `yaopinchuku` VALUES (1616461735547, '2021-03-23 09:08:55', '氯他雷定片', '抗过敏药物', '12片/盒', '仁和', 1, '销售出库', '2021-03-23', '1', '张明');

-- ----------------------------
-- Table structure for yaopinleibie
-- ----------------------------
DROP TABLE IF EXISTS `yaopinleibie`;
CREATE TABLE `yaopinleibie`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yaopinleibie` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '药品类别',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `yaopinleibie`(`yaopinleibie` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1616461227007 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '药品类别' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of yaopinleibie
-- ----------------------------
INSERT INTO `yaopinleibie` VALUES (31, '2021-03-23 08:52:01', '药品类别1');
INSERT INTO `yaopinleibie` VALUES (32, '2021-03-23 08:52:01', '药品类别2');
INSERT INTO `yaopinleibie` VALUES (33, '2021-03-23 08:52:01', '药品类别3');
INSERT INTO `yaopinleibie` VALUES (34, '2021-03-23 08:52:01', '药品类别4');
INSERT INTO `yaopinleibie` VALUES (35, '2021-03-23 08:52:01', '药品类别5');
INSERT INTO `yaopinleibie` VALUES (36, '2021-03-23 08:52:01', '药品类别6');
INSERT INTO `yaopinleibie` VALUES (1616461202053, '2021-03-23 09:00:01', '抗病毒药物');
INSERT INTO `yaopinleibie` VALUES (1616461210201, '2021-03-23 09:00:09', '抗菌药物');
INSERT INTO `yaopinleibie` VALUES (1616461220963, '2021-03-23 09:00:20', '抗过敏药物');
INSERT INTO `yaopinleibie` VALUES (1616461227006, '2021-03-23 09:00:26', '感冒药物');

-- ----------------------------
-- Table structure for yaopinruku
-- ----------------------------
DROP TABLE IF EXISTS `yaopinruku`;
CREATE TABLE `yaopinruku`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `rukudanhao` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '入库单号',
  `yaopinmingcheng` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '药品名称',
  `yaopinleibie` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '药品类别',
  `guige` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '规格',
  `changjia` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '厂家',
  `shuliang` int NULL DEFAULT NULL COMMENT '数量',
  `beizhu` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '备注',
  `rukushijian` date NULL DEFAULT NULL COMMENT '入库时间',
  `yuangonggonghao` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '员工姓名',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `rukudanhao`(`rukudanhao` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1616461352191 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '药品入库' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of yaopinruku
-- ----------------------------
INSERT INTO `yaopinruku` VALUES (51, '2021-03-23 08:52:01', '入库单号1', '药品名称1', '药品类别1', '规格1', '厂家1', 1, '备注1', '2021-03-23', '员工工号1', '员工姓名1');
INSERT INTO `yaopinruku` VALUES (52, '2021-03-23 08:52:01', '入库单号2', '药品名称2', '药品类别2', '规格2', '厂家2', 2, '备注2', '2021-03-23', '员工工号2', '员工姓名2');
INSERT INTO `yaopinruku` VALUES (53, '2021-03-23 08:52:01', '入库单号3', '药品名称3', '药品类别3', '规格3', '厂家3', 3, '备注3', '2021-03-23', '员工工号3', '员工姓名3');
INSERT INTO `yaopinruku` VALUES (54, '2021-03-23 08:52:01', '入库单号4', '药品名称4', '药品类别4', '规格4', '厂家4', 4, '备注4', '2021-03-23', '员工工号4', '员工姓名4');
INSERT INTO `yaopinruku` VALUES (55, '2021-03-23 08:52:01', '入库单号5', '药品名称5', '药品类别5', '规格5', '厂家5', 5, '备注5', '2021-03-23', '员工工号5', '员工姓名5');
INSERT INTO `yaopinruku` VALUES (56, '2021-03-23 08:52:01', '入库单号6', '药品名称6', '药品类别6', '规格6', '厂家6', 6, '备注6', '2021-03-23', '员工工号6', '员工姓名6');
INSERT INTO `yaopinruku` VALUES (1616461352190, '2021-03-23 09:02:31', '1616461343621', '氯他雷定片', '抗过敏药物', '12片/盒', '仁和', 50, '采购入库', '2021-03-23', '1', '张明');

-- ----------------------------
-- Table structure for yaopinxinxi
-- ----------------------------
DROP TABLE IF EXISTS `yaopinxinxi`;
CREATE TABLE `yaopinxinxi`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yaopinmingcheng` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '药品名称',
  `yaopinleibie` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '药品类别',
  `tupian` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '图片',
  `guige` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '规格',
  `changjia` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '厂家',
  `youxiaoqi` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '有效期',
  `shuliang` int NULL DEFAULT NULL COMMENT '数量',
  `yaopinxiangqing` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '药品详情',
  `clicktime` datetime NULL DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int NULL DEFAULT 0 COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1616461284310 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '药品信息' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of yaopinxinxi
-- ----------------------------
INSERT INTO `yaopinxinxi` VALUES (41, '2021-03-23 08:52:01', '药品名称1', '药品类别1', 'http://localhost:8080/ssm3j93s/upload/1616460857783.jpg', '规格1', '厂家1', '有效期1', 1, '<p>药品详情1</p>', '2021-03-23 08:54:09', 2, 99.9);
INSERT INTO `yaopinxinxi` VALUES (42, '2021-03-23 08:52:01', '药品名称2', '药品类别2', 'http://localhost:8080/ssm3j93s/upload/1616460865058.jpg', '规格2', '厂家2', '有效期2', 2, '<p>药品详情2</p>', '2024-04-07 22:32:49', 6, 99.9);
INSERT INTO `yaopinxinxi` VALUES (43, '2021-03-23 08:52:01', '药品名称3', '药品类别3', 'http://localhost:8080/ssm3j93s/upload/1616460873423.jpg', '规格3', '厂家3', '有效期3', 3, '<p>药品详情3</p>', '2021-03-23 08:54:29', 4, 99.9);
INSERT INTO `yaopinxinxi` VALUES (44, '2021-03-23 08:52:01', '药品名称4', '药品类别4', 'http://localhost:8080/ssm3j93s/upload/yaopinxinxi_tupian4.jpg', '规格4', '厂家4', '有效期4', 4, '药品详情4', '2021-03-23 08:54:37', 5, 99.9);
INSERT INTO `yaopinxinxi` VALUES (45, '2021-03-23 08:52:01', '药品名称5', '药品类别5', 'http://localhost:8080/ssm3j93s/upload/1616460885587.jpg', '规格5', '厂家5', '有效期5', 5, '<p>药品详情5</p>', '2021-03-23 09:06:03', 16, 99.9);
INSERT INTO `yaopinxinxi` VALUES (46, '2021-03-23 08:52:01', '药品名称6', '药品类别6', 'http://localhost:8080/ssm3j93s/upload/1616460902787.jpg', '规格6', '厂家6', '有效期6', 6, '<p>药品详情6</p>', '2021-03-23 08:54:58', 8, 99.9);
INSERT INTO `yaopinxinxi` VALUES (1616461284309, '2021-03-23 09:01:23', '氯他雷定片', '抗过敏药物', 'http://localhost:8080/ssm3j93s/upload/1616461249125.jpg', '12片/盒', '仁和', '30个月', 97, '<p>氯雷他定（loratadine），是第二代的抗组织胺药物，常用于治疗过敏症状。和第一代抗组织胺药相比，它的一大特性是无瞌睡作用。用于过敏性鼻炎、急性或慢性荨麻疹、过敏性结膜炎、花粉症及其他过敏性皮肤病。</p><p><img src=\"http://localhost:8080/ssm3j93s/upload/1616461281901.jpg\"></p>', '2021-03-23 09:09:47', 9, 15);

-- ----------------------------
-- Table structure for yonghu
-- ----------------------------
DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE `yonghu`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '用户名',
  `mima` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '密码',
  `xingming` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '头像',
  `lianxidianhua` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `money` float NULL DEFAULT 0 COMMENT '余额',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `yonghuming`(`yonghuming` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1616461418658 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '用户' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of yonghu
-- ----------------------------
INSERT INTO `yonghu` VALUES (11, '2021-03-23 08:52:00', '用户1', '123456', '姓名1', '男', 'http://localhost:8080/ssm3j93s/upload/yonghu_touxiang1.jpg', '13823888881', 100);
INSERT INTO `yonghu` VALUES (12, '2021-03-23 08:52:00', '用户2', '123456', '姓名2', '男', 'http://localhost:8080/ssm3j93s/upload/yonghu_touxiang2.jpg', '13823888882', 100);
INSERT INTO `yonghu` VALUES (13, '2021-03-23 08:52:00', '用户3', '123456', '姓名3', '男', 'http://localhost:8080/ssm3j93s/upload/yonghu_touxiang3.jpg', '13823888883', 100);
INSERT INTO `yonghu` VALUES (14, '2021-03-23 08:52:00', '用户4', '123456', '姓名4', '男', 'http://localhost:8080/ssm3j93s/upload/yonghu_touxiang4.jpg', '13823888884', 100);
INSERT INTO `yonghu` VALUES (15, '2021-03-23 08:52:00', '用户5', '123456', '姓名5', '男', 'http://localhost:8080/ssm3j93s/upload/yonghu_touxiang5.jpg', '13823888885', 100);
INSERT INTO `yonghu` VALUES (16, '2021-03-23 08:52:00', '用户6', '123456', '姓名6', '男', 'http://localhost:8080/ssm3j93s/upload/yonghu_touxiang6.jpg', '13823888886', 100);
INSERT INTO `yonghu` VALUES (1616461418657, '2021-03-23 09:03:38', 'yuanren', '123456', '陈一', '女', 'http://localhost:8080/ssm3j93s/upload/1616461432941.jpg', '12312312312', 955);

-- ----------------------------
-- Table structure for yuangong
-- ----------------------------
DROP TABLE IF EXISTS `yuangong`;
CREATE TABLE `yuangong`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuangonggonghao` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '员工工号',
  `mima` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '密码',
  `yuangongxingming` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '员工姓名',
  `xingbie` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '头像',
  `shouji` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '手机',
  `shenfenzheng` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '身份证',
  `money` float NULL DEFAULT 0 COMMENT '余额',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `yuangonggonghao`(`yuangonggonghao` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1616461189002 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '员工' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of yuangong
-- ----------------------------
INSERT INTO `yuangong` VALUES (21, '2021-03-23 08:52:00', '员工1', '123456', '员工姓名1', '男', 'http://localhost:8080/ssm3j93s/upload/yuangong_touxiang1.jpg', '13823888881', '440300199101010001', 100);
INSERT INTO `yuangong` VALUES (22, '2021-03-23 08:52:00', '员工2', '123456', '员工姓名2', '男', 'http://localhost:8080/ssm3j93s/upload/yuangong_touxiang2.jpg', '13823888882', '440300199202020002', 100);
INSERT INTO `yuangong` VALUES (23, '2021-03-23 08:52:00', '员工3', '123456', '员工姓名3', '男', 'http://localhost:8080/ssm3j93s/upload/yuangong_touxiang3.jpg', '13823888883', '440300199303030003', 100);
INSERT INTO `yuangong` VALUES (24, '2021-03-23 08:52:00', '员工4', '123456', '员工姓名4', '男', 'http://localhost:8080/ssm3j93s/upload/yuangong_touxiang4.jpg', '13823888884', '440300199404040004', 100);
INSERT INTO `yuangong` VALUES (25, '2021-03-23 08:52:00', '员工5', '123456', '员工姓名5', '男', 'http://localhost:8080/ssm3j93s/upload/yuangong_touxiang5.jpg', '13823888885', '440300199505050005', 100);
INSERT INTO `yuangong` VALUES (26, '2021-03-23 08:52:00', '员工6', '123456', '员工姓名6', '男', 'http://localhost:8080/ssm3j93s/upload/yuangong_touxiang6.jpg', '13823888886', '440300199606060006', 100);
INSERT INTO `yuangong` VALUES (1616461189001, '2021-03-23 08:59:49', 'yuangong', '123456', '张明', '男', 'http://localhost:8080/ssm3j93s/upload/1616461180181.jpg', '12345678978', '123456789789456123', 0);

-- ----------------------------
-- Table structure for zaixianzixun
-- ----------------------------
DROP TABLE IF EXISTS `zaixianzixun`;
CREATE TABLE `zaixianzixun`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '标题',
  `zixunneirong` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '咨询内容',
  `zixunshijian` date NULL DEFAULT NULL COMMENT '咨询时间',
  `yonghuming` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `lianxidianhua` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `sfsh` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '审核回复',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1616461654582 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '在线咨询' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of zaixianzixun
-- ----------------------------
INSERT INTO `zaixianzixun` VALUES (71, '2021-03-23 08:52:01', '标题1', '咨询内容1', '2021-03-23', '用户名1', '联系电话1', '是', '');
INSERT INTO `zaixianzixun` VALUES (72, '2021-03-23 08:52:01', '标题2', '咨询内容2', '2021-03-23', '用户名2', '联系电话2', '是', '');
INSERT INTO `zaixianzixun` VALUES (73, '2021-03-23 08:52:01', '标题3', '咨询内容3', '2021-03-23', '用户名3', '联系电话3', '是', '');
INSERT INTO `zaixianzixun` VALUES (74, '2021-03-23 08:52:01', '标题4', '咨询内容4', '2021-03-23', '用户名4', '联系电话4', '是', '');
INSERT INTO `zaixianzixun` VALUES (75, '2021-03-23 08:52:01', '标题5', '咨询内容5', '2021-03-23', '用户名5', '联系电话5', '是', '');
INSERT INTO `zaixianzixun` VALUES (76, '2021-03-23 08:52:01', '标题6', '咨询内容6', '2021-03-23', '用户名6', '联系电话6', '是', '');
INSERT INTO `zaixianzixun` VALUES (1616461654581, '2021-03-23 09:07:34', '氯他雷定片使用方法', '氯他雷定片使用方法', '2021-03-23', '2', '12312312312', '是', '饭后服用，一天三次');

SET FOREIGN_KEY_CHECKS = 1;
