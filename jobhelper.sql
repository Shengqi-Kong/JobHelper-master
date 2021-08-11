/*
 Navicat Premium Data Transfer

 Source Server         : root
 Source Server Type    : MySQL
 Source Server Version : 80025
 Source Host           : localhost:3306
 Source Schema         : jobhelper

 Target Server Type    : MySQL
 Target Server Version : 80025
 File Encoding         : 65001

 Date: 11/08/2021 17:17:08
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for jh_admin
-- ----------------------------
DROP TABLE IF EXISTS `jh_admin`;
CREATE TABLE `jh_admin` (
  `admin_id` int NOT NULL AUTO_INCREMENT COMMENT '管理员id',
  `admin_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '管理员名字',
  `admin_password` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '管理员密码',
  `admin_phone` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '管理员联系电话',
  `admin_Email` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '管理员邮箱',
  PRIMARY KEY (`admin_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of jh_admin
-- ----------------------------
BEGIN;
INSERT INTO `jh_admin` VALUES (1, 'admin', '123', '13133133313', 'admin@gmail.com');
COMMIT;

-- ----------------------------
-- Table structure for jh_blog
-- ----------------------------
DROP TABLE IF EXISTS `jh_blog`;
CREATE TABLE `jh_blog` (
  `blog_id` int NOT NULL AUTO_INCREMENT COMMENT '博客id',
  `blog_user` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '博客用户',
  `blog_category` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '博客类别',
  `blog_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '博客标题',
  `blog_context` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '博客正文',
  `blog_date` date DEFAULT NULL COMMENT '发文时间',
  PRIMARY KEY (`blog_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of jh_blog
-- ----------------------------
BEGIN;
INSERT INTO `jh_blog` VALUES (23, 'user0002', '技术', '2021 年全球开发者调查报告出炉：Rust 发展迅猛、React.js 崛起、最高薪的是工程经理！', '时光荏苒，不知不觉间一年又已过去大半，知名技术问答网站 Stack Overflow 一年一度的开发者调查报告也于近日新鲜出炉。\r\n\r\n此次共有来自全球 181 个国家/地区的 83439 名软件开发者参与调查，问卷主要围绕编程语言、开发工具、应用框架的流行趋势及不同岗位开发者的职业发展等问题展开。\r\n\r\n虽然在这份报告中，中国参与的开发者较少，8 万多份问卷中只有 1055 份来自中国，但不容置疑的是，这份报告还是在一定程度上体现了全球开发者的总体情况。\r\n\r\n根据报告，以下是 Stack Overflow 2021 年开发者调查报告的部分最新发现：\r\n\r\n开发者的自学方式发生了很大变化，近 60% 的受访者更倾向于通过在线资源学习编程。视频、论坛、博客等线上资源是大多数年轻编程爱好者的首选，而学校、书籍等传统学习方式更受年长开发者的喜爱。\r\n\r\nAWS 仍是全球最广泛使用的云平台，但谷歌 Cloud 和微软 Azure 相较去年也取得了可观的收益。\r\n\r\nReact.js 超越 jQuery，成为了最常用的 Web 框架。\r\n\r\n近几年刚起步的 Svelte 成为了今年最受欢迎的框架。\r\n\r\n去年收入最高的编程语言 Perl，今年滑落至第五名。\r\n\r\n去年 92% 的专业开发者都有全职工作，或者至少有兼职，而今年这一数据下降至 76%。\r\n\r\n最流行的技术趋势：Python 成为第三大流行语言，Windows 仍最受欢迎\r\n根据本次报告显示，JavaScript 已连续第九年排在最常用的编程语言榜一位。不同的是，今年 Python 与 SQL 交换了位置，成为了第三大流行语言。而这个变化，或许在 Python 摘得 TIOBE 2020 年度编程语言的时候就有预兆。\r\n\r\n作为 Perl 的竞争对手，Python 很早就开始成为了系统管理员编写脚本的工作。如今，它在数据科学、机器学习等领域也颇受欢迎，同时，Python 易于上手及高效的特性也适用于 Web 开发、后端、移动应用程序开发、甚至是（较大的）嵌入式系统等领域，这正如 TIOBE 官方曾对它的评价：“Python 无处不在。”\r\n————————————————\r\n版权声明：本文为CSDN博主「极客日报」的原创文章，遵循CC 4.0 BY-SA版权协议，转载请附上原文出处链接及本声明。', '2021-08-04');
COMMIT;

-- ----------------------------
-- Table structure for jh_contact
-- ----------------------------
DROP TABLE IF EXISTS `jh_contact`;
CREATE TABLE `jh_contact` (
  `contact_id` int NOT NULL AUTO_INCREMENT COMMENT '联系我们id',
  `contact_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户名字',
  `contact_email` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '联系电话',
  `context_message` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '详细信息',
  `user_id` int DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`contact_id`) USING BTREE,
  KEY `contact` (`user_id`) USING BTREE,
  CONSTRAINT `contact` FOREIGN KEY (`user_id`) REFERENCES `jh_user` (`user_id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of jh_contact
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for jh_job
-- ----------------------------
DROP TABLE IF EXISTS `jh_job`;
CREATE TABLE `jh_job` (
  `job_id` int NOT NULL AUTO_INCREMENT COMMENT '职位id',
  `job_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '职位名称',
  `job_salary` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '职位薪资',
  `job_category` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '职位类别',
  `job_describe` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '职位描述',
  `job_buff` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '职位诱惑',
  `job_need` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '职位要求',
  `job_quality` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '职位性质',
  `job_date` date DEFAULT NULL COMMENT '职位发布时间',
  `job_address` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '就职地点',
  PRIMARY KEY (`job_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of jh_job
-- ----------------------------
BEGIN;
INSERT INTO `jh_job` VALUES (3, 'C++工程师', '19K', '技术', '', '双休', '1、拥有分布式存储相关研发经验，熟悉分布式系统相关理论\r\n2、熟悉Linux操作系统，熟练编写shell脚本，\r\n3、有分布式存储数据集群搭建运维和恢复能力\r\n4、熟悉存储系统的关键特性和实现原理，解决相应IO瓶颈及数据安全\r\n5、良好的设计/编码水平，熟练使用C++/Rust/Golang；\r\n6、有业界主流分布式存储系统Ceph/HDFS/GlusterFS二次开发经验者优先', '全日职', '2021-07-31', '北京');
INSERT INTO `jh_job` VALUES (4, '产品经理 - B端/C端算法产品', '23K', '产品', NULL, '年终奖', '1、本科以上学历，3年及以上互联网算法产品经验，可独立进行业务分析和产品规划；\r\n2、有供应链预测算法、电商搜索推荐算法、图像算法或用户/销售增长算法产品经验者优先；\r\n3、熟悉运用多种工具进行原型制作和文档书写，并最终形成产品设计；\r\n4、具备良好的逻辑思维能力、跨部门沟通能力和问题处理能力；\r\n5、富有创业激情、有良好的团队协作意识，敢于接受挑战；\r\n6、有计算机专业、信息工程、数学专业、心理学专业者优选；\r\n加分项\r\n有以下行业经验：新零售·移动互联网·互联网', '全日职', '2021-08-02', '上海');
COMMIT;

-- ----------------------------
-- Table structure for jh_resume
-- ----------------------------
DROP TABLE IF EXISTS `jh_resume`;
CREATE TABLE `jh_resume` (
  `resume_id` int NOT NULL AUTO_INCREMENT COMMENT '简历id',
  `resume_pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '简历照片',
  `resume_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '简历名称',
  `resume_address` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '简历地址',
  `resume_phone` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '简历电话',
  `resume_email` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '简历邮箱',
  `resume_page` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '简历社交主页',
  `resume_describe` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '自我描述',
  `resume_school` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '毕业学校名称',
  `resume_degree` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '学历',
  `resume_honour` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '荣誉奖项',
  `project_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '项目名',
  `project_time` int DEFAULT NULL COMMENT '项目时长',
  `project_describe` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '项目描述',
  `user_id` int DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`resume_id`) USING BTREE,
  KEY `user_id` (`user_id`) USING BTREE,
  CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `jh_user` (`user_id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of jh_resume
-- ----------------------------
BEGIN;
INSERT INTO `jh_resume` VALUES (2, '02.jpeg', '高嘉惠', '山东省济南市', '111', 'gaojiahui@gmail.com', 'gaojiahui@github.com', '曾经从事过多年前端设计工作', '山东大学', '本科学历', '校级优秀学生干部', '饿了么前端设计', 180, '项目为饿了前端设计', 7);
INSERT INTO `jh_resume` VALUES (3, '01.jpg', 'Victor', '北京朝阳区望京科技园', '17564253681', '', '', '', '', '选择学历', '', '', NULL, '', 6);
COMMIT;

-- ----------------------------
-- Table structure for jh_user
-- ----------------------------
DROP TABLE IF EXISTS `jh_user`;
CREATE TABLE `jh_user` (
  `user_id` int NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `user_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户名',
  `user_password` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户密码',
  `user_email` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户邮箱',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of jh_user
-- ----------------------------
BEGIN;
INSERT INTO `jh_user` VALUES (1, 'Victor', '123', 'victor@gmail.com');
INSERT INTO `jh_user` VALUES (2, 'Mike', '123', 'Mike@gmail.com');
INSERT INTO `jh_user` VALUES (3, 'user0001', '123', 'user0001@qq.com');
INSERT INTO `jh_user` VALUES (4, 'user0002', '123', 'user0002@gmail.com');
INSERT INTO `jh_user` VALUES (5, 'user0004', '123', 'user0004@qq.com');
INSERT INTO `jh_user` VALUES (6, 'user0003', '123', 'user0003@qq.com');
INSERT INTO `jh_user` VALUES (7, 'gaojiahui', '123', 'gaojiahui@gmail.com');
INSERT INTO `jh_user` VALUES (8, 'admin', '123', 'admin@qq.com');
INSERT INTO `jh_user` VALUES (9, 'user0005', '123', 'victor@gmail.com');
COMMIT;

-- ----------------------------
-- Table structure for user_job_middle
-- ----------------------------
DROP TABLE IF EXISTS `user_job_middle`;
CREATE TABLE `user_job_middle` (
  `user_id` int NOT NULL,
  `job_id` int NOT NULL,
  PRIMARY KEY (`user_id`,`job_id`),
  KEY `FK_job_id` (`job_id`),
  CONSTRAINT `FK_job_id` FOREIGN KEY (`job_id`) REFERENCES `jh_job` (`job_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_user_id` FOREIGN KEY (`user_id`) REFERENCES `jh_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;

-- ----------------------------
-- Records of user_job_middle
-- ----------------------------
BEGIN;
INSERT INTO `user_job_middle` VALUES (3, 4);
INSERT INTO `user_job_middle` VALUES (4, 4);
INSERT INTO `user_job_middle` VALUES (7, 4);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
