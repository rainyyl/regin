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

 Date: 29/04/2023 02:46:57
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `age` int(0) NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `labels_ids` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('20210011', 'xu123456', '男', 61, '19877756442', '14,15,16,18,20,29,34,45,78,80');
INSERT INTO `user` VALUES ('20210012', 'xu123456', '男', 56, '13698754236', '34,35,36,37,41,48,63,80');
INSERT INTO `user` VALUES ('20210013', 'xu123456', '男', 18, '15447896558', '22,24,25,30,32,38,49,80');
INSERT INTO `user` VALUES ('20210014', 'xu123456', '女', 25, '10236987541', '19,38,49,50,63,68,72,75,80');
INSERT INTO `user` VALUES ('20210015', 'xu123456', '女', 65, '19877756442', '14,15,16,17,29,34,45,78,80');
INSERT INTO `user` VALUES ('20210016', 'xu123456', '女', 88, '19877756442', '15,16,18,20,29,34,45,46,62,63,74,78,80');
INSERT INTO `user` VALUES ('20210017', 'xu123456', '男', 89, '19877756442', '15,16,17,20,21,23,26,34,45,62,74,78,80');
INSERT INTO `user` VALUES ('20210018', 'xu123456', '男', 56, '19877756442', '3,34,35,36,37,39,41,44,47,48,52,67,80');
INSERT INTO `user` VALUES ('20210019', 'xu123456', '女', 55, '19877756442', '3,21,27,28,35,36,37,39,41,48,63,66,67,68,80');
INSERT INTO `user` VALUES ('20210020', 'xu123456', '男', 56, '19877756442', '3,34,35,36,39,41,48,52,54,56,67,80');
INSERT INTO `user` VALUES ('20210021', 'xu123456', '女', 18, '19877756442', '19,22,24,25,26,30,32,38,43,49,50,57,58,59,60,68,72,80');
INSERT INTO `user` VALUES ('20210022', 'xu123456', '男', 56, NULL, '3,21,27,28,34,35,37,41,48,54,55,67,68,80');
INSERT INTO `user` VALUES ('20210023', 'xu123456', '女', 25, NULL, '19,22,24,25,26,30,32,45,56,63,65,68,69,80');
INSERT INTO `user` VALUES ('20210024', 'xu123456', '女', 27, NULL, '22,24,32,38,49,50,68,72,80');
INSERT INTO `user` VALUES ('20210025', 'xu123456', '男', 29, ',', '19,22,25,30,32,43,49,50,51,52,57,58,63,64,68,69,72,80');

SET FOREIGN_KEY_CHECKS = 1;
