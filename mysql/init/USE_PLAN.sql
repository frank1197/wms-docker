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

 Date: 10/12/2025 11:23:25
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for use_plan
-- ----------------------------
DROP TABLE IF EXISTS `use_plan`;
CREATE TABLE `use_plan`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '报文ID',
  `use_plan_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '领用计划ID',
  `use_plan_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '领用计划名称',
  `use_person_id` varchar(70) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '领用人ID',
  `use_person_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '领用人姓名',
  `use_plan_start_time` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '领用计划开始时间',
  `use_plan_end_time` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '领用计划结束时间',
  `tools` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '领用工具',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 80 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

SET FOREIGN_KEY_CHECKS = 1;
