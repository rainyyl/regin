/*
 Navicat Premium Data Transfer

 Source Server         : LJH
 Source Server Type    : MySQL
 Source Server Version : 80032
 Source Host           : localhost:3306
 Source Schema         : reginmen

 Target Server Type    : MySQL
 Target Server Version : 80032
 File Encoding         : 65001

 Date: 25/04/2023 11:55:55
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for food_conbination
-- ----------------------------
DROP TABLE IF EXISTS `food_conbination`;
CREATE TABLE `food_conbination`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `labels_ids` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `vp` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `acticle` varchar(14000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of food_conbination
-- ----------------------------
INSERT INTO `food_conbination` VALUES (1, '桃仁莲藕汤', '10,20,30,40,50,60,70', 'https://bkimg.cdn.bcebos.com/pic/e61190ef76c6a7efac388188f3faaf51f3de6605?x-bce-process=image/resize,m_lfit,w_536,limit_1', '桃仁10克,莲藕250克，盐2克#　步骤1：莲藕洗净，切块；桃仁清水浸泡，洗净。\r\n\r\n　　步骤2：砂锅置火上，入水适量。下入莲藕、桃仁，大火沸煮1小时至莲藕熟透，加盐调味即可。#活血去瘀。适用于血瘀型恶露不止等症。#桃仁活血去瘀，月经过多者及孕妇忌用。');
INSERT INTO `food_conbination` VALUES (2, '薏米煮苦瓜', '11,21,31,41,51,61,71', 'https://th.bing.com/th/id/OIP.FWoKBNzaNBrv5RkRwh-lZAHaFZ?pid=ImgDet&rs=1', '薏米80克，苦瓜250克,姜、葱各5克，料酒10毫升，植物油10毫升，盐2克，鸡精1克#步骤1：将薏米去杂质，洗净：苦瓜去瓤，洗净，切块；姜洗净，切片；葱洗净，切段。\r\n\r\n　　步骤2：炖锅置火上，注入清水600毫升，放入薏米、苦瓜，加入姜片、葱段、料酒，大火煮沸，再转小火炖煮30分钟，加入盐、鸡精调味，淋上植物油即可。#祛风止痛、清热解毒。适用于治疗粉刺，对脱屑、痤疮、皲裂、皮肤粗糙等都有良好疗效。#佐餐食用。');
INSERT INTO `food_conbination` VALUES (3, '羊肝粥', '12,13,22,32,42,52,62,72', 'https://th.bing.com/th/id/R.25f12b1545b8f1b43773bc36e2291c51?rik=9M%2fQvr84GeK%2f9g&riu=http%3a%2f%2fcp1.douguo.net%2fupload%2fcaiku%2f4%2ff%2f3%2fyuan_4fcd670f19544d3d40e75d3d2e794dc3.jpg&ehk=xnIXRuI%2b%2fyX2JN2pDzJHDYw6fvtaGV2tGgEIEfEQ5KU%3d&risl=&pid=ImgRaw&r=0', '枸杞15克，羊肝40克,大米80克，盐3克#步骤1：枸杞洗净；羊肝洗净，切块；大米淘洗干净备用。\r\n\r\n　　步骤2：砂锅置火上，入水适量，放入大米、枸杞、羊肝，大火煮沸转小火熬煮40分钟，加入盐调味即可。#补肝肾、明眼目。适宜夜盲症患者食用。#每日一次，做早餐食用。');
INSERT INTO `food_conbination` VALUES (4, '桂花山药羹', '13,14,23,33,43,53,63,73', 'https://st-cn.meishij.net/rs/150/151/14787900/n14787900_160482571724471.jpg', '山药150克，鲜桂花5克(干品1克),冰糖适量#步骤1：将去皮洗净切成小丁的山药放入锅中，加水适量开始煮。\r\n\r\n　　步骤2：待山药煮至七八成熟时，放入桂花、冰糖，煮至山药糯软、汤汁浓稠，即可食用。#步骤1：将去皮洗净切成小丁的山药放入锅中，加水适量开始煮。\r\n\r\n　　步骤2：待山药煮至七八成熟时，放入桂花、冰糖，煮至山药糯软、汤汁浓稠，即可食用。#随时食用。');
INSERT INTO `food_conbination` VALUES (5, '党参雪梨鸡', '14,24,34,44,45,54,64,74', 'https://pic1.zhimg.com/v2-1b16eed63e758516857cef376acbce85_r.jpg', '党参6克,乌鸡1只，红枣5枚，雪梨1个，盐3克，鸡精1克，植物油10毫升#步骤1：雪梨洗净，去核、皮，切成小块；红枣去核，洗净；党参洗净，浸泡，切片；乌鸡宰杀后，去毛、内脏、爪，切块，入沸水中汆烫去除血水，捞出备用。\r\n\r\n　　步骤2：炒锅置中火上，入油烧至九成热，放入鸡块爆炒10分钟，注入适量水，加入雪梨、红枣、党参，转小火煮约40分钟，加盐、鸡精调味即可。#益心安神、补肺润肺。适用于肺热、肺燥、咳嗽、痰多等症。#益心安神、补肺润肺。适用于肺热、肺燥、咳嗽、痰多等症。');
INSERT INTO `food_conbination` VALUES (6, '陈皮核桃粥', '5,15,25,35,45,55,65,75', 'https://th.bing.com/th/id/R.a893ad24b54c0f8c8e3e0ebf120e7485?rik=M56U%2bSGyJsnE6w&riu=http%3a%2f%2fcp1.douguo.net%2fupload%2fcaiku%2f6%2fa%2ff%2fyuan_6a85a74af66cf3e965134dedb8405b2f.jpg&ehk=mnB%2bmEQGcOfXonlNCmWescVcgO9zkurEdrVIdMC4Yjw%3d&risl=&pid=ImgRaw&r=0', '陈皮5克,核桃仁18克，大米80克，植物油10毫升，冰糖末5克#步骤1：大米淘净；陈皮润透，切丝；核桃仁洗净。\r\n\r\n　　步骤2：锅入油，烧热后下核桃仁炸香，捞出沥干备用。\r\n\r\n　　步骤3：砂锅置火上，入水适量，下入大米，大火煮沸，小火慢煮30分钟，放入核桃仁、陈皮、冰糖末搅匀，再煮30分钟即可。#补肾固精、温肺定喘、润肠补脑、燥湿化痰。#每日2次，早晚食用。');
INSERT INTO `food_conbination` VALUES (7, '车前草猪肚汤', '6,16,26,36,46,56,66', 'https://cp1.douguo.com/upload/caiku/a/a/a/yuan_aaa4fb47826cd5ffa22220f4f76e3d0a.jpg', '新鲜车前草30克,新鲜车前草30克#步骤1：车前草择洗干净，切碎；猪肚洗净，加盐、淀粉、料酒拌匀，切块；姜洗净，切片。\r\n\r\n　　步骤2：汤煲置火上，入水适量，放入猪肚、姜，大火煮沸后，加入车前草，转小火煲2小时，加盐调味即可。#清热利湿、利尿通淋。适用于治疗膀胱炎、尿道炎等症。#吃猪肚，喝汤。');
INSERT INTO `food_conbination` VALUES (8, '茉莉佛手煮蛋', '7,17,27,37,47,57,67', 'https://th.bing.com/th/id/R.5d2b22f8ef10454ea0262d504303545c?rik=%2bbC6jKwrRCuKzQ&riu=http%3a%2f%2fsjzast.org.cn%2fUserFiles%2fImage%2f-8168524745848959349.jpg&ehk=b8L5GWtyqFlcT2Ncoc0gc7v%2fuKV9So2TYIeomHgnwXc%3d&risl=&pid=ImgRaw&r=0', '佛手8克,茉莉花10克，鸡蛋2枚#步骤1：佛手清水浸泡，洗净；鸡蛋洗净外壳。\r\n\r\n　　步骤2：锅置中火上，入水适量，放入鸡蛋，煮至蛋熟，捞出后去掉蛋壳，放入锅中，转小火与佛手、茉莉花同煮20分钟即可。#疏肝理气、醒脾固涩。适宜胃及十二指肠溃疡者食用。#茉莉花辛香偏温，燥结便秘者慎食。');
INSERT INTO `food_conbination` VALUES (9, '茯苓天麻蒸鲤鱼', '8,18,28,38,48,58,68', 'https://th.bing.com/th/id/R.2a58a62a158a6a8a1600bf37e0d0f804?rik=XpkbpxAEK1X3nw&riu=http%3a%2f%2fimg95.699pic.com%2fphoto%2f50065%2f1943.jpg_wh860.jpg&ehk=ue2qN%2fTIQJF9ahmgF%2bxWbOVts5BWHj40nz452LOr72M%3d&risl=&pid=ImgRaw&r=0', '茯苓、川芎各8克，天麻15克,鲤鱼1条，料酒10毫升，葱、姜各8克，盐3克，鸡精1克#步骤1：鲤鱼宰杀后，去鳞、鳃、内脏，洗净血水；茯苓、川芎洗净，切片；天麻清水泡软，切片，放入鲤鱼腹内；葱、姜洗净，切碎。\r\n\r\n　　步骤2：鲤鱼放入盆中，加姜、葱，适量清水，上笼蒸40分钟，取出盛盘，备用。\r\n\r\n　　步骤3：砂锅置中火上，入水适量，放入茯苓、川芎，加盐、鸡精调味，煎煮30分钟，捞去药渣，汤汁浇于鱼上即可。#活血止痛、平肝熄风。适用于治虚火头痛、眼黑肢麻、神经衰弱、高血压头昏、因风寒湿引起的关节疼痛等症。#活血止痛、平肝熄风。适用于治虚火头痛、眼黑肢麻、神经衰弱、高血压头昏、因风寒湿引起的关节疼痛等症。');
INSERT INTO `food_conbination` VALUES (10, '虫草炖鸡汤', '9,19,29,39,49,59,69', 'https://th.bing.com/th/id/R.9211e458231b8a0e18dc3f8f969c8323?rik=cWixC4RheF8jrg&riu=http%3a%2f%2fpic.ntimg.cn%2f20130813%2f10809754_151404346198_2.jpg&ehk=RfXeNaXxjGvPm4x88O5%2fH0cHTqUIiz3nS0zbQ1IX2VY%3d&risl=&pid=ImgRaw&r=0', '冬虫夏草8克,母鸡1只#步骤1：母鸡宰杀后去内脏、皮毛、头、爪，洗净血水；虫草清水泡软，洗净。\r\n\r\n　　步骤2：汤煲置火上，入水适量，大火煮沸后，撇去浮沫，放入虫草，转小火煲至及肉烂熟即可。#益气温阳、补肾填精。适用于肾气亏虚而致的头昏乏力、气短喘促、腰膝酸软、心慌汗多等症。#吃肉喝汤，每日一次，可用2~3日。');
INSERT INTO `food_conbination` VALUES (11, '牛肚煲土豆', '12,15,24,26,37,38,44,41,59,61,70', 'https://th.bing.com/th/id/OIP.NdcdyjbBPMoBSgDwL0ruqAHaE8?pid=ImgDet&rs=1', '牛肚150克,土豆80克，葱、姜各10克，盐5克，植物油8毫升。#步骤1：牛肚去筋膜，洗净，入沸水煮至八成熟，切成小条，放入盘中备用；土豆去皮，洗净，切块；姜洗净，切片；葱洗净，切段。\r\n\r\n　　步骤2：炒锅置大火上，入油烧至六成热，加入姜片、葱段爆香，放入牛肚、土豆翻炒5分钟，加适量清水沸煮30分钟，加盐调味即可。#补气养血、健脾消食。适宜病后虚赢、气血不足、营养不良、脾胃薄弱者食用。#因牛肚不易嚼烂，牙齿发育不全的小孩及老人少食或不食。');
INSERT INTO `food_conbination` VALUES (12, '橄榄酸梅汁', '10,20,51,66', 'https://img95.699pic.com/photo/50177/3313.jpg_wh860.jpg', '鲜橄榄50克,酸梅8克，白砂糖3克#鲜橄榄、酸梅洗净，稍捣烂，放砂锅中，加清水适量，置火上，大火煮沸后转小火煎煮20分钟，去渣留汁，加白砂糖调味即可。#清热解毒、生津止渴。适用于急性咽炎。#代茶饮用，每日2次。');
INSERT INTO `food_conbination` VALUES (13, '双耳羹', '3,4,5,6', 'https://th.bing.com/th/id/R.e311a0a0213ad87794bc2ee1aa3be309?rik=Pwg%2blOShMA6Kdg&riu=http%3a%2f%2fwww.lzbs.com.cn%2fms%2fattachement%2fjpg%2fsite2%2f20141130%2f7427ea390b3d15e5816a34.jpg&ehk=E4GIUYav1fVp2UxA8vV0ksJtSYwAUYrWXJryI3SdkLQ%3d&risl=&pid=ImgRaw&r=0', '银耳、黑木耳各8克,冰糖10克#步骤1：银耳温水泡发，润透，去蒂，洗净，撕成小朵；黑木耳泡发，润透，洗净，撕成小朵；冰糖研碎。\r\n\r\n　　步骤2：蒸锅置火上，蒸碗中放入银耳、木耳、冰糖，注入适量水，上笼蒸1小时至熟即可。#滋阴补虚、益肾润肺。适用于虚、气阴两伤、口干乏力、舌红少津等症。#每日2次');
INSERT INTO `food_conbination` VALUES (14, '荷叶粥', '7,15,16,28,33,45', 'https://s3.cdn.xiangha.com/zhishi/201411/261138095906.jpg/NjQwX2MyXzA', '鲜荷叶1张,大米100克#步骤1：荷叶洗净；大米淘洗干净，放入砂锅，入水适量，浸泡30分钟。\r\n\r\n　　步骤2：砂锅置火上，大火煮沸转小火熬煮至粥将成时，盖上鲜荷叶焖煮片刻即可。#清暑散瘀、减肥宁心。#每日2次，温热服。');
INSERT INTO `food_conbination` VALUES (15, '薄荷猪肺汤', '21,62,66,69', 'https://cp1.douguo.com/upload/caiku/5/b/a/yuan_5b929bcc16589aba8e08bd532a9a08ba.jpeg', '牛蒡子8克,薄荷8克，猪肺150克，盐3克#步骤1：猪肺洗净，切成块状，用手挤水，除泡沫;薄荷、牛蒡子洗净，润透。\r\n\r\n　　步骤2：汤煲置火上，入水适量，放入猪肺大火煮沸后转小火煲煮30分钟，放入薄荷、牛蒡子煮5分钟，加盐调味即可。#疏风清热、解毒利咽。适用于急性扁桃体炎。#饮汤食猪肺，每日2次。');
INSERT INTO `food_conbination` VALUES (16, '蒜蓉羊肉片', '5,6,45,55,65,73', 'https://st-cn.meishij.net/rs/23/159/2414773/n2414773_157632922521614.jpg', '羊肉200克，蒜15克,熟植物油、生抽各8毫升，盐、味精各2克#步骤1：羊肉洗净，入沸水中煮熟，凉凉切片，放入大盘；蒜去皮洗净，捣烂。\r\n\r\n　　步骤2：大蒜放入大盘内，加熟植物油、生抽、盐、味精拌匀即可。#温肾助阳。适用于肾阳虚所致的阳痿、腰膝酸软、遗尿或尿频等症。#大蒜味辛辣，故凡肺、胃有热，血虚目眩，以及狐臭病人均忌用。');
INSERT INTO `food_conbination` VALUES (17, '滋补牛腩', '11,12,15,45,55,65,69', 'https://cp1.douguo.com/upload/caiku/0/d/5/yuan_0d6eb58701889c66bc40eccb713ce0d5.jpg', '当归、党参、枸杞、天麻、黄芪、杜仲、肉苁蓉、锁阳各5克,牛腩、白萝卜各150克，盐3克，味精1克#步骤1：牛腩洗净，切块，入沸水中汆烫，捞出;白萝卜洗净，切片。\r\n\r\n　　步骤2：锅置火上，入水适量，下入牛腩、所有药材，大火煮沸后，转小火炖煮2小时，放入白萝卜，煮熟，加盐、味精调味即可。#补血益气、强身健骨。适宜血虚体弱、四肢冰冷者食用。#佐餐食用。');
INSERT INTO `food_conbination` VALUES (18, '松仁炒玉米', '70,71,72,73,74,75', 'https://i8.meishichina.com/attachment/recipe/2017/02/25/2017022514880029809589764821.jpg?x-oss-process=style/p800', '松仁20克,玉米粒200克，青椒、红椒各15克，盐5克，味精3克#步骤1：青、红椒洗净，切成粒状；松仁炒香，备用。\r\n\r\n　　步骤2：净锅置火上，入油烧热，加入青、红椒稍炒后，再加入玉米粒炒至入味，放入松仁、盐、味精翻炒片刻即可。#滋润肠道、延缓衰老、益肺宁心、提高大脑功能。适用于脾肺气虚、肺燥咳嗽、皮肤干燥、大便干结、高脂血症、高血压、冠心病等症。#滋润肠道、延缓衰老、益肺宁心、提高大脑功能。适用于脾肺气虚、肺燥咳嗽、皮肤干燥、大便干结、高脂血症、高血压、冠心病等症。');
INSERT INTO `food_conbination` VALUES (19, '人参补脾汤', '11,12,14,18,20,29,39,49,59,69', 'https://cp1.douguo.com/upload/caiku/a/7/0/yuan_a7c6eb1894f9051214778907c76df120.jpeg', '人参2克,燕窝6克#步骤1：燕窝去杂质，洗净，切块;人参洗净，切片。\r\n\r\n　　步骤2：砂锅置火上，入水适量，放入燕窝、人参，大火煮沸后转小火煎煮成浓汤。#补益脾胃、增进饮食。适用于泻痢后干呕欲吐、饮食不进等症。#代茶饮。');
INSERT INTO `food_conbination` VALUES (20, '三七鸡肉汤', '20,21,58,68,72,73,74,75', 'https://th.bing.com/th/id/OIP.6HMEtlYrAehrouJ8TQY1CgHaE7?pid=ImgDet&rs=1', '三七10克，黄芪15克，鸡肉30克，姜3克，盐、胡椒粉各1克#步骤1：三七洗净;黄芪洗净，切片i鸡肉洗净，切;姜洗净，切片。\r\n\r\n　　步骤2：砂锅置火上，入水适量，放入鸡肉、姜，大火煮沸后，加入三七、黄芪，转小火熬煮1小时，加盐、胡椒粉调味即可。#活血通络、益气补虚。适宜血虚血瘀者食用。#该药膳有活血去瘀的功效，故孕妇忌用。去药喝汤，分次食用。');
INSERT INTO `food_conbination` VALUES (21, '什锦芹菜', '1,2,3,4,5,6,11,22,33,44,55,66', 'https://th.bing.com/th/id/OIP.chmWLbLOmj86997rnxts9wAAAA?w=294&h=187&c=7&r=0&o=5&pid=1.7', '芹菜200克,胡萝卜丝、葱丝、黄豆芽各50克，脆皮豆腐丝30克，盐3克，味精2克，植物油、香油各10毫升#步骤1：芹菜洗净，择去老茎及叶片，切段;胡萝卜丝、黄豆芽、脆皮豆腐丝洗净沥干。\r\n\r\n　　步骤2：锅置火上，入水煮沸，入盐、芹菜、胡萝卜丝、黄豆芽、脆皮豆腐丝，煮15秒钟捞出。\r\n\r\n　　步骤3：炒锅置火上，入油烧热，下芹菜、胡萝卜丝、葱丝、黄豆芽、豆腐丝煸炒至熟，加盐、味精，香油调味即可。#益气健脾、平肝降压。还适用于疲劳综合征、高血压病、血脂异常等症。#佐餐食用。');
INSERT INTO `food_conbination` VALUES (22, '北芪杞炖乳鸽', '11,21,31,41,51,61,71', 'https://th.bing.com/th/id/OIP.mKeLAHguUNQfbA_ia18r6wHaF8?w=275&h=220&c=7&r=0&o=5&pid=1.7', '北芪20克,枸杞20克，乳鸽1只#步骤1：乳鸽去毛、内脏，洗净切块;北芪、枸杞洗净，润透。\r\n\r\n　　步骤2：乳鸽、北芪、枸杞放入炖盅，隔火炖熟即可。#适用于疖肿溃破期、局部肿痛减轻、逐渐变软、中央之脓栓溃破脱出、流出脓液、局部形成溃疡等症。#隔日一次，连用5日，饮汤食鸽肉。');
INSERT INTO `food_conbination` VALUES (23, '木耳莲子羹', '22,333,41,42,43,57,58,59', 'https://th.bing.com/th/id/OIP.2Jgs6DRSO9Xkm0Ltn6j4bAHaLF?w=132&h=197&c=7&r=0&o=5&pid=1.7', '莲子肉15克，干银耳10克,冰糖10克#步骤1：莲子肉、干银耳洗净，润透，放入锅中。\r\n\r\n　　步骤2：加水适量，大火煮沸后转小火炖至烂熟，加入冰糖调味即可。#补脾胃、滋肺阴。#每日晨起后食用，食后最好稍微活动。');
INSERT INTO `food_conbination` VALUES (24, '养肝鸡蛋羹', '61,62,63,67,68,69', 'https://th.bing.com/th/id/OIP.sN2mE0fNmOxinegAKROnhAHaFj?w=234&h=180&c=7&r=0&o=5&pid=1.7', '川楝子10克,菠菜70克，鸡蛋2枚，虾皮15克，盐2克，胡椒粉1克，葱末3克，香油2毫升#步骤1：川楝子洗净，放入砂锅，加水适量，大火煮沸后转小火煎煮30分钟，去渣留汁;鸡蛋入碗里搅匀;菠菜洗净，焯水，入冷水中浸凉，捞出沥干，剁咸菜泥;虾皮洗净，沥水。\r\n\r\n　　步骤2：将鸡蛋液、温水适量、川楝子药汁倒入碗里，放入菠菜泥、胡椒粉、盐、虾皮、葱末搅拌均匀，上笼蒸15分钟，淋上香油即可。#滋阴润燥、补虚益气、清除湿热、平抑肝火。适用于改善湿热侵袭、气滞不通所致的腹部胀满，也可作为乙肝患者在春季养肝护肝的调养品。#可单食，也可佐餐食用。');
INSERT INTO `food_conbination` VALUES (25, '茭白虾皮', '14,15,16,24,25,26', 'https://th.bing.com/th/id/OIP.ElE2Z-wxBLvH9CjyoW7ypgHaE9?w=269&h=180&c=7&r=0&o=5&pid=1.7', '茭白250克,茭白250克#步骤1：茭白洗净，刨去老根后切滚刀块，入沸水锅中，加盐，焯煮2分钟后取出凉凉;虾皮用温水浸泡5分钟，取出沥干水分。\r\n\r\n　　步骤2：茭白、虾皮同入盘中，加盐、味精、白砂糖和香油，拌匀即可。#清热除烦、醒脾开胃、催乳降压。适用于食欲不振、妇女产后缺乳、高血压病等症，非常适合春季养生调理。#佐餐会用。');
INSERT INTO `food_conbination` VALUES (26, '白参牛柳', '34,35,36,31,32,33', 'https://th.bing.com/th/id/OIP.s1AYOG40bSsG9CH37cCLWQHaEi?w=266&h=180&c=7&r=0&o=5&pid=1.7', '白参3克,牛里脊肉350克，青尖椒100克，红椒30克，姜末、葱末、盐各3克，味精、白砂糖各2克，老抽5毫升，料酒、蚝油、水淀粉各10毫升，植物油15毫升。#步骤1：白参洗净，润透切片，入锅，加水大火煮沸后转小火煎煮50分钟，取浓缩汁备用;青尖椒、红椒洗净切段;牛里脊肉洗净，切成条状，加盐、味精、料酒，腌制15分钟。\r\n\r\n　　步骤2：锅置火上，入油烧至四成热，下入牛里脊肉过油，约10秒钟，捞出沥油。\r\n\r\n　　步骤3：锅留底油，放姜、葱炒香，下入青红椒，大火翻炒数秒，烹入料酒、老抽，加味精、白砂糖、蚝油，加牛里脊肉翻炒至熟，兑入白参汁炒匀，加水淀粉勾芡即可。#益气养血、补益元气。适用于贫血、神疲乏力、容易感冒等症。#佐餐食用。');
INSERT INTO `food_conbination` VALUES (27, '扁豆粥', '10,20,30,40,50,60,70', 'https://th.bing.com/th/id/OIP.ft3NU77LcTXHgso3jsPOqAHaE7?w=242&h=180&c=7&r=0&o=5&pid=1.7', '炒白扁豆50克,粳米80克，红糖10克。#步骤1：白扁豆用温水浸泡24小时，粳米淘洗干净。\r\n\r\n　　步骤2：内下入粳米，加水和白扁豆，煮成粥即可。#健脾养胃、清暑止泻。适用于脾胃虚弱所致的慢性腹泻、暑湿泻痢、夏季烦渴等症。#夏秋季早晚食用，加红糖调味。');
INSERT INTO `food_conbination` VALUES (28, '冬虫夏草炖花胶汤', '130,31,32,33,34,35,36,37,38,39', 'https://th.bing.com/th/id/OIP.hJErnFWxBnXvinxMyeqDCAHaEc?w=280&h=180&c=7&r=0&o=5&pid=1.7', '冬虫夏草10克,花胶100克，姜片3克，盐2克#步骤1：花胶泡发，切块;冬虫夏草洗净，润透，冰糖打成碎屑。\r\n\r\n　　步骤2：把冬虫夏草、花胶、生姜片一齐放入炖盅内，小火隔水炖煮炖3小时，食前加盐调味即可。#补肾益精、滋养筋脉。适宜肾虚滑精、酸软、身体虚弱者食用。#日常饮服。');
INSERT INTO `food_conbination` VALUES (29, '人参枸杞红枣粥', '41,42,43,45,47,49,50,59,69', 'https://th.bing.com/th/id/OIP.900OFmp1QRw2VOLjlYZxzAHaE7?w=290&h=193&c=7&r=0&o=5&pid=1.7', '人参3克，枸杞10克,红枣5枚，粳米80克，红糖10克#步骤1：人参、枸杞、红枣洗净，放入锅煎取汁液;粳米淘洗干净。\r\n\r\n　　步骤2：砂锅置火上，入水适量，兑入药液，下入粳米熬煮成粥，加入红糖，搅拌溶化即可。#补肾助阳。适用于脾肾阳虚所致的咳嗽、面色无华、形寒肢冷、食少纳差、大便溏泻、小便清长等症。#每日一次，或早或晚服用。');
INSERT INTO `food_conbination` VALUES (30, '青梅玫瑰糕', '6,25,26,36,46,56,66,74', 'https://th.bing.com/th/id/OIP.pCTq1-inm_qQCCHUzcKYvAHaE8?w=274&h=183&c=7&r=0&o=5&pid=1.7', '鲜黄玫瑰花120克,糯米粉450克，白砂糖120克，青梅80克，椰丝20克#步骤1：青梅去核，加水适量，用搅拌机打成汁，放入糯米粉300克、白砂糖80克，揉匀成绿粉团;新鲜黄玫瑰花、糯米粉、白砂糖揉成黄粉团。\r\n\r\n　　步骤2：绿粉团、黄粉团做成中黄外绿的糕，周围撒上椰丝，上笼屉蒸20分钟至熟即可。#疏肝解郁、理气开胃。适用于胸闷、乳胀、食欲不振等症。#做点心食用。');

SET FOREIGN_KEY_CHECKS = 1;
