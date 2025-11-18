/*
 Navicat Premium Dump SQL

 Source Server         : 腾讯云-wms-db
 Source Server Type    : MySQL
 Source Server Version : 80044 (8.0.44)
 Source Host           : 49.232.34.162:3406
 Source Schema         : rfid

 Target Server Type    : MySQL
 Target Server Version : 80044 (8.0.44)
 File Encoding         : 65001

 Date: 18/11/2025 09:10:47
*/

USE rfid;

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for USE_PLAN
-- ----------------------------
DROP TABLE IF EXISTS `USE_PLAN`;
CREATE TABLE `USE_PLAN`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `mid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `useplanid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `location` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `createTime` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
