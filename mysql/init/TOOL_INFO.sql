/*
 Navicat Premium Dump SQL

 Source Server         : rfid
 Source Server Type    : MySQL
 File Encoding         : 65001
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for TOOL_INFO
-- ----------------------------
DROP TABLE IF EXISTS `TOOL_INFO`;
CREATE TABLE `TOOL_INFO`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `book_id` varchar(50) NOT NULL COMMENT '台账主键',
  `use_org_id` varchar(50) DEFAULT NULL COMMENT '使用单位ID',
  `use_org` varchar(255) DEFAULT NULL COMMENT '使用单位',
  `use_gq_id` varchar(50) DEFAULT NULL COMMENT '使用部门ID',
  `user_gq` varchar(255) DEFAULT NULL COMMENT '使用部门名称',
  `use_bs_id` varchar(50) DEFAULT NULL COMMENT '使用专业室ID',
  `use_bs_name` varchar(255) DEFAULT NULL COMMENT '使用专业室',
  `use_bz_id` varchar(50) DEFAULT NULL COMMENT '使用班组ID',
  `use_bz_name` varchar(255) DEFAULT NULL COMMENT '使用班组',
  `buy_date` varchar(50) DEFAULT NULL COMMENT '购置日期',
  `last_test_time` varchar(50) DEFAULT NULL COMMENT '上次试验日期',
  `next_test_time` varchar(50) DEFAULT NULL COMMENT '下次试验日期',
  `test_period` varchar(50) DEFAULT NULL COMMENT '试验周期(月)',
  `asset_status` varchar(50) DEFAULT NULL COMMENT '工器具状态',
  `class_id` varchar(50) DEFAULT NULL COMMENT '工器具分类ID',
  `gqj_class` varchar(255) DEFAULT NULL COMMENT '工器具分类',
  `classify_id` varchar(50) DEFAULT NULL COMMENT '工器具名称ID',
  `gqj_classify` varchar(255) DEFAULT NULL COMMENT '工器具名称',
  `gqj_standard_id` varchar(50) DEFAULT NULL COMMENT '规格型号ID',
  `gqj_standard` varchar(255) DEFAULT NULL COMMENT '规格型号',
  `voltage_grade` varchar(50) DEFAULT NULL COMMENT '电压等级',
  `in_user_id` varchar(50) DEFAULT NULL COMMENT '入库扫描人ID',
  `in_user_name` varchar(50) DEFAULT NULL COMMENT '入库扫描人姓名',
  `create_org` varchar(255) DEFAULT NULL COMMENT '入库扫描单位',
  `create_org_id` varchar(50) DEFAULT NULL COMMENT '入库扫描单位ID',
  `fac_code` varchar(50) DEFAULT NULL COMMENT '生产厂家ID',
  `fac_name` varchar(255) DEFAULT NULL COMMENT '生产厂家',
  `per_name` varchar(50) DEFAULT NULL COMMENT '负责人',
  `per_tell` varchar(50) DEFAULT NULL COMMENT '负责人联系方式',
  `guarantee_period` varchar(50) DEFAULT NULL COMMENT '质保年限',
  `factory_time` varchar(50) DEFAULT NULL COMMENT '出厂日期',
  `pk_user_locale_id` varchar(50) DEFAULT NULL COMMENT '保管地点ID',
  `use_address_name` varchar(255) DEFAULT NULL COMMENT '保管地点名称',
  `blg_xgs_id` varchar(50) DEFAULT NULL COMMENT '所属县ID',
  `blg_sgs_id` varchar(50) DEFAULT NULL COMMENT '所属市ID',
  `blg_xgs` varchar(255) DEFAULT NULL COMMENT '所属县',
  `blg_sgs` varchar(255) DEFAULT NULL COMMENT '所属市',
  `pk_t_plan` varchar(50) DEFAULT NULL COMMENT '采购批次ID',
  `plan_name` varchar(255) DEFAULT NULL COMMENT '采购批次',
  `sort_flag` varchar(50) DEFAULT NULL COMMENT '是否易耗品标识',
  `node_status` varchar(50) DEFAULT NULL COMMENT '节点状态',
  `stock_in_date` varchar(50) DEFAULT NULL COMMENT '入库日期',
  `use_record_status` varchar(50) DEFAULT NULL COMMENT '领用归还状态',
  `flag` varchar(50) DEFAULT NULL COMMENT '标志位',
  `icode` varchar(50) DEFAULT NULL COMMENT '实物ID',
  `factory_num` varchar(50) DEFAULT NULL COMMENT '工器具编号',
  `comment_status` varchar(50) DEFAULT NULL COMMENT '送检预警状态',
  `use_count` varchar(50) DEFAULT NULL COMMENT '使用次数',
  `is_print` varchar(50) DEFAULT NULL COMMENT '是否可打印',
  `last_sync_time` datetime DEFAULT NULL COMMENT '最近同步时间',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uk_tool_info_book_id` (`book_id`) USING BTREE
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COMMENT = '工器具信息';

SET FOREIGN_KEY_CHECKS = 1;
