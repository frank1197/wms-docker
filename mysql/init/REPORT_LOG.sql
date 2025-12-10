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

 Date: 10/12/2025 11:23:13
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for report_log
-- ----------------------------
DROP TABLE IF EXISTS `report_log`;
CREATE TABLE `report_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `report_info` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `report_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 82 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

SET FOREIGN_KEY_CHECKS = 1;
