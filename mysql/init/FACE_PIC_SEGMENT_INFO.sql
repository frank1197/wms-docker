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

 Date: 10/12/2025 11:23:01
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for face_pic_segment_info
-- ----------------------------
DROP TABLE IF EXISTS `face_pic_segment_info`;
CREATE TABLE `face_pic_segment_info`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fileid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `segmentidx` int(11) NULL DEFAULT NULL,
  `segmenttotal` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

SET FOREIGN_KEY_CHECKS = 1;
