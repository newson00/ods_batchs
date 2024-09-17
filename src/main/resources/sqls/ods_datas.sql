/*
 Navicat Premium Data Transfer

 Source Server         : mysql80-ods-datas
 Source Server Type    : MySQL
 Source Server Version : 80039
 Source Host           : localhost:3306
 Source Schema         : ods_datas

 Target Server Type    : MySQL
 Target Server Version : 80039
 File Encoding         : 65001

 Date: 17/09/2024 12:37:11
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for imported_table_columns
-- ----------------------------
DROP TABLE IF EXISTS `imported_table_columns`;
CREATE TABLE `imported_table_columns`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `table_id` bigint NOT NULL,
  `column_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `column_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `column_length` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 70 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of imported_table_columns
-- ----------------------------
INSERT INTO `imported_table_columns` VALUES (23, 6, 'yjbh1', 'varchar', 50);
INSERT INTO `imported_table_columns` VALUES (24, 6, 'yjname1', 'varchar', 51);
INSERT INTO `imported_table_columns` VALUES (25, 6, 'optiongs1', 'varchar', 51);
INSERT INTO `imported_table_columns` VALUES (26, 7, 'yjbh2', 'varchar', 50);
INSERT INTO `imported_table_columns` VALUES (27, 7, 'yjname2', 'varchar', 51);
INSERT INTO `imported_table_columns` VALUES (28, 7, 'optiongs2', 'varchar', 51);
INSERT INTO `imported_table_columns` VALUES (64, 8, 'yjbh3', 'varchar', 50);
INSERT INTO `imported_table_columns` VALUES (65, 8, 'yjname3', 'varchar', 51);
INSERT INTO `imported_table_columns` VALUES (66, 8, 'optiongs3', 'varchar', 51);
INSERT INTO `imported_table_columns` VALUES (67, 8, 'optiongs4', 'varchar', 511);
INSERT INTO `imported_table_columns` VALUES (68, 8, 'optiongs5', 'varchar', 511);
INSERT INTO `imported_table_columns` VALUES (69, 8, 'yjbh1', 'varchar', 51111111);

-- ----------------------------
-- Table structure for imported_tables
-- ----------------------------
DROP TABLE IF EXISTS `imported_tables`;
CREATE TABLE `imported_tables`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `import_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of imported_tables
-- ----------------------------
INSERT INTO `imported_tables` VALUES (6, 'early_config1', '2024-09-03 09:51:15', '2024-09-05 02:04:31');
INSERT INTO `imported_tables` VALUES (7, 'early_config2', '2024-09-03 09:52:45', '2024-09-05 02:04:59');
INSERT INTO `imported_tables` VALUES (8, 'early_config3', '2024-09-05 01:41:13', '2024-09-05 03:34:55');

-- ----------------------------
-- Table structure for url_batch
-- ----------------------------
DROP TABLE IF EXISTS `url_batch`;
CREATE TABLE `url_batch`  (
  `id1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '序号',
  `key1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'redis的key值',
  `file_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '文件存放路径',
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '文件名',
  `jyrq` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '数据日期',
  `insert_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '数据插入时间',
  `update_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '数据更新时间',
  `status` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '数据状态，0为跑批，1正在跑批，2跑批完成，3跑批失败'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of url_batch
-- ----------------------------
INSERT INTO `url_batch` VALUES ('111111111111111', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d033c5b6605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d0fb3a09605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d0fb3b03605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d15c34d0605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d15c35af605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d15c3609605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d15c365f605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d1a36cf9605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d1a36dcf605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d1a36e2c605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d1a36e8c605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d1a36f2f605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d1a36f7c605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d1a36fdd605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d1a37029605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d1d4f0f6605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d1d4f261605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d1d4f2e8605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d1d4f356605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d1d4f3cc605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d1d4f44a605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d1d4f4b7605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d1d4f518605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d1d4f577605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d1d4f5fb605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d1d50086605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d1d5016e605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d1d501eb605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d1d50273605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d1d502fe605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d1d50382605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d20ba40b605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d20ba4ec605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d20ba54c605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d20ba5ad605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d20ba60e605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d20ba66e605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d20ba6bb605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d20ba712605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d20ba75e605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d20ba7ae605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d20ba811605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d20ba85f605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d20ba89f605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d20ba8f3605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d20ba946605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d20ba9a5605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d20ba9fd605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d20baa58605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d20baab8605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d20bab17605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d20bab69605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d20babc7605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d20bac04605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d20bac5c605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d20bacb7605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d20bad17605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d20bad7a605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d20baddb605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d20bae37605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d20bae96605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d20baefa605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d20baf5b605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d23ba304605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d23ba3ec605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d23ba462605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d23ba4bc605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d23ba51f605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d23ba582605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d23ba5da605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d23ba635605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d23ba695605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d23ba6d2605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d23ba70f605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d23ba755605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d23ba793605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d23ba7d1605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d23ba824605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d23ba863605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d23ba8ab605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d23ba8fd605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d23ba959605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d23ba9bb605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d23baa1e605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d23baa80605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d23baad8605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d23bab33605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d23bab8d605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d23babf6605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d23bac4d605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d23bac97605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d23bacd6605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d23bad13605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d23bad5a605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d23bada7605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d23bade8605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d23bae2b605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d23bae6d605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d23baeb4605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d23baefb605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d23baf46605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d23bafa7605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d23bb00d605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d23bb070605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d23bb0d5605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d23bb133605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d23bb194605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d23bb1f0605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d23bb249605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d23bb2a3605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d23bb300605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d23bb35f605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d23bb3bc605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d23bb402605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d23bb44b605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d23bb48a605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d23bb4c6605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d23bb503605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d23bb542605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d23bb582605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d23bb5be605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d23bb5fc605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d23bb645605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d23bb687605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d23bb6d2605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d23bb716605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d23bb762605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269c3ab605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269c424605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269c449605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269c469605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269c487605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269c4a5605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269c4c2605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269c4e1605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269c4fe605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269c51b605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269c537605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269c553605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269c56f605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269c590605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269c5ad605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269c5ca605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269c5e6605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269c602605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269c61f605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269c63a605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269c656605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269c672605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269c68f605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269c6ad605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269c6c9605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269c6ed605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269c71c605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269c749605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269c7ab605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269c7ff605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269c836605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269c870605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269c8be605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269c8fe605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269c948605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269c99c605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269ca1d605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269ca50605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269ca70605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269ca8d605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269caa9605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269cac5605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269cae6605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269cb1d605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269cb93605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269cbec605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269cc43605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269ccb7605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269ccf9605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269cd17605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269cd33605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269cd4f605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269cd6e605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269cd89605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269cda6605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269cdc1605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269cddd605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269cdfa605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269ce16605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269ce4c605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269ce69605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269ce84605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269ce9f605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269cebb605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269ced7605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269cef3605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269cf0d605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269cf29605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269cf44605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269cf5f605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269cf7a605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269cf95605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269cfb1605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269cfcb605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269cfe6605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269d001605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269d01c605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269d037605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269d053605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269d06e605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269d08e605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269d0aa605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269d0c6605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269d0e3605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269d0fe605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269d11a605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269d135605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269d151605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269d16c605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269d187605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269d1a2605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269d1bc605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269d1d7605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269d1f2605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269d20e605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269d229605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269d244605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269d25f605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269d27a605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269d294605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269d2b0605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269d2ca605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269d2e5605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269d303605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269d31e605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269d338605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269d353605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269d36e605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269d389605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269d3a4605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269d3bf605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269d3da605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269d3f5605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269d410605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269d42b605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269d446605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269d461605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269d47c605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269d497605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269d4ef605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269d50c605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269d527605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269d545605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269d561605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269d57e605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269d5ba605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269d5f3605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');
INSERT INTO `url_batch` VALUES ('d269d62b605311ef96f084470919b47e', 'qweqweqweqweqw', '12312312313', '123wqeqw1231', '20240822', 'wqeqweqwe', 'qweqweqw', '1');

SET FOREIGN_KEY_CHECKS = 1;
