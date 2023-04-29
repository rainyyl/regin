/*
 Navicat Premium Data Transfer

 Source Server         : mysql01
 Source Server Type    : MySQL
 Source Server Version : 80027
 Source Host           : localhost:3306
 Source Schema         : reginmen

 Target Server Type    : MySQL
 Target Server Version : 80027
 File Encoding         : 65001

 Date: 29/04/2023 00:13:29
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for reviews_data
-- ----------------------------
DROP TABLE IF EXISTS `reviews_data`;
CREATE TABLE `reviews_data`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `data_id` int(0) NOT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  INDEX `data_id`(`data_id`) USING BTREE,
  CONSTRAINT `reviews_data_ibfk_1` FOREIGN KEY (`data_id`) REFERENCES `data` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reviews_data
-- ----------------------------
INSERT INTO `reviews_data` VALUES (4, '20210012', 3, '记得早点睡');
INSERT INTO `reviews_data` VALUES (5, '20210012', 3, '春天来了');
INSERT INTO `reviews_data` VALUES (8, '20210013', 4, '天天想你');
INSERT INTO `reviews_data` VALUES (9, '20210012', 4, '天天想你');
INSERT INTO `reviews_data` VALUES (10, '20210014', 4, '天天想你');
INSERT INTO `reviews_data` VALUES (11, '20210015', 4, '天天想你');

SET FOREIGN_KEY_CHECKS = 1;
