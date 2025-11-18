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

 Date: 28/07/2025 10:21:14
*/

USE rfid;

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for REPORT_LOG
-- ----------------------------
DROP TABLE IF EXISTS `REPORT_LOG`;
CREATE TABLE `REPORT_LOG`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `report_info` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `report_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
