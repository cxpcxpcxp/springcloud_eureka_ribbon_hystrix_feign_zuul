/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 50622
Source Host           : localhost:3306
Source Database       : ssm

Target Server Type    : MYSQL
Target Server Version : 50622
File Encoding         : 65001

Date: 2019-11-19 17:40:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for member
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member` (
  `id` varchar(32) NOT NULL,
  `NAME` varchar(20) DEFAULT NULL,
  `nickname` varchar(20) DEFAULT NULL,
  `phoneNum` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO `member` VALUES ('E61D65F673D54F68B0861025C69773DB', '张三', '小三', '18888888888', 'zs@163.com');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` varchar(32) NOT NULL,
  `orderNum` varchar(20) NOT NULL,
  `orderTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `peopleCount` int(11) DEFAULT NULL,
  `orderDesc` varchar(500) DEFAULT NULL,
  `payType` int(11) DEFAULT NULL,
  `orderStatus` int(11) DEFAULT NULL,
  `productId` varchar(32) DEFAULT NULL,
  `memberId` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderNum` (`orderNum`),
  KEY `productId` (`productId`),
  KEY `memberId` (`memberId`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`productId`) REFERENCES `product` (`id`),
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`memberId`) REFERENCES `member` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('0E7231DC797C486290E8713CA3C6ECCC', '12345', '2019-11-11 19:42:10', '2', '没什么', '0', '1', '676C5BD1D35E429A8C2E114939C5685A', 'E61D65F673D54F68B0861025C69773DB');
INSERT INTO `orders` VALUES ('2FF351C4AC744E2092DCF08CFD314420', '67890', '2019-11-11 19:42:10', '2', '没什么', '0', '1', '12B7ABF2A4C544568B0A7C69F36BF8B7', 'E61D65F673D54F68B0861025C69773DB');
INSERT INTO `orders` VALUES ('3081770BC3984EF092D9E99760FDABDE', '55555', '2019-11-11 19:42:10', '2', '没什么', '0', '1', '9F71F01CB448476DAFB309AA6DF9497F', 'E61D65F673D54F68B0861025C69773DB');
INSERT INTO `orders` VALUES ('55F9AF582D5A4DB28FB4EC3199385762', '33333', '2019-11-11 19:42:10', '2', '没什么', '0', '1', '9F71F01CB448476DAFB309AA6DF9497F', 'E61D65F673D54F68B0861025C69773DB');
INSERT INTO `orders` VALUES ('5DC6A48DD4E94592AE904930EA866AFA', '54321', '2019-11-11 19:42:10', '2', '没什么', '0', '1', '676C5BD1D35E429A8C2E114939C5685A', 'E61D65F673D54F68B0861025C69773DB');
INSERT INTO `orders` VALUES ('96CC8BD43C734CC2ACBFF09501B4DD5D', '22222', '2019-11-11 19:42:10', '2', '没什么', '0', '1', '12B7ABF2A4C544568B0A7C69F36BF8B7', 'E61D65F673D54F68B0861025C69773DB');
INSERT INTO `orders` VALUES ('A0657832D93E4B10AE88A2D4B70B1A28', '98765', '2019-11-11 19:42:10', '2', '没什么', '0', '1', '12B7ABF2A4C544568B0A7C69F36BF8B7', 'E61D65F673D54F68B0861025C69773DB');
INSERT INTO `orders` VALUES ('CA005CF1BE3C4EF68F88ABC7DF30E976', '44444', '2019-11-11 19:42:10', '2', '没什么', '0', '1', '9F71F01CB448476DAFB309AA6DF9497F', 'E61D65F673D54F68B0861025C69773DB');
INSERT INTO `orders` VALUES ('E4DD4C45EED84870ABA83574A801083E', '11111', '2019-11-11 19:42:10', '2', '没什么', '0', '1', '12B7ABF2A4C544568B0A7C69F36BF8B7', 'E61D65F673D54F68B0861025C69773DB');

