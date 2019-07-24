/*
 Navicat Premium Data Transfer

 Source Server         : Composition
 Source Server Type    : MySQL
 Source Server Version : 80015
 Source Host           : localhost:3306
 Source Schema         : composition

 Target Server Type    : MySQL
 Target Server Version : 80015
 File Encoding         : 65001

 Date: 24/07/2019 09:05:46
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for a_tableinfo
-- ----------------------------
DROP TABLE IF EXISTS `a_tableinfo`;
CREATE TABLE `a_tableinfo`  (
  `TableName` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `TableA` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `TableB` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `TableInfo` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CreateDt` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`TableName`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of a_tableinfo
-- ----------------------------
INSERT INTO `a_tableinfo` VALUES ('t_access', '', '', '权限表，用于显示用户对模块的使用权限', '2019-03-15 15:19:04');
INSERT INTO `a_tableinfo` VALUES ('t_choiceanswer', '', '', '闯关模块中的选择题，隶属于关卡下', '2019-03-15 15:21:37');
INSERT INTO `a_tableinfo` VALUES ('t_choicequestion', '', '', '闯关模块中的选择题答案，隶属于选择题问题下', '2019-03-15 15:22:03');
INSERT INTO `a_tableinfo` VALUES ('t_composition', '', '', '作文模块中的作文', '2019-03-15 15:22:30');
INSERT INTO `a_tableinfo` VALUES ('t_composition_medal', 't_composition', 't_medal', '作文与奖章关联表，用于说明作文拥有的奖章关系', '2019-03-15 15:24:14');
INSERT INTO `a_tableinfo` VALUES ('t_compositionpart', '', '', '作文部分，比如:标题，开头，正文，结尾', '2019-03-15 15:29:56');
INSERT INTO `a_tableinfo` VALUES ('t_compositiontype', '', '', '作文类型:叙事文，议论文，散文，小说', '2019-03-15 15:30:25');
INSERT INTO `a_tableinfo` VALUES ('t_compositiontype_part', 't_compositiontype', 't_compositionpart', '关联表，用以说明闯关模块中作文类型与作文部分的关系', '2019-03-15 15:31:26');
INSERT INTO `a_tableinfo` VALUES ('t_fillanswer', '', '', '填空题答案表，隶属于填空题问题下', '2019-03-15 15:31:57');
INSERT INTO `a_tableinfo` VALUES ('t_fillquestion', '', '', '填空题问题表，隶属于关卡下', '2019-03-15 15:32:16');
INSERT INTO `a_tableinfo` VALUES ('t_footmark', '', '', '足迹(评论)，隶属于作文下', '2019-03-15 15:32:50');
INSERT INTO `a_tableinfo` VALUES ('t_grade', '', '', '年级表', '2019-03-15 15:33:04');
INSERT INTO `a_tableinfo` VALUES ('t_grade_compositiontype', 't_grade', 't_compositiontype', '年级与作文类型关联表', '2019-03-15 15:34:43');
INSERT INTO `a_tableinfo` VALUES ('t_like', '', '', '点赞表，隶属于作文', '2019-03-15 15:35:07');
INSERT INTO `a_tableinfo` VALUES ('t_manager', '', '', '管理员表', '2019-03-15 15:35:37');
INSERT INTO `a_tableinfo` VALUES ('t_manager_module', 't_manager', 't_module', '管理员权限表', '2019-03-15 15:35:58');
INSERT INTO `a_tableinfo` VALUES ('t_medal', '', '', '奖章表', '2019-03-15 15:36:11');
INSERT INTO `a_tableinfo` VALUES ('t_module', '', '', '模块表', '2019-03-15 15:36:22');
INSERT INTO `a_tableinfo` VALUES ('t_privilege', '', '', '特权表，辅助会员表使用', '2019-03-15 15:36:50');
INSERT INTO `a_tableinfo` VALUES ('t_stage', '', '', '关卡表', '2019-03-15 15:37:01');
INSERT INTO `a_tableinfo` VALUES ('t_stagetype', '', '', '关卡类型表', '2019-03-15 15:37:12');
INSERT INTO `a_tableinfo` VALUES ('t_statustype', '', '', '状态表', '2019-03-15 15:37:31');
INSERT INTO `a_tableinfo` VALUES ('t_user', '', '', '用户表', '2019-03-15 15:37:40');
INSERT INTO `a_tableinfo` VALUES ('t_user_choiceanswer', 't_user', 't_choiceanswer', '用户的选择题答题记录表', '2019-03-15 15:38:18');
INSERT INTO `a_tableinfo` VALUES ('t_user_fillanswer', 't_user', 't_fillanswer', '用户的填空题答题记录表', '2019-03-15 15:38:40');
INSERT INTO `a_tableinfo` VALUES ('t_user_medal', 't_user', 't_medal', '用户与奖章关联表', '2019-03-15 15:39:06');
INSERT INTO `a_tableinfo` VALUES ('t_user_stage', 't_user', 't_stage', '用户的关卡权限表', '2019-03-15 15:39:30');
INSERT INTO `a_tableinfo` VALUES ('t_user_usertype', 't_user', 't_usertype', '用户与用户类型关联表，用以说明用户是什么用户类型', '2019-03-15 15:40:09');
INSERT INTO `a_tableinfo` VALUES ('t_usertype', '', '', '用户类型表', '2019-03-15 15:40:30');
INSERT INTO `a_tableinfo` VALUES ('t_usertype_module', 't_usertype', 't_module', '用户类型与模块关联表，用以说明用户类型拥有的模块权限', '2019-03-15 15:41:13');
INSERT INTO `a_tableinfo` VALUES ('t_usertype_privilege', 't_usertype', 't_privilege', '用户类型与特权关联表，用以说明用户类型拥有的特权', '2019-03-15 15:41:36');

-- ----------------------------
-- Table structure for a_viewinfo
-- ----------------------------
DROP TABLE IF EXISTS `a_viewinfo`;
CREATE TABLE `a_viewinfo`  (
  `ViewName` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `ModuleID` int(11) NULL DEFAULT NULL,
  `FilterCondition` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ViewInfo` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CreateDt` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`ViewName`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of a_viewinfo
-- ----------------------------
INSERT INTO `a_viewinfo` VALUES ('u_compositionpart', NULL, 'GrageID,CompositonTypeID', '用于查询作文类型下的作文部分列表', NULL);
INSERT INTO `a_viewinfo` VALUES ('u_compositiontype', NULL, 'GrageID', '用于查询年级下的作文类型列表', NULL);
INSERT INTO `a_viewinfo` VALUES ('u_grade', NULL, NULL, '用于查询年级列表', NULL);
INSERT INTO `a_viewinfo` VALUES ('u_moduleaccess', NULL, 'UserTypeID', '用于查询用户的模块权限', NULL);
INSERT INTO `a_viewinfo` VALUES ('u_privilege', NULL, 'UserTypeID', '用于查询用户的会员权限', NULL);
INSERT INTO `a_viewinfo` VALUES ('u_stageanswer', NULL, 'UserAccount,StageID', '用于查询关卡的答案', NULL);
INSERT INTO `a_viewinfo` VALUES ('u_stagelist', NULL, 'UserAccount,GradeID,CompositionTypeID,CompositionPartID', '用于查询关卡列表', NULL);
INSERT INTO `a_viewinfo` VALUES ('u_stagequestion', NULL, 'UserAccount,StageID', '用于查询关卡的问题', NULL);
INSERT INTO `a_viewinfo` VALUES ('u_usertype', NULL, 'Limit 1,UserAccount', '用于查询用户的会员身份', NULL);

-- ----------------------------
-- Table structure for t_access
-- ----------------------------
DROP TABLE IF EXISTS `t_access`;
CREATE TABLE `t_access`  (
  `AccessID` smallint(6) NOT NULL,
  `AccessName` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`AccessID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_access
-- ----------------------------
INSERT INTO `t_access` VALUES (1, '只读');
INSERT INTO `t_access` VALUES (2, '只写');
INSERT INTO `t_access` VALUES (3, '读写');

-- ----------------------------
-- Table structure for t_choiceanswer
-- ----------------------------
DROP TABLE IF EXISTS `t_choiceanswer`;
CREATE TABLE `t_choiceanswer`  (
  `ChoiceQuestionID` int(11) NOT NULL,
  `ChoiceAnswerID` int(11) NOT NULL AUTO_INCREMENT,
  `ChoiceAnswerCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ChoiceAnswerTitle` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'A. B. C. D.',
  `ChoiceAnswerContent` varchar(1000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `IsRightChoiceAnswer` bit(1) NULL DEFAULT NULL,
  `CreateBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CreateDt` datetime(0) NULL DEFAULT NULL,
  `ModifyBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ModifyDt` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`ChoiceAnswerID`) USING BTREE,
  INDEX `fk_ChoiceQuestionID`(`ChoiceQuestionID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_choiceanswer
-- ----------------------------
INSERT INTO `t_choiceanswer` VALUES (1, 1, 'C0001', 'A.', '平静的', b'1', NULL, NULL, NULL, NULL);
INSERT INTO `t_choiceanswer` VALUES (1, 2, 'C0002', 'B.', '吵闹的', b'0', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for t_choicequestion
-- ----------------------------
DROP TABLE IF EXISTS `t_choicequestion`;
CREATE TABLE `t_choicequestion`  (
  `StageID` int(11) NOT NULL,
  `ChoiceQuestionID` int(11) NOT NULL AUTO_INCREMENT,
  `ChoiceQuestionCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ChoiceQuestionStatus` smallint(6) NULL DEFAULT 1,
  `ChoiceQuestionContent` varchar(300) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ChoiceAnswerDirection` smallint(1) NULL DEFAULT NULL COMMENT '0前1后-1不设立答案',
  `IsFinalChoiceQuestion` bit(1) NULL DEFAULT NULL,
  `CreateBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CreateDt` datetime(0) NULL DEFAULT NULL,
  `ModifyBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ModifyDt` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`ChoiceQuestionID`) USING BTREE,
  INDEX `StageID`(`StageID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_choicequestion
-- ----------------------------
INSERT INTO `t_choicequestion` VALUES (1, 1, 'C0001', 3, '河道里', 1, b'0', NULL, NULL, NULL, NULL);
INSERT INTO `t_choicequestion` VALUES (1, 2, 'C0002', 3, '水，从冬天的素净中苏醒过来，被大自然的色彩打扮得青青翠翠。', -1, b'1', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for t_composition
-- ----------------------------
DROP TABLE IF EXISTS `t_composition`;
CREATE TABLE `t_composition`  (
  `CompositionID` int(11) NOT NULL AUTO_INCREMENT,
  `CompositionCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CompositionStatus` smallint(6) NULL DEFAULT 1,
  `UserAccount` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SourceTypeID` int(11) NULL DEFAULT NULL,
  `CompositionTypeID` int(11) NULL DEFAULT NULL,
  `Author` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CompositionTitle` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CompositionContent` varchar(5000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CreateBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CreateDt` datetime(0) NULL DEFAULT NULL,
  `ModifyBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ModifyDt` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`CompositionID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_composition_medal
-- ----------------------------
DROP TABLE IF EXISTS `t_composition_medal`;
CREATE TABLE `t_composition_medal`  (
  `CompositionID` int(11) NOT NULL,
  `MedalID` int(11) NOT NULL,
  `GoldContent` float(4, 3) NULL DEFAULT NULL,
  `CreateBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CreateDt` datetime(0) NULL DEFAULT NULL,
  `ModifyBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ModifyDt` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`CompositionID`, `MedalID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_compositionpart
-- ----------------------------
DROP TABLE IF EXISTS `t_compositionpart`;
CREATE TABLE `t_compositionpart`  (
  `CompositionPartID` int(11) NOT NULL AUTO_INCREMENT,
  `CompositionPartCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CompositionPartName` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CompositionPartStatus` smallint(6) NULL DEFAULT 1,
  `CreateBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CreateDt` datetime(0) NULL DEFAULT NULL,
  `ModifyBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ModifyDt` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`CompositionPartID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_compositionpart
-- ----------------------------
INSERT INTO `t_compositionpart` VALUES (1, 'C0001', '题目', 3, NULL, NULL, NULL, NULL);
INSERT INTO `t_compositionpart` VALUES (2, 'C0002', '开头', 3, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for t_compositiontype
-- ----------------------------
DROP TABLE IF EXISTS `t_compositiontype`;
CREATE TABLE `t_compositiontype`  (
  `CompositionTypeID` int(11) NOT NULL AUTO_INCREMENT,
  `CompositionTypeCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CompositionTypeName` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CompositionTypeStatus` smallint(6) NULL DEFAULT 1,
  `CreateBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CreateDt` datetime(0) NULL DEFAULT NULL,
  `ModifyBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ModifyDt` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`CompositionTypeID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_compositiontype
-- ----------------------------
INSERT INTO `t_compositiontype` VALUES (1, 'C0001', '记叙文', 3, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for t_compositiontype_part
-- ----------------------------
DROP TABLE IF EXISTS `t_compositiontype_part`;
CREATE TABLE `t_compositiontype_part`  (
  `CompositionTypeID` int(11) NOT NULL,
  `CompositionPartID` int(11) NOT NULL,
  `CreateBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CreateDt` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`CompositionTypeID`, `CompositionPartID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_compositiontype_part
-- ----------------------------
INSERT INTO `t_compositiontype_part` VALUES (1, 1, NULL, NULL);
INSERT INTO `t_compositiontype_part` VALUES (1, 2, NULL, NULL);

-- ----------------------------
-- Table structure for t_fillanswer
-- ----------------------------
DROP TABLE IF EXISTS `t_fillanswer`;
CREATE TABLE `t_fillanswer`  (
  `FillQuestionID` int(11) NOT NULL,
  `FillAnswerID` int(11) NOT NULL AUTO_INCREMENT,
  `FillAnswerCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `FillAnswerTitle` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '1. 2. 3. 4.',
  `FillAnswerContent` varchar(1000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CreateBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CreateDt` datetime(0) NULL DEFAULT NULL,
  `ModifyBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ModifyDt` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`FillAnswerID`) USING BTREE,
  INDEX `fk_FillQuestionID`(`FillQuestionID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_fillanswer
-- ----------------------------
INSERT INTO `t_fillanswer` VALUES (1, 1, NULL, '1.', '融化的冰水', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for t_fillquestion
-- ----------------------------
DROP TABLE IF EXISTS `t_fillquestion`;
CREATE TABLE `t_fillquestion`  (
  `StageID` int(11) NOT NULL,
  `FillQuestionID` int(11) NOT NULL AUTO_INCREMENT,
  `FillQuestionCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `FillQuestionStatus` smallint(6) NULL DEFAULT 1,
  `FillQuestionContent` varchar(300) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `FillAnswerDirection` smallint(6) NULL DEFAULT NULL COMMENT '0前1后-1不设立答案',
  `FillAnswerLength` int(11) NULL DEFAULT NULL,
  `IsFinalFillQuestion` bit(1) NULL DEFAULT NULL,
  `CreateBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CreateDt` datetime(0) NULL DEFAULT NULL,
  `ModifyBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ModifyDt` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`FillQuestionID`) USING BTREE,
  INDEX `StageID`(`StageID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_fillquestion
-- ----------------------------
INSERT INTO `t_fillquestion` VALUES (2, 1, NULL, 3, '春天来了！你看，', 1, 10, b'0', NULL, NULL, NULL, NULL);
INSERT INTO `t_fillquestion` VALUES (2, 2, NULL, 3, '把小溪弄醒了。', -1, NULL, b'1', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for t_footmark
-- ----------------------------
DROP TABLE IF EXISTS `t_footmark`;
CREATE TABLE `t_footmark`  (
  `FootmarkID` int(11) NOT NULL AUTO_INCREMENT,
  `UserAccount` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `CompositionID` int(11) NOT NULL,
  `OriginalText` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `FootmarkContent` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CreateBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CreateDt` datetime(0) NULL DEFAULT NULL,
  `ModifyBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ModifyDt` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`FootmarkID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_grade
-- ----------------------------
DROP TABLE IF EXISTS `t_grade`;
CREATE TABLE `t_grade`  (
  `GradeID` int(11) NOT NULL AUTO_INCREMENT,
  `GradeCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `GradeName` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `GradeStatus` smallint(6) NULL DEFAULT 1,
  `CreateBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CreateDt` datetime(0) NULL DEFAULT NULL,
  `ModifyBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ModifyDt` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`GradeID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_grade
-- ----------------------------
INSERT INTO `t_grade` VALUES (1, 'C0001', '一年级', 3, NULL, NULL, NULL, NULL);
INSERT INTO `t_grade` VALUES (2, 'C0002', '二年级', 3, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for t_grade_compositiontype
-- ----------------------------
DROP TABLE IF EXISTS `t_grade_compositiontype`;
CREATE TABLE `t_grade_compositiontype`  (
  `GradeID` int(11) NOT NULL,
  `CompositionTypeID` int(11) NOT NULL,
  `CreateBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CreateDt` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`GradeID`, `CompositionTypeID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_grade_compositiontype
-- ----------------------------
INSERT INTO `t_grade_compositiontype` VALUES (1, 1, NULL, NULL);

-- ----------------------------
-- Table structure for t_like
-- ----------------------------
DROP TABLE IF EXISTS `t_like`;
CREATE TABLE `t_like`  (
  `LikeID` int(11) NOT NULL AUTO_INCREMENT,
  `UserAccount` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `CompositionID` int(11) NOT NULL,
  `BelikedUserAccount` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `CreateDt` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`LikeID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_manager
-- ----------------------------
DROP TABLE IF EXISTS `t_manager`;
CREATE TABLE `t_manager`  (
  `ManagerAccount` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `ManagerPassword` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CreateBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CreateDt` datetime(0) NULL DEFAULT NULL,
  `ModifyBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ModifyDt` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`ManagerAccount`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_manager
-- ----------------------------
INSERT INTO `t_manager` VALUES ('Perry', 'TT119500', 'Perry', '2019-03-13 16:49:28', NULL, NULL);
INSERT INTO `t_manager` VALUES ('Sinre', 'TT119500', 'Perry', '2019-03-08 00:00:00', NULL, NULL);

-- ----------------------------
-- Table structure for t_manager_module
-- ----------------------------
DROP TABLE IF EXISTS `t_manager_module`;
CREATE TABLE `t_manager_module`  (
  `ManagerAccount` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `ModuleID` int(11) NOT NULL,
  `AccessID` smallint(6) NULL DEFAULT 3,
  `CreateBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CreateDt` datetime(0) NULL DEFAULT NULL,
  `ModifyBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ModifyDt` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`ManagerAccount`, `ModuleID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_manager_module
-- ----------------------------
INSERT INTO `t_manager_module` VALUES ('Perry', 0, 3, 'Perry', '2019-03-08 00:00:00', NULL, NULL);
INSERT INTO `t_manager_module` VALUES ('Perry', 1, 3, 'Perry', '2019-03-08 00:00:00', NULL, NULL);
INSERT INTO `t_manager_module` VALUES ('Perry', 2, 3, 'Perry', '2019-03-08 00:00:00', NULL, NULL);
INSERT INTO `t_manager_module` VALUES ('Sinre', 0, 3, 'Perry', '2019-03-08 00:00:00', NULL, NULL);
INSERT INTO `t_manager_module` VALUES ('Sinre', 1, 3, 'Perry', '2019-03-08 00:00:00', NULL, NULL);

-- ----------------------------
-- Table structure for t_medal
-- ----------------------------
DROP TABLE IF EXISTS `t_medal`;
CREATE TABLE `t_medal`  (
  `MedalID` int(11) NOT NULL AUTO_INCREMENT,
  `MedalCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `MedalName` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `MedalTypeID` int(11) NULL DEFAULT NULL COMMENT '用户奖章，作文奖章',
  `MedalStatus` smallint(6) NULL DEFAULT NULL,
  `CreateBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CreateDt` datetime(0) NULL DEFAULT NULL,
  `ModifyBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ModifyDt` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`MedalID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_medal
-- ----------------------------
INSERT INTO `t_medal` VALUES (1, '00001', '创新铜奖', 1, 1, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for t_module
-- ----------------------------
DROP TABLE IF EXISTS `t_module`;
CREATE TABLE `t_module`  (
  `ModuleID` int(11) NOT NULL AUTO_INCREMENT,
  `ModuleCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ModuleName` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ModuleStatus` smallint(6) NULL DEFAULT 1,
  `CreateBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CreateDt` datetime(0) NULL DEFAULT NULL,
  `ModifyBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ModifyDt` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`ModuleID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_module
-- ----------------------------
INSERT INTO `t_module` VALUES (1, 'Grade', '年级', 3, 'Perry', '2019-03-08 00:00:00', '', '2019-03-08 00:00:00');
INSERT INTO `t_module` VALUES (2, 'CompositionType', '作文类型', 3, 'Perry', '2019-03-08 00:00:00', NULL, NULL);
INSERT INTO `t_module` VALUES (3, 'Manager', '管理员', 3, '', '2019-03-08 00:00:00', NULL, NULL);

-- ----------------------------
-- Table structure for t_privilege
-- ----------------------------
DROP TABLE IF EXISTS `t_privilege`;
CREATE TABLE `t_privilege`  (
  `PrivilegeID` int(11) NOT NULL AUTO_INCREMENT,
  `PrivilegeCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `PrivilegeName` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `PrivilegeStatus` smallint(6) NULL DEFAULT NULL,
  `CreateBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CreateDt` datetime(0) NULL DEFAULT NULL,
  `ModifyBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ModifyDt` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`PrivilegeID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_privilege
-- ----------------------------
INSERT INTO `t_privilege` VALUES (1, NULL, '成长速度', 3, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for t_stage
-- ----------------------------
DROP TABLE IF EXISTS `t_stage`;
CREATE TABLE `t_stage`  (
  `GradeID` int(11) NOT NULL,
  `CompositionTypeID` int(11) NOT NULL,
  `CompositionPartID` int(11) NOT NULL,
  `StageID` int(11) NOT NULL AUTO_INCREMENT,
  `StageTypeID` int(11) NOT NULL COMMENT '关卡类型(选择题,填空题..)',
  `StageCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `StageName` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `StageStatus` smallint(6) NULL DEFAULT 1,
  `CreateBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CreateDt` datetime(0) NULL DEFAULT NULL,
  `ModifyBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ModifyDt` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`StageID`) USING BTREE,
  INDEX `GradeID_2`(`GradeID`, `CompositionTypeID`, `CompositionPartID`) USING BTREE,
  INDEX `StageTypeID`(`StageTypeID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_stage
-- ----------------------------
INSERT INTO `t_stage` VALUES (1, 1, 1, 1, 1, NULL, '第一关', 3, NULL, NULL, NULL, NULL);
INSERT INTO `t_stage` VALUES (1, 1, 1, 2, 2, NULL, '第二关', 3, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for t_stagetype
-- ----------------------------
DROP TABLE IF EXISTS `t_stagetype`;
CREATE TABLE `t_stagetype`  (
  `StageTypeID` int(11) NOT NULL AUTO_INCREMENT,
  `StageTypeCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `StageTypeName` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `StageTypeStatus` smallint(6) NULL DEFAULT 1,
  `CreateBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CreateDt` datetime(0) NULL DEFAULT NULL,
  `ModifyBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ModifyDt` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`StageTypeID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_stagetype
-- ----------------------------
INSERT INTO `t_stagetype` VALUES (1, NULL, '选择题', 3, NULL, NULL, NULL, NULL);
INSERT INTO `t_stagetype` VALUES (2, NULL, '填空题', 3, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for t_statustype
-- ----------------------------
DROP TABLE IF EXISTS `t_statustype`;
CREATE TABLE `t_statustype`  (
  `StatusID` smallint(6) NOT NULL,
  `StatusName` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`StatusID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_statustype
-- ----------------------------
INSERT INTO `t_statustype` VALUES (-1, '停用');
INSERT INTO `t_statustype` VALUES (1, '草稿');
INSERT INTO `t_statustype` VALUES (2, '提交');
INSERT INTO `t_statustype` VALUES (3, '审核');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `UserAccount` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `UserPassword` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CreateBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CreateDt` datetime(0) NULL DEFAULT NULL,
  `ModifyBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ModifyDt` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`UserAccount`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('Perry', 'TT119500', NULL, NULL, NULL, NULL);
INSERT INTO `t_user` VALUES ('Sinre', 'sinre', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for t_user_choiceanswer
-- ----------------------------
DROP TABLE IF EXISTS `t_user_choiceanswer`;
CREATE TABLE `t_user_choiceanswer`  (
  `UserAccount` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `StageID` int(11) NOT NULL,
  `ChoiceQuestionID` int(11) NOT NULL,
  `ChoiceAnswerID` int(11) NOT NULL,
  `CreateBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CreateDt` datetime(0) NULL DEFAULT NULL,
  `ModifyBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ModifyDt` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`UserAccount`, `ChoiceQuestionID`, `StageID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user_choiceanswer
-- ----------------------------
INSERT INTO `t_user_choiceanswer` VALUES ('Perry', 1, 1, 1, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for t_user_fillanswer
-- ----------------------------
DROP TABLE IF EXISTS `t_user_fillanswer`;
CREATE TABLE `t_user_fillanswer`  (
  `UserAccount` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `StageID` int(11) NOT NULL,
  `FillQuestionID` int(11) NOT NULL,
  `FillAnswerContent` varchar(300) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `CreateBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CreateDt` datetime(0) NULL DEFAULT NULL,
  `ModifyBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ModifyDt` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`UserAccount`, `StageID`, `FillQuestionID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user_fillanswer
-- ----------------------------
INSERT INTO `t_user_fillanswer` VALUES ('Perry', 2, 1, '闹腾的鱼儿', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for t_user_medal
-- ----------------------------
DROP TABLE IF EXISTS `t_user_medal`;
CREATE TABLE `t_user_medal`  (
  `UserAccount` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `MedalID` int(11) NOT NULL,
  `GoldContent` float(4, 3) NULL DEFAULT NULL,
  `CreateBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CreateDt` datetime(0) NULL DEFAULT NULL,
  `ModifyBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ModifyDt` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`UserAccount`, `MedalID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_user_stage
-- ----------------------------
DROP TABLE IF EXISTS `t_user_stage`;
CREATE TABLE `t_user_stage`  (
  `UserAccount` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `StageID` int(11) NOT NULL,
  `AccessID` smallint(6) NULL DEFAULT NULL,
  `Progress` smallint(6) NULL DEFAULT NULL COMMENT '闯关进度',
  `CreateBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CreateDt` datetime(0) NULL DEFAULT NULL,
  `ModifyBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ModifyDt` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`UserAccount`, `StageID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user_stage
-- ----------------------------
INSERT INTO `t_user_stage` VALUES ('Perry', 1, 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `t_user_stage` VALUES ('Perry', 2, 3, 1, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for t_user_usertype
-- ----------------------------
DROP TABLE IF EXISTS `t_user_usertype`;
CREATE TABLE `t_user_usertype`  (
  `UserAccount` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `UserTypeID` int(11) NOT NULL,
  `StartDt` datetime(0) NULL DEFAULT NULL,
  `EndDt` datetime(0) NULL DEFAULT NULL,
  `CreateBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CreateDt` datetime(0) NULL DEFAULT NULL,
  `ModifyBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ModifyDt` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`UserAccount`, `UserTypeID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user_usertype
-- ----------------------------
INSERT INTO `t_user_usertype` VALUES ('Perry', 1, '2019-03-21 00:00:00', '2099-12-31 00:00:00', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for t_usertype
-- ----------------------------
DROP TABLE IF EXISTS `t_usertype`;
CREATE TABLE `t_usertype`  (
  `UserTypeID` int(11) NOT NULL AUTO_INCREMENT,
  `UserTypeCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `UserTypeName` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `UserTypeStatus` smallint(6) NULL DEFAULT 1,
  `PriorityLevel` smallint(6) NULL DEFAULT 1,
  `CreateBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CreateDt` datetime(0) NULL DEFAULT NULL,
  `ModifyBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ModifyDt` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`UserTypeID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_usertype
-- ----------------------------
INSERT INTO `t_usertype` VALUES (1, '0001', '普通会员', 3, 1, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for t_usertype_module
-- ----------------------------
DROP TABLE IF EXISTS `t_usertype_module`;
CREATE TABLE `t_usertype_module`  (
  `UserTypeID` int(11) NOT NULL,
  `ModuleID` int(11) NOT NULL,
  `AccessID` smallint(6) NULL DEFAULT NULL,
  `CreateBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CreateDt` datetime(0) NULL DEFAULT NULL,
  `ModifyBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ModifyDt` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`UserTypeID`, `ModuleID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_usertype_module
-- ----------------------------
INSERT INTO `t_usertype_module` VALUES (1, 1, 3, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for t_usertype_privilege
-- ----------------------------
DROP TABLE IF EXISTS `t_usertype_privilege`;
CREATE TABLE `t_usertype_privilege`  (
  `UserTypeID` int(11) NOT NULL,
  `PrivilegeID` int(11) NOT NULL,
  `PrivilegeQty` float(4, 3) NULL DEFAULT NULL,
  `CreateBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CreateDt` datetime(0) NULL DEFAULT NULL,
  `ModifyBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ModifyDt` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`UserTypeID`, `PrivilegeID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_usertype_privilege
-- ----------------------------
INSERT INTO `t_usertype_privilege` VALUES (1, 1, 1.000, NULL, NULL, NULL, NULL);

-- ----------------------------
-- View structure for u_compositionpart
-- ----------------------------
DROP VIEW IF EXISTS `u_compositionpart`;
CREATE ALGORITHM = UNDEFINED DEFINER = `root`@`localhost` SQL SECURITY DEFINER VIEW `u_compositionpart` AS select `b`.`GradeID` AS `GradeID`,`b`.`GradeName` AS `GradeName`,`c`.`CompositionTypeID` AS `CompositionTypeID`,`c`.`CompositionTypeName` AS `CompositionTypeName`,`e`.`CompositionPartID` AS `CompositionPartID`,`e`.`CompositionPartName` AS `CompositionPartName` from ((((`t_grade_compositiontype` `a` join `t_grade` `b` on(((`a`.`GradeID` = `b`.`GradeID`) and (`b`.`GradeStatus` = 3)))) join `t_compositiontype` `c` on(((`a`.`CompositionTypeID` = `c`.`CompositionTypeID`) and (`c`.`CompositionTypeStatus` = 3)))) join `t_compositiontype_part` `d` on((`c`.`CompositionTypeID` = `d`.`CompositionTypeID`))) join `t_compositionpart` `e` on(((`d`.`CompositionPartID` = `e`.`CompositionPartID`) and (`e`.`CompositionPartStatus` = 3)))) order by `e`.`CompositionPartCode`;

-- ----------------------------
-- View structure for u_compositiontype
-- ----------------------------
DROP VIEW IF EXISTS `u_compositiontype`;
CREATE ALGORITHM = UNDEFINED DEFINER = `root`@`localhost` SQL SECURITY DEFINER VIEW `u_compositiontype` AS select `b`.`GradeID` AS `GradeID`,`b`.`GradeName` AS `GradeName`,`c`.`CompositionTypeID` AS `CompositionTypeID`,`c`.`CompositionTypeName` AS `CompositionTypeName` from ((`t_grade_compositiontype` `a` join `t_grade` `b` on(((`a`.`GradeID` = `b`.`GradeID`) and (`b`.`GradeStatus` = 3)))) join `t_compositiontype` `c` on(((`a`.`CompositionTypeID` = `c`.`CompositionTypeID`) and (`c`.`CompositionTypeStatus` = 3)))) order by `c`.`CompositionTypeCode`;

-- ----------------------------
-- View structure for u_grade
-- ----------------------------
DROP VIEW IF EXISTS `u_grade`;
CREATE ALGORITHM = UNDEFINED DEFINER = `root`@`localhost` SQL SECURITY DEFINER VIEW `u_grade` AS select `t_grade`.`GradeID` AS `GradeID`,`t_grade`.`GradeName` AS `GradeName` from `t_grade` where (`t_grade`.`GradeStatus` = 3) order by `t_grade`.`GradeCode`;

-- ----------------------------
-- View structure for u_moduleaccess
-- ----------------------------
DROP VIEW IF EXISTS `u_moduleaccess`;
CREATE ALGORITHM = UNDEFINED DEFINER = `root`@`localhost` SQL SECURITY DEFINER VIEW `u_moduleaccess` AS select `b`.`UserTypeID` AS `UserTypeID`,`b`.`UserTypeName` AS `UserTypeName`,`c`.`ModuleID` AS `ModuleID`,`c`.`ModuleName` AS `ModuleName`,`a`.`AccessID` AS `AccessID` from ((`t_usertype_module` `a` join `t_usertype` `b` on(((`a`.`UserTypeID` = `b`.`UserTypeID`) and (`b`.`UserTypeStatus` = 3)))) join `t_module` `c` on(((`a`.`ModuleID` = `c`.`ModuleID`) and (`c`.`ModuleStatus` = 3)))) order by `c`.`ModuleCode`;

-- ----------------------------
-- View structure for u_privilege
-- ----------------------------
DROP VIEW IF EXISTS `u_privilege`;
CREATE ALGORITHM = UNDEFINED DEFINER = `root`@`localhost` SQL SECURITY DEFINER VIEW `u_privilege` AS select `b`.`UserTypeID` AS `UserTypeID`,`b`.`UserTypeName` AS `UserTypeName`,`c`.`PrivilegeID` AS `PrivilegeID`,`c`.`PrivilegeName` AS `PrivilegeName`,`a`.`PrivilegeQty` AS `PrivilegeQty` from ((`t_usertype_privilege` `a` join `t_usertype` `b` on(((`a`.`UserTypeID` = `b`.`UserTypeID`) and (`b`.`UserTypeStatus` = 3)))) join `t_privilege` `c` on(((`a`.`PrivilegeID` = `c`.`PrivilegeID`) and (`c`.`PrivilegeStatus` = 3)))) order by `c`.`PrivilegeCode`;

-- ----------------------------
-- View structure for u_stageanswer
-- ----------------------------
DROP VIEW IF EXISTS `u_stageanswer`;
CREATE ALGORITHM = UNDEFINED DEFINER = `root`@`localhost` SQL SECURITY DEFINER VIEW `u_stageanswer` AS select `a`.`UserAccount` AS `UserAccount`,`b`.`StageID` AS `StageID`,`b`.`StageName` AS `StageName`,`c`.`StageTypeID` AS `StageTypeID`,`c`.`StageTypeName` AS `StageTypeName`,`a`.`AccessID` AS `AccessID`,`a`.`Progress` AS `Progress`,`g2`.`ChoiceAnswerID` AS `ChoiceAnswerID`,`g3`.`ChoiceAnswerID` AS `UserChoiceAnswer`,`g2`.`ChoiceAnswerTitle` AS `ChoiceAnswerTitle`,`g2`.`ChoiceAnswerContent` AS `ChoiceAnswerContent`,`g2`.`IsRightChoiceAnswer` AS `IsRightChoiceAnswer`,`h2`.`FillAnswerID` AS `FillAnswerID`,`h2`.`FillAnswerTitle` AS `FillAnswerTitle`,`h2`.`FillAnswerContent` AS `FillAnswerContent`,`h3`.`FillAnswerContent` AS `UserFillAnswer` from (((((((((((`t_user_stage` `a` join `t_stage` `b` on(((`a`.`StageID` = `b`.`StageID`) and (`b`.`StageStatus` = 3)))) join `t_stagetype` `c` on(((`b`.`StageTypeID` = `c`.`StageTypeID`) and (`c`.`StageTypeStatus` = 3)))) join `t_grade` `d` on(((`b`.`GradeID` = `d`.`GradeID`) and (`d`.`GradeStatus` = 3)))) join `t_compositiontype` `e` on(((`b`.`CompositionTypeID` = `e`.`CompositionTypeID`) and (`e`.`CompositionTypeStatus` = 3)))) join `t_compositionpart` `f` on(((`b`.`CompositionPartID` = `f`.`CompositionPartID`) and (`f`.`CompositionPartStatus` = 3)))) left join `t_choicequestion` `g1` on(((`b`.`StageID` = `g1`.`StageID`) and (`g1`.`ChoiceQuestionStatus` = 3) and (`g1`.`ChoiceAnswerDirection` <> -(1))))) left join `t_choiceanswer` `g2` on((`g1`.`ChoiceQuestionID` = `g2`.`ChoiceQuestionID`))) left join `t_user_choiceanswer` `g3` on(((`a`.`UserAccount` = `g3`.`UserAccount`) and (`b`.`StageID` = `g3`.`StageID`) and (`g2`.`ChoiceQuestionID` = `g3`.`ChoiceQuestionID`) and (`g2`.`ChoiceAnswerID` = `g3`.`ChoiceAnswerID`)))) left join `t_fillquestion` `h1` on(((`b`.`StageID` = `h1`.`StageID`) and (`h1`.`FillQuestionStatus` = 3) and (`h1`.`FillAnswerDirection` <> -(1))))) left join `t_fillanswer` `h2` on((`h1`.`FillQuestionID` = `h2`.`FillQuestionID`))) left join `t_user_fillanswer` `h3` on(((`a`.`UserAccount` = `h3`.`UserAccount`) and (`b`.`StageID` = `h3`.`StageID`) and (`h2`.`FillQuestionID` = `h3`.`FillQuestionID`)))) order by `g2`.`ChoiceAnswerCode`,`h2`.`FillAnswerCode`;

-- ----------------------------
-- View structure for u_stagelist
-- ----------------------------
DROP VIEW IF EXISTS `u_stagelist`;
CREATE ALGORITHM = UNDEFINED DEFINER = `root`@`localhost` SQL SECURITY DEFINER VIEW `u_stagelist` AS select `a`.`UserAccount` AS `UserAccount`,`b`.`StageID` AS `StageID`,`b`.`StageName` AS `StageName`,`c`.`StageTypeID` AS `StageTypeID`,`c`.`StageTypeName` AS `StageTypeName`,`a`.`AccessID` AS `AccessID`,`a`.`Progress` AS `Progress` from (((((`t_user_stage` `a` join `t_stage` `b` on(((`a`.`StageID` = `b`.`StageID`) and (`b`.`StageStatus` = 3)))) join `t_stagetype` `c` on(((`b`.`StageTypeID` = `c`.`StageTypeID`) and (`c`.`StageTypeStatus` = 3)))) join `t_grade` `d` on(((`b`.`GradeID` = `d`.`GradeID`) and (`d`.`GradeStatus` = 3)))) join `t_compositiontype` `e` on(((`b`.`CompositionTypeID` = `e`.`CompositionTypeID`) and (`e`.`CompositionTypeStatus` = 3)))) join `t_compositionpart` `f` on(((`b`.`CompositionPartID` = `f`.`CompositionPartID`) and (`f`.`CompositionPartStatus` = 3)))) order by `b`.`StageCode` desc;

-- ----------------------------
-- View structure for u_stagequestion
-- ----------------------------
DROP VIEW IF EXISTS `u_stagequestion`;
CREATE ALGORITHM = UNDEFINED DEFINER = `root`@`localhost` SQL SECURITY DEFINER VIEW `u_stagequestion` AS select `a`.`UserAccount` AS `UserAccount`,`b`.`StageID` AS `StageID`,`b`.`StageName` AS `StageName`,`c`.`StageTypeID` AS `StageTypeID`,`c`.`StageTypeName` AS `StageTypeName`,`a`.`AccessID` AS `AccessID`,`a`.`Progress` AS `Progress`,`g`.`ChoiceQuestionID` AS `ChoiceQuestionID`,`g`.`ChoiceQuestionContent` AS `ChoiceQuestionContent`,`g`.`ChoiceAnswerDirection` AS `ChoiceAnswerDirection`,`g`.`IsFinalChoiceQuestion` AS `IsFinalChoiceQuestion`,`h`.`FillQuestionID` AS `FillQuestionID`,`h`.`FillQuestionContent` AS `FillQuestionContent`,`h`.`FillAnswerDirection` AS `FillAnswerDirection`,`h`.`FillAnswerLength` AS `FillAnswerLength`,`h`.`IsFinalFillQuestion` AS `IsFinalFillQuestion` from (((((((`t_user_stage` `a` join `t_stage` `b` on(((`a`.`StageID` = `b`.`StageID`) and (`b`.`StageStatus` = 3)))) join `t_stagetype` `c` on(((`b`.`StageTypeID` = `c`.`StageTypeID`) and (`c`.`StageTypeStatus` = 3)))) join `t_grade` `d` on(((`b`.`GradeID` = `d`.`GradeID`) and (`d`.`GradeStatus` = 3)))) join `t_compositiontype` `e` on(((`b`.`CompositionTypeID` = `e`.`CompositionTypeID`) and (`e`.`CompositionTypeStatus` = 3)))) join `t_compositionpart` `f` on(((`b`.`CompositionPartID` = `f`.`CompositionPartID`) and (`f`.`CompositionPartStatus` = 3)))) left join `t_choicequestion` `g` on(((`b`.`StageID` = `g`.`StageID`) and (`g`.`ChoiceQuestionStatus` = 3)))) left join `t_fillquestion` `h` on(((`b`.`StageID` = `h`.`StageID`) and (`h`.`FillQuestionStatus` = 3)))) order by `g`.`ChoiceQuestionCode`,`h`.`FillQuestionCode`;

-- ----------------------------
-- View structure for u_usertype
-- ----------------------------
DROP VIEW IF EXISTS `u_usertype`;
CREATE ALGORITHM = UNDEFINED DEFINER = `root`@`localhost` SQL SECURITY DEFINER VIEW `u_usertype` AS select `a`.`UserAccount` AS `UserAccount`,`c`.`UserTypeID` AS `UserTypeID`,`c`.`UserTypeName` AS `UserTypeName` from ((`t_user` `a` join `t_user_usertype` `b` on((`a`.`UserAccount` = `b`.`UserAccount`))) join `t_usertype` `c` on(((`b`.`UserTypeID` = `c`.`UserTypeID`) and (`c`.`UserTypeStatus` = 3)))) where (now() between `b`.`StartDt` and `b`.`EndDt`) order by `c`.`PriorityLevel` desc;

-- ----------------------------
-- Procedure structure for Manager_Delete
-- ----------------------------
DROP PROCEDURE IF EXISTS `Manager_Delete`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Manager_Delete`(
			I_ManagerAccount VARCHAR(50), OUT O_Result VARCHAR(50))
BEGIN

-- 		限制
			IF(IFNULL(I_ManagerAccount,'')='') THEN
			SET O_Result = '账号不能为空';
			ELSEIF NOT EXISTS(SELECT 1 FROM t_manager WHERE ManagerAccount=I_ManagerAccount) THEN
			SET O_Result = '账号不存在';
			ELSEIF EXISTS (SELECT 1 FROM t_manager_module WHERE ManagerAccount=I_ManagerAccount) THEN
			SET O_Result = '注销失败,该管理员尚拥有模块权限';
-- 		修改
			ELSE
			 DELETE FROM t_manager
					WHERE ManagerAccount=I_ManagerAccount;
			SET O_Result = '注销成功';
				END IF;
		END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Manager_Insert
-- ----------------------------
DROP PROCEDURE IF EXISTS `Manager_Insert`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Manager_Insert`(
			I_ManagerAccount VARCHAR(50), I_ManagerPassword VARCHAR(50), 
			I_CreateBy VARCHAR(50), OUT O_Result VARCHAR(50))
BEGIN
-- 		限制
			IF(IFNULL(I_ManagerAccount,'')='') THEN
			SET O_Result = '账号不能为空';
			ELSEIF (IFNULL(I_ManagerPassword,'')='') THEN
			SET O_Result = '密码不能为空';
			ELSEIF EXISTS(SELECT 1 FROM t_manager WHERE ManagerAccount=I_ManagerAccount) THEN
			SET O_Result = '账号已存在';
-- 		新增
			ELSE
			INSERT INTO t_manager(ManagerAccount,ManagerPassword,CreateBy,CreateDt)
				VALUES(I_ManagerAccount,I_ManagerPassword,I_CreateBy,now());
			SET O_Result = '添加管理员成功';
				END IF;
		END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Manager_List
-- ----------------------------
DROP PROCEDURE IF EXISTS `Manager_List`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Manager_List`()
BEGIN
			SELECT *
				FROM t_manager
					ORDER BY CreateDt DESC;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Manager_Login
-- ----------------------------
DROP PROCEDURE IF EXISTS `Manager_Login`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Manager_Login`(I_ManagerAccount VARCHAR(50), I_ManagerPassword VARCHAR(50), 
																														OUT O_Result VARCHAR(50))
BEGIN
			IF NOT EXISTS(SELECT 1 FROM t_manager WHERE ManagerAccount=I_ManagerAccount) THEN
				SET O_Result = 0;
      ELSEIF((SELECT ManagerPassword FROM t_manager WHERE ManagerAccount=I_ManagerAccount)=I_ManagerPassword)	THEN
				SET O_Result = 1;
			ELSE
				SET O_Result = 2;
				END IF;
			SELECT O_Result;
    END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Manager_Module_Binding
-- ----------------------------
DROP PROCEDURE IF EXISTS `Manager_Module_Binding`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Manager_Module_Binding`(
			I_ManagerAccount VARCHAR(50), I_ModuleID INT, 
			I_CreateBy VARCHAR(50), OUT O_Result VARCHAR(50))
BEGIN
			INSERT INTO t_manager_module(ManagerAccount,ModuleID,CreateBy,CreateDt)
				VALUES(I_ManagerAccount,I_ModuleID,I_CreateBy,now());
			SET O_Result='绑定成功';
		END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Manager_Module_List
-- ----------------------------
DROP PROCEDURE IF EXISTS `Manager_Module_List`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Manager_Module_List`(I_ManagerAccount VARCHAR(50))
BEGIN
			SELECT A.ModuleCode,A.ModuleName,IFNULL(B.ManagerAccount,0) AS BindingFlag,C.AccessName
				FROM t_module A
					LEFT JOIN t_manager_module B ON A.ModuleID=B.ModuleID AND B.ManagerAccount=I_ManagerAccount
					LEFT JOIN t_access C ON B.AccessID=C.AccessID
						WHERE A.ModuleID>0 AND A.ModuleStatus=3;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Manager_Module_UnBinding
-- ----------------------------
DROP PROCEDURE IF EXISTS `Manager_Module_UnBinding`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Manager_Module_UnBinding`(
			I_ManagerAccount VARCHAR(50), I_ModuleID INT, OUT O_Result VARCHAR(50))
BEGIN
			DELETE FROM t_manager_module
				WHERE t_ManagerAccount=ManagerAccount AND ModuleID=I_ModuleID;
			SET O_Result='解绑成功';
		END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Manager_Update
-- ----------------------------
DROP PROCEDURE IF EXISTS `Manager_Update`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Manager_Update`(
			I_ManagerAccount VARCHAR(50), I_ManagerPassword VARCHAR(50), 
			I_ModifyBy VARCHAR(50), OUT O_Result VARCHAR(50))
BEGIN

-- 		限制
			IF(IFNULL(I_ManagerAccount,'')='') THEN
			SET O_Result = '账号不能为空';
			ELSEIF (IFNULL(I_ManagerPassword,'')='') THEN
			SET O_Result = '密码不能为空';
			ELSEIF NOT EXISTS(SELECT 1 FROM t_manager WHERE ManagerAccount=I_ManagerAccount) THEN
			SET O_Result = '账号不存在';
-- 		修改
			ELSE
			 UPDATE t_manager
				SET ManagerPassword=I_ManagerPassword,ModifyBy=I_ModifyBy,ModifyDt=NOW()
					WHERE ManagerAccount=I_ManagerAccount;
			SET O_Result = '密码修改成功';
				END IF;
		END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Module_Delete
-- ----------------------------
DROP PROCEDURE IF EXISTS `Module_Delete`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Module_Delete`(
			I_ModuleID INT, OUT O_Result VARCHAR(50))
BEGIN
-- 开启事务
DECLARE t_error INTEGER DEFAULT 0;
DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET t_error=1;  
START TRANSACTION; 

			IF EXISTS (SELECT 1 FROM t_manager_module WHERE ModuleID=I_ModuleID) THEN
			DELETE FROM t_manager_module
					WHERE ModuleID=I_ModuleID;
				END IF;
			DELETE FROM t_module
					WHERE ModuleID=I_ModuleID;

-- 提交事务
IF t_error = 1 THEN  
		ROLLBACK;  
ELSE  
		COMMIT; 
		SET O_Result = '删除成功';
END IF;  

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Module_Insert
-- ----------------------------
DROP PROCEDURE IF EXISTS `Module_Insert`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Module_Insert`(
			I_ModuleCode VARCHAR(50), I_ModuleName VARCHAR(50), 
			I_CreateBy VARCHAR(50), OUT O_Result VARCHAR(50))
BEGIN
--    获取ModuleID
			SELECT IFNULL(MAX(ModuleID),0)+1 INTO @ModuleID
				FROM t_module;
-- 		限制
			IF(IFNULL(I_ModuleCode,'')='') THEN
			SET O_Result = '模块编号不能为空';
			ELSEIF (IFNULL(I_ModuleName,'')='') THEN
			SET O_Result = '模块名称不能为空';
			ELSEIF EXISTS(SELECT 1 FROM t_module WHERE ModuleCode=I_ModuleCode) THEN
			SET O_Result = '模块编号已存在';
			ELSEIF EXISTS(SELECT 1 FROM t_module WHERE ModuleName=I_ModuleName) THEN
			SET O_Result = '模块名称已存在';
-- 		新增
			ELSE
			INSERT INTO t_module(ModuleID,ModuleCode,ModuleName,CreateBy,CreateDt)
				VALUES(@ModuleID,I_ModuleCode,I_ModuleName,I_CreateBy,NOW());
			SET O_Result = '添加成功';
				END IF;
		END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Module_List
-- ----------------------------
DROP PROCEDURE IF EXISTS `Module_List`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Module_List`()
BEGIN
			SELECT A.*,B.StatusName
				FROM t_module A
					LEFT JOIN t_statustype B ON A.ModuleStatus=B.StatusID
						ORDER BY ModuleID DESC;
		END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Module_Update
-- ----------------------------
DROP PROCEDURE IF EXISTS `Module_Update`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Module_Update`(
			I_ModuleID INT, I_ModuleCode VARCHAR(50), I_ModuleName VARCHAR(50), 
			I_ModifyBy VARCHAR(50), OUT O_Result VARCHAR(50))
BEGIN

-- 		限制
			IF(IFNULL(I_ModuleCode,'')='') THEN
			SET O_Result = '模块编号不能为空';
			ELSEIF (IFNULL(I_ModuleName,'')='') THEN
			SET O_Result = '模块名称不能为空';
			ELSEIF EXISTS(SELECT 1 FROM t_module WHERE ModuleCode=I_ModuleCode AND ModuleID<>I_ModuleID) THEN
			SET O_Result = '模块编号已存在';
			ELSEIF EXISTS(SELECT 1 FROM t_module WHERE ModuleName=I_ModuleName AND ModuleID<>I_ModuleID) THEN
			SET O_Result = '模块名称已存在';
-- 		新增
			ELSE
			UPDATE t_module
				SET ModuleCode=I_ModuleCode,ModuleName=I_ModuleName,ModifyBy=I_ModifyBy,ModifyDt=NOW()
					WHERE ModuleID=I_ModuleID;
			SET O_Result = '修改成功';
				END IF;
		END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for TableInfoInsert
-- ----------------------------
DROP PROCEDURE IF EXISTS `TableInfoInsert`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `TableInfoInsert`(TableName VARCHAR(50), TableA VARCHAR(50), TableB VARCHAR(50), 
																															TableInfo VARCHAR(255), OUT R_Result VARCHAR(50))
BEGIN
		INSERT INTO a_tableinfo(TableName, TableA, TableB, TableInfo, CreateDt)
				VALUES(TableName,TableA,TableB,TableInfo,NOW());
		SET R_Result = '添加成功';
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
