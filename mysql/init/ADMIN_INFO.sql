/*
 Navicat Premium Dump SQL

 Source Server         : myTestSql
 Source Server Type    : MySQL
 Source Server Version : 80403 (8.4.3)
 Source Host           : 123.60.11.140:3306
 Source Schema         : wms_rfid

 Target Server Type    : MySQL
 Target Server Version : 80403 (8.4.3)
 File Encoding         : 65001

 Date: 28/07/2025 10:21:04
*/

USE rfid;

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ADMIN_INFO
-- ----------------------------
DROP TABLE IF EXISTS `ADMIN_INFO`;
CREATE TABLE `ADMIN_INFO`  (
  `adminId` varchar(70) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '人员ID\n',
  `adminName` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `photoUrl` varchar(70) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '人脸照片URL\n',
  `fileId` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '走物管获取人员图片时，风控人员ID;\n',
  `contact` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '联系方式\n',
  `companyName` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '单位名称\n',
  `cardno` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '身份证号\n',
  `segmentIdx` int NULL DEFAULT NULL COMMENT '当前文件段序号，从0开始\n',
  `segmentTotal` int NULL DEFAULT NULL COMMENT '文件总段数\n',
  `photoBase64` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT 'Base64(byte[]{图片数据})文件段内容\n',
  `isFullBase64` int NULL DEFAULT 0 COMMENT '是否为完整的Base64数据',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`adminId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