-- ----------------------------
-- Table structure for order_traveller
-- ----------------------------
DROP TABLE IF EXISTS `order_traveller`;
CREATE TABLE `order_traveller` (
  `orderId` varchar(32) NOT NULL DEFAULT '',
  `travellerId` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`orderId`,`travellerId`),
  KEY `travellerId` (`travellerId`),
  CONSTRAINT `order_traveller_ibfk_1` FOREIGN KEY (`orderId`) REFERENCES `orders` (`id`),
  CONSTRAINT `order_traveller_ibfk_2` FOREIGN KEY (`travellerId`) REFERENCES `traveller` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of order_traveller
-- ----------------------------
INSERT INTO `order_traveller` VALUES ('0E7231DC797C486290E8713CA3C6ECCC', '3FE27DF2A4E44A6DBC5D0FE4651D3D3E');
INSERT INTO `order_traveller` VALUES ('2FF351C4AC744E2092DCF08CFD314420', '3FE27DF2A4E44A6DBC5D0FE4651D3D3E');
INSERT INTO `order_traveller` VALUES ('5DC6A48DD4E94592AE904930EA866AFA', '3FE27DF2A4E44A6DBC5D0FE4651D3D3E');
INSERT INTO `order_traveller` VALUES ('A0657832D93E4B10AE88A2D4B70B1A28', '3FE27DF2A4E44A6DBC5D0FE4651D3D3E');
INSERT INTO `order_traveller` VALUES ('3081770BC3984EF092D9E99760FDABDE', 'EE7A71FB6945483FBF91543DBE851960');
INSERT INTO `order_traveller` VALUES ('55F9AF582D5A4DB28FB4EC3199385762', 'EE7A71FB6945483FBF91543DBE851960');
INSERT INTO `order_traveller` VALUES ('96CC8BD43C734CC2ACBFF09501B4DD5D', 'EE7A71FB6945483FBF91543DBE851960');
INSERT INTO `order_traveller` VALUES ('CA005CF1BE3C4EF68F88ABC7DF30E976', 'EE7A71FB6945483FBF91543DBE851960');
INSERT INTO `order_traveller` VALUES ('E4DD4C45EED84870ABA83574A801083E', 'EE7A71FB6945483FBF91543DBE851960');

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission` (
  `id` varchar(32) NOT NULL,
  `permissionName` varchar(50) DEFAULT NULL,
  `url` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES ('c55dabab047e11ea966300ff4ce5624c', 'user findAll', 'user/findAll.do');
INSERT INTO `permission` VALUES ('d2ef385e047e11ea966300ff4ce5624c', 'user findById', 'user/findById.do');
INSERT INTO `permission` VALUES ('da7f47df047e11ea966300ff4ce5624c', 'product findAll', 'product/findAll.do');
INSERT INTO `permission` VALUES ('e160ddc1047e11ea966300ff4ce5624c', 'product findById', 'product findById.do');
INSERT INTO `permission` VALUES ('e53fe1d2047e11ea966300ff4ce5624c', 'user save', 'user/save.do');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` varchar(32) NOT NULL,
  `productNum` varchar(50) NOT NULL,
  `productName` varchar(50) DEFAULT NULL,
  `cityName` varchar(50) DEFAULT NULL,
  `DepartureTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `productPrice` double DEFAULT NULL,
  `productDesc` varchar(255) DEFAULT NULL,
  `productStatus` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product` (`id`,`productNum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('12B7ABF2A4C544568B0A7C69F36BF8B7', 'bianyiit-003', '上海五日游', '上海', '2019-11-11 19:35:25', '1800', '魔都我来了', '0');
INSERT INTO `product` VALUES ('676C5BD1D35E429A8C2E114939C5685A', 'bianyiit-002', '北京三日游', '北京', '2019-11-11 19:35:25', '1200', '不错的旅行', '1');
INSERT INTO `product` VALUES ('9F71F01CB448476DAFB309AA6DF9497F', 'bianyiit-001', '北京三日游', '北京', '2019-11-11 19:35:25', '1200', '不错的旅行', '1');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` varchar(32) NOT NULL,
  `roleName` varchar(50) DEFAULT NULL,
  `roleDesc` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('3e4395cc047c11ea966300ff4ce5624c', 'user', 'notknow');
INSERT INTO `role` VALUES ('47fd7f97047b11ea966300ff4ce5624c', 'admin', 'vip');
INSERT INTO `role` VALUES ('49d9a72b047c11ea966300ff4ce5624c', 'manager', 'notknow');
INSERT INTO `role` VALUES ('501dd22f047c11ea966300ff4ce5624c', 'guest', 'notknow');
INSERT INTO `role` VALUES ('543fa2f4047c11ea966300ff4ce5624c', 'admin', 'vip');

-- ----------------------------
-- Table structure for role_permission
-- ----------------------------
DROP TABLE IF EXISTS `role_permission`;
CREATE TABLE `role_permission` (
  `roleId` varchar(32) NOT NULL DEFAULT '',
  `permissionId` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`roleId`,`permissionId`),
  KEY `roleId` (`roleId`),
  KEY `role_permission_ibfk_2` (`permissionId`),
  CONSTRAINT `role_permission_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `role` (`id`),
  CONSTRAINT `role_permission_ibfk_2` FOREIGN KEY (`permissionId`) REFERENCES `permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of role_permission
-- ----------------------------
INSERT INTO `role_permission` VALUES ('3e4395cc047c11ea966300ff4ce5624c', 'da7f47df047e11ea966300ff4ce5624c');
INSERT INTO `role_permission` VALUES ('3e4395cc047c11ea966300ff4ce5624c', 'e53fe1d2047e11ea966300ff4ce5624c');
INSERT INTO `role_permission` VALUES ('47fd7f97047b11ea966300ff4ce5624c', 'c55dabab047e11ea966300ff4ce5624c');
INSERT INTO `role_permission` VALUES ('47fd7f97047b11ea966300ff4ce5624c', 'd2ef385e047e11ea966300ff4ce5624c');
INSERT INTO `role_permission` VALUES ('49d9a72b047c11ea966300ff4ce5624c', 'd2ef385e047e11ea966300ff4ce5624c');
INSERT INTO `role_permission` VALUES ('543fa2f4047c11ea966300ff4ce5624c', 'e53fe1d2047e11ea966300ff4ce5624c');

-- ----------------------------
-- Table structure for syslog
-- ----------------------------
DROP TABLE IF EXISTS `syslog`;
CREATE TABLE `syslog` (
  `id` varchar(32) NOT NULL,
  `visitTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `username` varchar(50) DEFAULT NULL,
  `ip` varchar(30) DEFAULT NULL,
  `url` varchar(50) DEFAULT NULL,
  `executionTime` int(11) DEFAULT NULL,
  `method` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of syslog
-- ----------------------------
INSERT INTO `syslog` VALUES ('1074d443093c11eab97800ff4ce5624c', '2019-11-17 21:13:01', 'cxp', '0:0:0:0:0:0:0:1', 'userfindAll.do', '70', '[类名] com.plantasun_ssm.web.UserController[方法名] findAll');
INSERT INTO `syslog` VALUES ('1318de9d093c11eab97800ff4ce5624c', '2019-11-17 21:13:06', 'cxp', '0:0:0:0:0:0:0:1', 'rolefindAll.do', '39', '[类名] com.plantasun_ssm.web.RoleController[方法名] findAll');
INSERT INTO `syslog` VALUES ('1487d6c9093c11eab97800ff4ce5624c', '2019-11-17 21:13:08', 'cxp', '0:0:0:0:0:0:0:1', 'rolefindById.do', '11', '[类名] com.plantasun_ssm.web.RoleController[方法名] findById');
INSERT INTO `syslog` VALUES ('17065e07093c11eab97800ff4ce5624c', '2019-11-17 21:13:12', 'cxp', '0:0:0:0:0:0:0:1', 'rolefindAll.do', '27', '[类名] com.plantasun_ssm.web.RoleController[方法名] findAll');
INSERT INTO `syslog` VALUES ('18112284093c11eab97800ff4ce5624c', '2019-11-17 21:13:14', 'cxp', '0:0:0:0:0:0:0:1', 'rolefindById.do', '15', '[类名] com.plantasun_ssm.web.RoleController[方法名] findById');
INSERT INTO `syslog` VALUES ('1a7142bb093c11eab97800ff4ce5624c', '2019-11-17 21:13:18', 'cxp', '0:0:0:0:0:0:0:1', 'rolefindAll.do', '38', '[类名] com.plantasun_ssm.web.RoleController[方法名] findAll');
INSERT INTO `syslog` VALUES ('22345aaf093c11eab97800ff4ce5624c', '2019-11-17 21:13:31', 'cxp', '0:0:0:0:0:0:0:1', 'permissionfindAll.do', '22', '[类名] com.plantasun_ssm.web.PermissionController[方法名] findAll');
INSERT INTO `syslog` VALUES ('2407e545093c11eab97800ff4ce5624c', '2019-11-17 21:13:34', 'cxp', '0:0:0:0:0:0:0:1', 'rolefindById.do', '11', '[类名] com.plantasun_ssm.web.RoleController[方法名] findById');
INSERT INTO `syslog` VALUES ('255117a9093c11eab97800ff4ce5624c', '2019-11-17 21:13:36', 'cxp', '0:0:0:0:0:0:0:1', 'permissionfindAll.do', '9', '[类名] com.plantasun_ssm.web.PermissionController[方法名] findAll');
INSERT INTO `syslog` VALUES ('26a54e15093711eab97800ff4ce5624c', '2019-11-17 20:37:51', '2268943811@qq.com', '0:0:0:0:0:0:0:1', 'ordersfindAll.do', '307', '[类名] com.plantasun_ssm.web.OrdersController[方法名] findAll');
INSERT INTO `syslog` VALUES ('2772b64a093c11eab97800ff4ce5624c', '2019-11-17 21:13:40', 'cxp', '0:0:0:0:0:0:0:1', 'permissionfindAll.do', '10', '[类名] com.plantasun_ssm.web.PermissionController[方法名] findAll');
INSERT INTO `syslog` VALUES ('283ea001093c11eab97800ff4ce5624c', '2019-11-17 21:13:41', 'cxp', '0:0:0:0:0:0:0:1', 'rolefindById.do', '38', '[类名] com.plantasun_ssm.web.RoleController[方法名] findById');
INSERT INTO `syslog` VALUES ('293fa2ce093c11eab97800ff4ce5624c', '2019-11-17 21:13:43', 'cxp', '0:0:0:0:0:0:0:1', 'permissionfindAll.do', '22', '[类名] com.plantasun_ssm.web.PermissionController[方法名] findAll');
INSERT INTO `syslog` VALUES ('2ab8eef2093c11eab97800ff4ce5624c', '2019-11-17 21:13:46', 'cxp', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', '28', '[类名] com.plantasun_ssm.web.SysLogController[方法名] findAll');
INSERT INTO `syslog` VALUES ('2e54b64d093c11eab97800ff4ce5624c', '2019-11-17 21:13:52', 'cxp', '0:0:0:0:0:0:0:1', 'permissionfindAll.do', '9', '[类名] com.plantasun_ssm.web.PermissionController[方法名] findAll');
INSERT INTO `syslog` VALUES ('2f93ef7d093c11eab97800ff4ce5624c', '2019-11-17 21:13:54', 'cxp', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', '10', '[类名] com.plantasun_ssm.web.SysLogController[方法名] findAll');
INSERT INTO `syslog` VALUES ('32fc91ea093711eab97800ff4ce5624c', '2019-11-17 20:38:12', '2268943811@qq.com', '0:0:0:0:0:0:0:1', 'ordersfindById.do', '113', '[类名] com.plantasun_ssm.web.OrdersController[方法名] findById');
INSERT INTO `syslog` VALUES ('33a83072093c11eab97800ff4ce5624c', '2019-11-17 21:14:01', 'cxp', '0:0:0:0:0:0:0:1', '/product/findAll.do', '39', '[类名] com.plantasun_ssm.web.ProductController[方法名] findAll');
INSERT INTO `syslog` VALUES ('357df169093711eab97800ff4ce5624c', '2019-11-17 20:38:16', '2268943811@qq.com', '0:0:0:0:0:0:0:1', 'ordersfindAll.do', '35', '[类名] com.plantasun_ssm.web.OrdersController[方法名] findAll');
INSERT INTO `syslog` VALUES ('35e8f400093c11eab97800ff4ce5624c', '2019-11-17 21:14:04', 'cxp', '0:0:0:0:0:0:0:1', 'ordersfindAll.do', '175', '[类名] com.plantasun_ssm.web.OrdersController[方法名] findAll');
INSERT INTO `syslog` VALUES ('7cd9d0e9093711eab97800ff4ce5624c', '2019-11-17 20:40:16', '2268943811@qq.com', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', '152', '[类名] com.plantasun_ssm.web.SysLogController[方法名] findAll');
INSERT INTO `syslog` VALUES ('7f63f662093811eab97800ff4ce5624c', '2019-11-17 20:47:30', '2268943811@qq.com', '0:0:0:0:0:0:0:1', 'userfindAll.do', '114', '[类名] com.plantasun_ssm.web.UserController[方法名] findAll');
INSERT INTO `syslog` VALUES ('8154cc7f093811eab97800ff4ce5624c', '2019-11-17 20:47:33', '2268943811@qq.com', '0:0:0:0:0:0:0:1', 'userfindUserByIdAndOtherRole.do', '113', '[类名] com.plantasun_ssm.web.UserController[方法名] findUserByIdAndOtherRole');
INSERT INTO `syslog` VALUES ('8299e9b4093811eab97800ff4ce5624c', '2019-11-17 20:47:35', '2268943811@qq.com', '0:0:0:0:0:0:0:1', 'userfindAll.do', '15', '[类名] com.plantasun_ssm.web.UserController[方法名] findAll');
INSERT INTO `syslog` VALUES ('8a0ec014093a11eab97800ff4ce5624c', '2019-11-17 21:02:06', '2268943811@qq.com', '0:0:0:0:0:0:0:1', 'userfindAll.do', '109', '[类名] com.plantasun_ssm.web.UserController[方法名] findAll');
INSERT INTO `syslog` VALUES ('8d61e7c2093811eab97800ff4ce5624c', '2019-11-17 20:47:53', '2268943811@qq.com', '0:0:0:0:0:0:0:1', 'usersave.do', '161', '[类名] com.plantasun_ssm.web.UserController[方法名] save');
INSERT INTO `syslog` VALUES ('8d788084093811eab97800ff4ce5624c', '2019-11-17 20:47:53', '2268943811@qq.com', '0:0:0:0:0:0:0:1', 'userfindAll.do', '13', '[类名] com.plantasun_ssm.web.UserController[方法名] findAll');
INSERT INTO `syslog` VALUES ('8e9a65b1093a11eab97800ff4ce5624c', '2019-11-17 21:02:14', '2268943811@qq.com', '0:0:0:0:0:0:0:1', 'userfindUserByIdAndOtherRole.do', '29', '[类名] com.plantasun_ssm.web.UserController[方法名] findUserByIdAndOtherRole');
INSERT INTO `syslog` VALUES ('975a0a93093a11eab97800ff4ce5624c', '2019-11-17 21:02:29', '2268943811@qq.com', '0:0:0:0:0:0:0:1', 'useraddRoleToUser.do', '220', '[类名] com.plantasun_ssm.web.UserController[方法名] addRoleToUser');
INSERT INTO `syslog` VALUES ('976cca51093a11eab97800ff4ce5624c', '2019-11-17 21:02:29', '2268943811@qq.com', '0:0:0:0:0:0:0:1', 'userfindAll.do', '23', '[类名] com.plantasun_ssm.web.UserController[方法名] findAll');
INSERT INTO `syslog` VALUES ('9c9bb149093a11eab97800ff4ce5624c', '2019-11-17 21:02:38', '2268943811@qq.com', '0:0:0:0:0:0:0:1', 'userfindAll.do', '24', '[类名] com.plantasun_ssm.web.UserController[方法名] findAll');
INSERT INTO `syslog` VALUES ('9ca748ff093711eab97800ff4ce5624c', '2019-11-17 20:41:09', '2268943811@qq.com', '0:0:0:0:0:0:0:1', 'userfindAll.do', '27', '[类名] com.plantasun_ssm.web.UserController[方法名] findAll');
INSERT INTO `syslog` VALUES ('a00c2282093811eab97800ff4ce5624c', '2019-11-17 20:48:24', '2268943811@qq.com', '0:0:0:0:0:0:0:1', 'rolefindAll.do', '35', '[类名] com.plantasun_ssm.web.RoleController[方法名] findAll');
INSERT INTO `syslog` VALUES ('a34badf2093811eab97800ff4ce5624c', '2019-11-17 20:48:30', '2268943811@qq.com', '0:0:0:0:0:0:0:1', 'rolefindAll.do', '14', '[类名] com.plantasun_ssm.web.RoleController[方法名] findAll');
INSERT INTO `syslog` VALUES ('a94ba5d5093811eab97800ff4ce5624c', '2019-11-17 20:48:40', '2268943811@qq.com', '0:0:0:0:0:0:0:1', 'userfindAll.do', '26', '[类名] com.plantasun_ssm.web.UserController[方法名] findAll');
INSERT INTO `syslog` VALUES ('aaf4005f093811eab97800ff4ce5624c', '2019-11-17 20:48:43', '2268943811@qq.com', '0:0:0:0:0:0:0:1', 'userfindById.do', '16', '[类名] com.plantasun_ssm.web.UserController[方法名] findById');
INSERT INTO `syslog` VALUES ('af48dd29093711eab97800ff4ce5624c', '2019-11-17 20:41:40', '2268943811@qq.com', '0:0:0:0:0:0:0:1', 'usersave.do', '223', '[类名] com.plantasun_ssm.web.UserController[方法名] save');
INSERT INTO `syslog` VALUES ('af5ffb2b093711eab97800ff4ce5624c', '2019-11-17 20:41:41', '2268943811@qq.com', '0:0:0:0:0:0:0:1', 'userfindAll.do', '21', '[类名] com.plantasun_ssm.web.UserController[方法名] findAll');
INSERT INTO `syslog` VALUES ('b06b0db2093811eab97800ff4ce5624c', '2019-11-17 20:48:52', '2268943811@qq.com', '0:0:0:0:0:0:0:1', 'userfindAll.do', '20', '[类名] com.plantasun_ssm.web.UserController[方法名] findAll');
INSERT INTO `syslog` VALUES ('b152910e093811eab97800ff4ce5624c', '2019-11-17 20:48:53', '2268943811@qq.com', '0:0:0:0:0:0:0:1', 'userfindById.do', '45', '[类名] com.plantasun_ssm.web.UserController[方法名] findById');
INSERT INTO `syslog` VALUES ('b3e32e30093811eab97800ff4ce5624c', '2019-11-17 20:48:58', '2268943811@qq.com', '0:0:0:0:0:0:0:1', 'userfindAll.do', '9', '[类名] com.plantasun_ssm.web.UserController[方法名] findAll');
INSERT INTO `syslog` VALUES ('b7142468093811eab97800ff4ce5624c', '2019-11-17 20:49:03', '2268943811@qq.com', '0:0:0:0:0:0:0:1', 'rolefindAll.do', '18', '[类名] com.plantasun_ssm.web.RoleController[方法名] findAll');
INSERT INTO `syslog` VALUES ('bafe8b04093811eab97800ff4ce5624c', '2019-11-17 20:49:10', '2268943811@qq.com', '0:0:0:0:0:0:0:1', 'rolefindAll.do', '7', '[类名] com.plantasun_ssm.web.RoleController[方法名] findAll');
INSERT INTO `syslog` VALUES ('ceb6fdca093811eab97800ff4ce5624c', '2019-11-17 20:49:43', '2268943811@qq.com', '0:0:0:0:0:0:0:1', 'rolefindPermissionByRoleId.do', '44', '[类名] com.plantasun_ssm.web.RoleController[方法名] findPermissionByRoleId');
INSERT INTO `syslog` VALUES ('d030cbff093811eab97800ff4ce5624c', '2019-11-17 20:49:45', '2268943811@qq.com', '0:0:0:0:0:0:0:1', 'rolefindAll.do', '9', '[类名] com.plantasun_ssm.web.RoleController[方法名] findAll');
INSERT INTO `syslog` VALUES ('d2353959093811eab97800ff4ce5624c', '2019-11-17 20:49:49', '2268943811@qq.com', '0:0:0:0:0:0:0:1', 'rolefindAll.do', '9', '[类名] com.plantasun_ssm.web.RoleController[方法名] findAll');
INSERT INTO `syslog` VALUES ('eeca40ab093711eab97800ff4ce5624c', '2019-11-17 20:43:27', '2268943811@qq.com', '0:0:0:0:0:0:0:1', 'userfindAll.do', '24', '[类名] com.plantasun_ssm.web.UserController[方法名] findAll');

-- ----------------------------
-- Table structure for traveller
-- ----------------------------
DROP TABLE IF EXISTS `traveller`;
CREATE TABLE `traveller` (
  `id` varchar(32) NOT NULL,
  `NAME` varchar(20) DEFAULT NULL,
  `sex` varchar(20) DEFAULT NULL,
  `phoneNum` varchar(20) DEFAULT NULL,
  `credentialsType` int(11) DEFAULT NULL,
  `credentialsNum` varchar(50) DEFAULT NULL,
  `travellerType` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of traveller
-- ----------------------------
INSERT INTO `traveller` VALUES ('3FE27DF2A4E44A6DBC5D0FE4651D3D3E', '张龙', '男', '13333333333', '0', '123456789009876543', '0');
INSERT INTO `traveller` VALUES ('EE7A71FB6945483FBF91543DBE851960', '张小龙', '男', '15555555555', '0', '987654321123456789', '1');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` varchar(32) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `PASSWORD` varchar(225) DEFAULT NULL,
  `phoneNum` varchar(20) DEFAULT NULL,
  `STATUS` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('093cf881074211eab97800ff4ce5624c', 'dww', '8888888888@qq.com', '123', '14785256985', '1');
INSERT INTO `users` VALUES ('6604803c047a11ea966300ff4ce5624c', 'krisswen1@sina.cn', 'kriss1', '1231', '135450944821', '1');
INSERT INTO `users` VALUES ('791b748c047a11ea966300ff4ce5624c', 'krisswen2@sina.cn', 'kriss2', '1232', '135450944822', '1');
INSERT INTO `users` VALUES ('7e3e9be8047a11ea966300ff4ce5624c', 'krisswen3@sina.cn', 'kriss3', '1233', '135450944823', '1');
INSERT INTO `users` VALUES ('831c07f2047a11ea966300ff4ce5624c', 'krisswen4@sina.cn', 'kriss4', '1234', '135450944824', '1');
INSERT INTO `users` VALUES ('897856ef047a11ea966300ff4ce5624c', 'krisswen5@sina.cn', 'kriss5', '1235', '135450944825', '1');
INSERT INTO `users` VALUES ('8d57c95b093811eab97800ff4ce5624c', '222222288888@', 'cxp', '$2a$10$iPTTDf5TfCwPms/Q65mNV.MeIrHow82hxpGLwQoOJr.tsLLPAc4VC', '18229807860', '1');
INSERT INTO `users` VALUES ('af3704bd093711eab97800ff4ce5624c', 'qqq', 'plantasun@yeah.net', '$2a$10$emVALbruFNZmQgmwQ.d9/.RfkN/b8/WKWuKD6J95C6pF2/RumG0Em', '14785256985', '1');
INSERT INTO `users` VALUES ('d4aeacab075a11eab97800ff4ce5624c', 'jyy', '2268943811@qq.com', '$2a$10$f.WprJlntxnFkRiV/8o1seUSu.g7bi249Gw6sljojxPBW0IK/IH/i', '14785256985', '1');

-- ----------------------------
-- Table structure for users_role
-- ----------------------------
DROP TABLE IF EXISTS `users_role`;
CREATE TABLE `users_role` (
  `userId` varchar(32) NOT NULL DEFAULT '',
  `roleId` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`userId`,`roleId`),
  KEY `roleId` (`roleId`),
  CONSTRAINT `users_role_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`),
  CONSTRAINT `users_role_ibfk_2` FOREIGN KEY (`roleId`) REFERENCES `role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of users_role
-- ----------------------------
INSERT INTO `users_role` VALUES ('6604803c047a11ea966300ff4ce5624c', '3e4395cc047c11ea966300ff4ce5624c');
INSERT INTO `users_role` VALUES ('791b748c047a11ea966300ff4ce5624c', '3e4395cc047c11ea966300ff4ce5624c');
INSERT INTO `users_role` VALUES ('831c07f2047a11ea966300ff4ce5624c', '3e4395cc047c11ea966300ff4ce5624c');
INSERT INTO `users_role` VALUES ('8d57c95b093811eab97800ff4ce5624c', '3e4395cc047c11ea966300ff4ce5624c');
INSERT INTO `users_role` VALUES ('d4aeacab075a11eab97800ff4ce5624c', '3e4395cc047c11ea966300ff4ce5624c');
INSERT INTO `users_role` VALUES ('6604803c047a11ea966300ff4ce5624c', '47fd7f97047b11ea966300ff4ce5624c');
INSERT INTO `users_role` VALUES ('791b748c047a11ea966300ff4ce5624c', '47fd7f97047b11ea966300ff4ce5624c');
INSERT INTO `users_role` VALUES ('7e3e9be8047a11ea966300ff4ce5624c', '47fd7f97047b11ea966300ff4ce5624c');
INSERT INTO `users_role` VALUES ('831c07f2047a11ea966300ff4ce5624c', '47fd7f97047b11ea966300ff4ce5624c');
INSERT INTO `users_role` VALUES ('8d57c95b093811eab97800ff4ce5624c', '47fd7f97047b11ea966300ff4ce5624c');
INSERT INTO `users_role` VALUES ('d4aeacab075a11eab97800ff4ce5624c', '47fd7f97047b11ea966300ff4ce5624c');
INSERT INTO `users_role` VALUES ('6604803c047a11ea966300ff4ce5624c', '49d9a72b047c11ea966300ff4ce5624c');
INSERT INTO `users_role` VALUES ('791b748c047a11ea966300ff4ce5624c', '49d9a72b047c11ea966300ff4ce5624c');
INSERT INTO `users_role` VALUES ('831c07f2047a11ea966300ff4ce5624c', '49d9a72b047c11ea966300ff4ce5624c');
INSERT INTO `users_role` VALUES ('d4aeacab075a11eab97800ff4ce5624c', '49d9a72b047c11ea966300ff4ce5624c');
INSERT INTO `users_role` VALUES ('6604803c047a11ea966300ff4ce5624c', '501dd22f047c11ea966300ff4ce5624c');
INSERT INTO `users_role` VALUES ('791b748c047a11ea966300ff4ce5624c', '501dd22f047c11ea966300ff4ce5624c');
INSERT INTO `users_role` VALUES ('831c07f2047a11ea966300ff4ce5624c', '501dd22f047c11ea966300ff4ce5624c');
INSERT INTO `users_role` VALUES ('d4aeacab075a11eab97800ff4ce5624c', '501dd22f047c11ea966300ff4ce5624c');
INSERT INTO `users_role` VALUES ('6604803c047a11ea966300ff4ce5624c', '543fa2f4047c11ea966300ff4ce5624c');
INSERT INTO `users_role` VALUES ('831c07f2047a11ea966300ff4ce5624c', '543fa2f4047c11ea966300ff4ce5624c');
INSERT INTO `users_role` VALUES ('8d57c95b093811eab97800ff4ce5624c', '543fa2f4047c11ea966300ff4ce5624c');
INSERT INTO `users_role` VALUES ('d4aeacab075a11eab97800ff4ce5624c', '543fa2f4047c11ea966300ff4ce5624c');
