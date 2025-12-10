/*
 Navicat Premium Dump SQL

 Source Server         : 私有MySql8(私有)
 Source Server Type    : MySQL
 Source Server Version : 80016 (8.0.16)
 Source Host           : 49.232.34.162:3306
 Source Schema         : rfid

 Target Server Type    : MySQL
 Target Server Version : 80016 (8.0.16)
 File Encoding         : 65001

 Date: 10/12/2025 11:22:47
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin_info
-- ----------------------------
DROP TABLE IF EXISTS `admin_info`;
CREATE TABLE `admin_info`  (
  `adminId` varchar(70) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '人员ID\n',
  `adminName` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `photoUrl` varchar(70) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '人脸照片URL\n',
  `fileId` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '走物管获取人员图片时，风控人员ID;\n',
  `contact` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系方式\n',
  `companyName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位名称\n',
  `cardno` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '身份证号\n',
  `segmentIdx` int(11) NULL DEFAULT NULL COMMENT '当前文件段序号，从0开始\n',
  `segmentTotal` int(11) NULL DEFAULT NULL COMMENT '文件总段数\n',
  `photoBase64` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'Base64(byte[]{图片数据})文件段内容\n',
  `isFullBase64` int(11) NULL DEFAULT 0 COMMENT '是否为完整的Base64数据',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`adminId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

SET FOREIGN_KEY_CHECKS = 1;
