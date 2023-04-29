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

 Date: 29/04/2023 18:50:28
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for label
-- ----------------------------
DROP TABLE IF EXISTS `label`;
CREATE TABLE `label`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '标签序号',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '标签名称',
  `count` int(0) NULL DEFAULT NULL COMMENT '标签点击量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 80 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of label
-- ----------------------------
INSERT INTO `label` VALUES (3, '补血', 112);
INSERT INTO `label` VALUES (4, '立春', 45);
INSERT INTO `label` VALUES (5, '雨水', 78);
INSERT INTO `label` VALUES (6, '惊蛰', 65);
INSERT INTO `label` VALUES (7, '春分', 454);
INSERT INTO `label` VALUES (8, '清明', 311);
INSERT INTO `label` VALUES (9, '谷雨', 78);
INSERT INTO `label` VALUES (10, '春', 656);
INSERT INTO `label` VALUES (11, '夏', 123);
INSERT INTO `label` VALUES (12, '秋', 325);
INSERT INTO `label` VALUES (13, '冬', 456);
INSERT INTO `label` VALUES (14, '抗癌', 365);
INSERT INTO `label` VALUES (15, '降血糖', 321);
INSERT INTO `label` VALUES (16, '降血脂', 456);
INSERT INTO `label` VALUES (17, '降血压', 325);
INSERT INTO `label` VALUES (18, '抗衰老', 785);
INSERT INTO `label` VALUES (19, '消肿', 465);
INSERT INTO `label` VALUES (20, '利尿', 785);
INSERT INTO `label` VALUES (21, '止咳', 12);
INSERT INTO `label` VALUES (22, '清热', 314);
INSERT INTO `label` VALUES (23, '润肠', 457);
INSERT INTO `label` VALUES (24, '养颜', 323);
INSERT INTO `label` VALUES (25, '养心', 487);
INSERT INTO `label` VALUES (26, '养胃', 0);
INSERT INTO `label` VALUES (27, '润肝', 21);
INSERT INTO `label` VALUES (28, '润肺', 454);
INSERT INTO `label` VALUES (29, '提高免疫力', 0);
INSERT INTO `label` VALUES (30, '消食', 878);
INSERT INTO `label` VALUES (31, '活血', 656);
INSERT INTO `label` VALUES (32, '排毒', 454);
INSERT INTO `label` VALUES (33, '名目', 0);
INSERT INTO `label` VALUES (34, '安神', 0);
INSERT INTO `label` VALUES (35, '健脑', 0);
INSERT INTO `label` VALUES (36, '滋阴', 0);
INSERT INTO `label` VALUES (37, '壮阳', 0);
INSERT INTO `label` VALUES (38, '补虚', 0);
INSERT INTO `label` VALUES (39, '补气', 0);
INSERT INTO `label` VALUES (40, '健脾', 0);
INSERT INTO `label` VALUES (41, '补肾', 0);
INSERT INTO `label` VALUES (43, '口腔溃疡', 0);
INSERT INTO `label` VALUES (44, '耳鸣', 0);
INSERT INTO `label` VALUES (45, '骨质疏松', 0);
INSERT INTO `label` VALUES (46, '营养不良', 0);
INSERT INTO `label` VALUES (47, '脚气', 0);
INSERT INTO `label` VALUES (48, '更年期', 0);
INSERT INTO `label` VALUES (49, '痛经', 0);
INSERT INTO `label` VALUES (50, '月经不调', 0);
INSERT INTO `label` VALUES (51, '痔疮', 121);
INSERT INTO `label` VALUES (52, '贫血', 332);
INSERT INTO `label` VALUES (53, '感冒', 323);
INSERT INTO `label` VALUES (54, '发热', 781);
INSERT INTO `label` VALUES (55, '腹泻', 89);
INSERT INTO `label` VALUES (56, '咳嗽', 45);
INSERT INTO `label` VALUES (57, '脱发', 56);
INSERT INTO `label` VALUES (58, '白发', 12);
INSERT INTO `label` VALUES (59, '黄发', 65);
INSERT INTO `label` VALUES (60, '便秘', NULL);
INSERT INTO `label` VALUES (61, '上火', 12);
INSERT INTO `label` VALUES (62, '助眠', 78);
INSERT INTO `label` VALUES (63, '失眠', 98);
INSERT INTO `label` VALUES (64, '利尿', 78);
INSERT INTO `label` VALUES (67, '补钙', 45);
INSERT INTO `label` VALUES (68, '美白', 487);
INSERT INTO `label` VALUES (69, '肚子痛', 45);
INSERT INTO `label` VALUES (70, '磨牙', 23);
INSERT INTO `label` VALUES (71, '止血', 783);
INSERT INTO `label` VALUES (72, '解酒', 87);
INSERT INTO `label` VALUES (73, '解暑', 125);
INSERT INTO `label` VALUES (74, '便秘', 78);
INSERT INTO `label` VALUES (75, '减肥', 54);
INSERT INTO `label` VALUES (76, '缓解疲劳', 98);
INSERT INTO `label` VALUES (77, '眼睛', 78);
INSERT INTO `label` VALUES (78, '延年益寿', 8);
INSERT INTO `label` VALUES (79, '膝痛', 45);
INSERT INTO `label` VALUES (80, '中医', 12);

SET FOREIGN_KEY_CHECKS = 1;
