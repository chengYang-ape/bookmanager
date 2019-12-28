/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : ssm_bbms

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2019-12-24 12:14:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bookmanage
-- ----------------------------
DROP TABLE IF EXISTS `bookmanage`;
CREATE TABLE `bookmanage` (
  `bId` int(11) NOT NULL AUTO_INCREMENT,
  `bookName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `inventory` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`bId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of bookmanage
-- ----------------------------
INSERT INTO `bookmanage` VALUES ('5', 'mysql从入门到删库跑路', '学灯网', '20', '69.00');
INSERT INTO `bookmanage` VALUES ('6', 'Java从入门到放弃', '学灯网', '30', '99.00');
INSERT INTO `bookmanage` VALUES ('7', 'spring从入门到精通', '学灯网', '5', '99.00');

-- ----------------------------
-- Table structure for tbsyslog
-- ----------------------------
DROP TABLE IF EXISTS `tbsyslog`;
CREATE TABLE `tbsyslog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `logId` varchar(32) DEFAULT NULL,
  `accessDate` datetime DEFAULT NULL,
  `requestType` varchar(20) DEFAULT NULL,
  `accessInterface` varchar(100) DEFAULT NULL,
  `interfaceParams` text,
  `accessSource` varchar(50) DEFAULT NULL,
  `accessIp` varchar(50) DEFAULT NULL,
  `executeTime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5852 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tbsyslog
-- ----------------------------
INSERT INTO `tbsyslog` VALUES ('5618', 'a9bda4bb20d24edcb762222daffa1ab1', '2019-12-17 17:02:25', 'GET', 'http://localhost:8181/queryBookList', '[{pageNum=1, pageSize=10}]', 'UNKNOWN-UNKNOWN(null)', '0:0:0:0:0:0:0:1', '686');
INSERT INTO `tbsyslog` VALUES ('5619', '5a0d3392d6cd4d97aa4aabbbcb76c024', '2019-12-20 20:29:29', 'POST', 'http://localhost:8181/queryUser', '[{userName=admin, password=e10adc3949ba59abbe56e057f20f883e, passWord=123456, verificationCode=}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '12765');
INSERT INTO `tbsyslog` VALUES ('5620', '2a7af2c429d34db18a1083ca1f244996', '2019-12-20 20:29:51', 'POST', 'http://localhost:8181/queryUser', '[{userName=admin, password=e10adc3949ba59abbe56e057f20f883e, passWord=123456, verificationCode=}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '5');
INSERT INTO `tbsyslog` VALUES ('5621', 'a4c3b37598974714a45b0ac53f12592d', '2019-12-20 20:30:26', 'POST', 'http://localhost:8181/queryUser', '[{userName=xueden, password=e10adc3949ba59abbe56e057f20f883e, passWord=123456, verificationCode=}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '3');
INSERT INTO `tbsyslog` VALUES ('5622', '3ac4b4d77a7645178d5dd55d37b1639e', '2019-12-20 20:36:20', 'POST', 'http://localhost:8181/queryUser', '[{userName=xueden, password=e10adc3949ba59abbe56e057f20f883e, passWord=123456, verificationCode=}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '2');
INSERT INTO `tbsyslog` VALUES ('5623', '65102cb12db94ebbb03b7be1785eed9c', '2019-12-20 20:36:22', 'POST', 'http://localhost:8181/queryUserList', '[{userName=xueden, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '139');
INSERT INTO `tbsyslog` VALUES ('5624', '8c14a7da47f74db6a3db9b70ecff46b9', '2019-12-20 20:36:22', 'POST', 'http://localhost:8181/querySub', '[{uId=21, bookType=1, returntype=2}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '17');
INSERT INTO `tbsyslog` VALUES ('5625', '95433bfb604f489299a1ab78afa4b50d', '2019-12-21 20:19:46', 'POST', 'http://localhost:8181/queryUser', '[{userName=admin, password=e10adc3949ba59abbe56e057f20f883e, passWord=123456, verificationCode=}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '687');
INSERT INTO `tbsyslog` VALUES ('5626', 'c668e0f895e24f8dbc767ec3c102d5a3', '2019-12-21 20:20:00', 'POST', 'http://localhost:8181/queryUser', '[{userName=xueden, password=e10adc3949ba59abbe56e057f20f883e, passWord=123456, verificationCode=}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '4');
INSERT INTO `tbsyslog` VALUES ('5627', '68be7e1836454fd58be433f94bea6681', '2019-12-21 20:28:35', 'POST', 'http://localhost:8181/queryUser', '[{userName=xueden, password=e10adc3949ba59abbe56e057f20f883e, passWord=123456, verificationCode=}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '3');
INSERT INTO `tbsyslog` VALUES ('5628', '39b2c4d3a8a34cab98df43e56778e86b', '2019-12-21 20:30:41', 'POST', 'http://localhost:8181/queryUser', '[{userName=xueden, password=e10adc3949ba59abbe56e057f20f883e, passWord=123456, verificationCode=}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '7');
INSERT INTO `tbsyslog` VALUES ('5629', 'e8c5467cbfdc4156a9e563cfbf1e2516', '2019-12-21 20:36:44', 'POST', 'http://localhost:8181/queryUser', '[{userName=xueden, password=e10adc3949ba59abbe56e057f20f883e, passWord=123456, verificationCode=}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '3');
INSERT INTO `tbsyslog` VALUES ('5630', 'e5ca0cb569674cd3bfd37b7f955e79d7', '2019-12-21 20:38:05', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '95');
INSERT INTO `tbsyslog` VALUES ('5631', 'ac1115324770465d91d01c13ccc83882', '2019-12-21 20:38:05', 'POST', 'http://localhost:8181/querySub', '[{uId=1, bookType=1, returntype=2}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '27');
INSERT INTO `tbsyslog` VALUES ('5632', 'f805c4bb0364426fa4530c098f7a7340', '2019-12-21 20:38:13', 'POST', 'http://localhost:8181/queryUser', '[{userName=xueden, password=e10adc3949ba59abbe56e057f20f883e, passWord=123456, verificationCode=}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '4');
INSERT INTO `tbsyslog` VALUES ('5633', 'c988bdc21a154c0e960faaa79362c4f1', '2019-12-21 20:38:15', 'POST', 'http://localhost:8181/queryUserList', '[{userName=xueden, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '19');
INSERT INTO `tbsyslog` VALUES ('5634', 'c1a02b3cca224089b77a5adda243e6db', '2019-12-21 20:38:15', 'POST', 'http://localhost:8181/querySub', '[{uId=21, bookType=1, returntype=2}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '4');
INSERT INTO `tbsyslog` VALUES ('5635', '5837680359af4fff99e64b504d126eae', '2019-12-22 20:07:21', 'POST', 'http://localhost:8181/queryUser', '[{userName=xueden, password=e10adc3949ba59abbe56e057f20f883e, passWord=123456, verificationCode=}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '768');
INSERT INTO `tbsyslog` VALUES ('5636', '8d23d4de593e47e49c38887b14fbe85a', '2019-12-22 20:07:24', 'POST', 'http://localhost:8181/queryUserList', '[{userName=xueden, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '165');
INSERT INTO `tbsyslog` VALUES ('5637', '566e0d7bd42c4a2881d066fa607bc41e', '2019-12-22 20:07:25', 'POST', 'http://localhost:8181/querySub', '[{uId=21, bookType=1, returntype=2}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '38');
INSERT INTO `tbsyslog` VALUES ('5638', 'dde5b5dedaa640d3a960593c8e86b9d5', '2019-12-22 20:25:25', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '13');
INSERT INTO `tbsyslog` VALUES ('5639', '58f8ab84d30a42c8b874cfe8afcd527d', '2019-12-22 20:25:26', 'POST', 'http://localhost:8181/querySub', '[{uId=1, bookType=1, returntype=2}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '5');
INSERT INTO `tbsyslog` VALUES ('5640', '9c62f8b13cec4aa685f9813b94e923c6', '2019-12-22 20:25:30', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '11');
INSERT INTO `tbsyslog` VALUES ('5641', '8f5a8f8ae6a74a5f9c06f9cd2cf0b512', '2019-12-22 20:25:30', 'POST', 'http://localhost:8181/querySub', '[{uId=1, bookType=1, returntype=2}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '9');
INSERT INTO `tbsyslog` VALUES ('5642', '0e1f2505b1194338bc7006920d2bac00', '2019-12-22 20:25:56', 'POST', 'http://localhost:8181/queryUser', '[{userName=xueden, password=e10adc3949ba59abbe56e057f20f883e, passWord=123456, verificationCode=}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '2');
INSERT INTO `tbsyslog` VALUES ('5643', '83e822a477b44e2ab6c8077111a7be3c', '2019-12-22 20:25:59', 'POST', 'http://localhost:8181/queryUserList', '[{userName=xueden, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '5');
INSERT INTO `tbsyslog` VALUES ('5644', '07de5730923f40e68844e6687004e1d6', '2019-12-22 20:25:59', 'POST', 'http://localhost:8181/querySub', '[{uId=21, bookType=1, returntype=2}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '5');
INSERT INTO `tbsyslog` VALUES ('5645', '76280807cad04b4d855748f5ba3639ef', '2019-12-22 20:32:19', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '8');
INSERT INTO `tbsyslog` VALUES ('5646', '3ca9f7c3a1d74a47934a01b6f0d58f2c', '2019-12-22 20:32:19', 'POST', 'http://localhost:8181/querySub', '[{uId=1, bookType=1, returntype=2}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '2');
INSERT INTO `tbsyslog` VALUES ('5647', '7e4f332e27174a3db9165df09dc56ce4', '2019-12-22 20:32:24', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '10');
INSERT INTO `tbsyslog` VALUES ('5648', '082d71c1ba944cb5b291b255f0f6ec5b', '2019-12-22 20:32:24', 'POST', 'http://localhost:8181/querySub', '[{uId=1, bookType=1, returntype=2}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '7');
INSERT INTO `tbsyslog` VALUES ('5649', '19143006e1be4782bc8926ca3e3fbd1a', '2019-12-22 20:45:50', 'POST', 'http://localhost:8181/queryUser', '[{userName=xueden, password=e10adc3949ba59abbe56e057f20f883e, passWord=123456, verificationCode=}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '917');
INSERT INTO `tbsyslog` VALUES ('5650', '355673fb719a4ebebf7bb15600142c2e', '2019-12-22 20:57:55', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '260');
INSERT INTO `tbsyslog` VALUES ('5651', '355673fb719a4ebebf7bb15600142c2e', '2019-12-22 20:57:55', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '286');
INSERT INTO `tbsyslog` VALUES ('5652', '355673fb719a4ebebf7bb15600142c2e', '2019-12-22 20:57:55', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '286');
INSERT INTO `tbsyslog` VALUES ('5653', '355673fb719a4ebebf7bb15600142c2e', '2019-12-22 20:57:55', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '260');
INSERT INTO `tbsyslog` VALUES ('5654', '355673fb719a4ebebf7bb15600142c2e', '2019-12-22 20:57:55', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '286');
INSERT INTO `tbsyslog` VALUES ('5655', 'dd880d758f68408cac82dcd28c0e2416', '2019-12-22 20:58:23', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '10');
INSERT INTO `tbsyslog` VALUES ('5656', 'dd880d758f68408cac82dcd28c0e2416', '2019-12-22 20:58:23', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '10');
INSERT INTO `tbsyslog` VALUES ('5657', '43262077706348e490ee0604566408a9', '2019-12-22 20:58:24', 'POST', 'http://localhost:8181/querySub', '[{uId=1, bookType=1, returntype=2}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '21');
INSERT INTO `tbsyslog` VALUES ('5658', 'acb3a8b501744fc5a2661be3179ce273', '2019-12-22 21:00:04', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '4');
INSERT INTO `tbsyslog` VALUES ('5659', 'ce7333a621274a8d97c14fffc8394d56', '2019-12-22 21:00:04', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '7');
INSERT INTO `tbsyslog` VALUES ('5660', 'fce9a129ddae436da334ee1fb579c3d1', '2019-12-22 21:00:04', 'POST', 'http://localhost:8181/querySub', '[{uId=1, bookType=1, returntype=2}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '6');
INSERT INTO `tbsyslog` VALUES ('5661', '28d89503e5074aaeaedc2a6310f20129', '2019-12-22 21:07:37', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '5');
INSERT INTO `tbsyslog` VALUES ('5662', '184d4a27e7b8479582373782e0de60e9', '2019-12-22 21:07:37', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '4');
INSERT INTO `tbsyslog` VALUES ('5663', '568b6700e6d8456c9257b3a198b11ccd', '2019-12-22 21:07:38', 'POST', 'http://localhost:8181/querySub', '[{uId=1, bookType=1, returntype=2}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '2');
INSERT INTO `tbsyslog` VALUES ('5664', 'e3105089cc6d4f318b664129fcf48d80', '2019-12-22 21:08:00', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '5');
INSERT INTO `tbsyslog` VALUES ('5665', 'ba97a9051a5a41efab30e0fea8df189a', '2019-12-22 21:08:00', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '4');
INSERT INTO `tbsyslog` VALUES ('5666', 'c02a6658723f431499231c7833195333', '2019-12-22 21:08:00', 'POST', 'http://localhost:8181/querySub', '[{uId=1, bookType=1, returntype=2}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '3');
INSERT INTO `tbsyslog` VALUES ('5667', '96539edb05094365a565f370ff5f3494', '2019-12-22 21:12:15', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '7');
INSERT INTO `tbsyslog` VALUES ('5668', 'e121cdf7bf71426f9d26119f9c4a030f', '2019-12-22 21:12:19', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '5');
INSERT INTO `tbsyslog` VALUES ('5669', 'e121cdf7bf71426f9d26119f9c4a030f', '2019-12-22 21:12:19', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '12');
INSERT INTO `tbsyslog` VALUES ('5670', 'f9b2fb3a1d79443098f58199b1f67502', '2019-12-22 21:12:19', 'POST', 'http://localhost:8181/querySub', '[{uId=1, bookType=1, returntype=2}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '3');
INSERT INTO `tbsyslog` VALUES ('5671', '2dc40fcf60cb4886bd2bc55ffc38b98d', '2019-12-22 21:12:22', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '10');
INSERT INTO `tbsyslog` VALUES ('5672', 'fe060683fb514506bde6faccfa686679', '2019-12-22 21:12:23', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '5');
INSERT INTO `tbsyslog` VALUES ('5673', '4dd7989f9be148709cc5ba9fe61113e7', '2019-12-22 21:12:23', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '3');
INSERT INTO `tbsyslog` VALUES ('5674', '2e741613a33a47e0b6359d87e688a0e1', '2019-12-22 21:12:25', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=0, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '10');
INSERT INTO `tbsyslog` VALUES ('5675', '42f91951a80c4fbda62c83105b136122', '2019-12-22 21:12:30', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=1, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '4');
INSERT INTO `tbsyslog` VALUES ('5676', '904bd57362bf48259f7c675aff975936', '2019-12-22 21:12:32', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '4');
INSERT INTO `tbsyslog` VALUES ('5677', 'cef31bbfbffc4677a4f357698e091d02', '2019-12-22 21:13:24', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '4');
INSERT INTO `tbsyslog` VALUES ('5678', 'e179879327fd48f6ba7eec129fe77262', '2019-12-22 21:13:29', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '2');
INSERT INTO `tbsyslog` VALUES ('5679', 'e179879327fd48f6ba7eec129fe77262', '2019-12-22 21:13:29', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '6');
INSERT INTO `tbsyslog` VALUES ('5680', 'aededc46e2bc478b882305a25f833973', '2019-12-22 21:13:30', 'POST', 'http://localhost:8181/querySub', '[{uId=1, bookType=1, returntype=2}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '3');
INSERT INTO `tbsyslog` VALUES ('5681', '7a5a494edb654bafa587f69516885360', '2019-12-22 21:13:38', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '4');
INSERT INTO `tbsyslog` VALUES ('5682', '62a9ff4a4cbc4b16b2ad5e2e3f3a6683', '2019-12-22 21:13:41', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=0, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '4');
INSERT INTO `tbsyslog` VALUES ('5683', 'f6898442abd04085b063b89e46541d7a', '2019-12-22 21:13:42', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=1, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '3');
INSERT INTO `tbsyslog` VALUES ('5684', 'eaf95615f54d4c64bf4cad5d2dfd63a8', '2019-12-22 21:13:47', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=0, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '3');
INSERT INTO `tbsyslog` VALUES ('5685', '0bb8215aa83c4d03b152a58f0793b0d2', '2019-12-22 21:14:13', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '7');
INSERT INTO `tbsyslog` VALUES ('5686', '90ded71b3c3048d1b76a8985418f66a1', '2019-12-22 21:14:20', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '6');
INSERT INTO `tbsyslog` VALUES ('5687', '90ded71b3c3048d1b76a8985418f66a1', '2019-12-22 21:14:20', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '29');
INSERT INTO `tbsyslog` VALUES ('5688', 'd9752ff4b3b244a1a2eaca27dfd02c2c', '2019-12-22 21:14:20', 'POST', 'http://localhost:8181/querySub', '[{uId=1, bookType=1, returntype=2}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '4');
INSERT INTO `tbsyslog` VALUES ('5689', '9569a662f716479eb188d4530af92a14', '2019-12-22 21:15:10', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '4');
INSERT INTO `tbsyslog` VALUES ('5690', '6e9c67bad018440a80ae6083d9a6a88f', '2019-12-22 21:15:19', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=0, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '4');
INSERT INTO `tbsyslog` VALUES ('5691', 'dd5c29857f0846b2b9efb2b0375e5831', '2019-12-22 21:15:22', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=1, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '3');
INSERT INTO `tbsyslog` VALUES ('5692', '28e2958b7c9143469e7ced5942ad00ad', '2019-12-22 21:15:24', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '6');
INSERT INTO `tbsyslog` VALUES ('5693', '8f3549bc07ca4498aae4d1a0eae346d7', '2019-12-23 07:56:48', 'POST', 'http://localhost:8181/queryUser', '[{userName=xueden, password=e10adc3949ba59abbe56e057f20f883e, passWord=123456, verificationCode=}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '574');
INSERT INTO `tbsyslog` VALUES ('5694', 'd62f1e42128a456092b987e35929c994', '2019-12-23 07:56:51', 'POST', 'http://localhost:8181/queryUserList', '[{userName=xueden, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '106');
INSERT INTO `tbsyslog` VALUES ('5695', 'abd7e444cab346d897e8d4e9d15bd165', '2019-12-23 07:56:51', 'POST', 'http://localhost:8181/querySub', '[{uId=21, bookType=1, returntype=2}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '14');
INSERT INTO `tbsyslog` VALUES ('5696', 'ae1b51186fad46b4bf8152db84a15662', '2019-12-23 08:09:57', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '10');
INSERT INTO `tbsyslog` VALUES ('5697', '0b7f0992fcc1495993b5d782f36746bf', '2019-12-23 08:09:57', 'POST', 'http://localhost:8181/querySub', '[{uId=1, bookType=1, returntype=2}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '3');
INSERT INTO `tbsyslog` VALUES ('5698', 'd2a5f2b023654db894329a54aa8ce3f8', '2019-12-23 08:14:51', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '23');
INSERT INTO `tbsyslog` VALUES ('5699', '552a6d080de74771b55e58c160ecf040', '2019-12-23 08:14:51', 'POST', 'http://localhost:8181/querySub', '[{uId=1, bookType=1, returntype=2}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '7');
INSERT INTO `tbsyslog` VALUES ('5700', '21a1b6dac7274851892ed26ee1e7f4f1', '2019-12-23 08:15:58', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '9');
INSERT INTO `tbsyslog` VALUES ('5701', 'bf3f7fd756894e4bb5df7478a762b9d8', '2019-12-23 08:15:58', 'POST', 'http://localhost:8181/querySub', '[{uId=1, bookType=1, returntype=2}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '5');
INSERT INTO `tbsyslog` VALUES ('5702', '92ffeb1575fd45868444fd33c3b2da14', '2019-12-23 08:21:47', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '24');
INSERT INTO `tbsyslog` VALUES ('5703', '34d90111ecb14599ab1778e204aae703', '2019-12-23 08:21:47', 'POST', 'http://localhost:8181/querySub', '[{uId=1, bookType=1, returntype=2}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '20');
INSERT INTO `tbsyslog` VALUES ('5704', 'e401b93765574a42b4eeaff8d8818a4e', '2019-12-23 18:16:59', 'POST', 'http://localhost:8181/queryUser', '[{userName=admin, password=e10adc3949ba59abbe56e057f20f883e, passWord=123456, verificationCode=}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '658');
INSERT INTO `tbsyslog` VALUES ('5705', 'b4ce21728fb84eb4834c4a57a2c85afe', '2019-12-23 18:17:06', 'POST', 'http://localhost:8181/queryUser', '[{userName=xueden, password=e10adc3949ba59abbe56e057f20f883e, passWord=123456, verificationCode=}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '5');
INSERT INTO `tbsyslog` VALUES ('5706', '9650f49d3df44644a0340ac99efc7130', '2019-12-23 18:17:08', 'POST', 'http://localhost:8181/queryUserList', '[{userName=xueden, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '128');
INSERT INTO `tbsyslog` VALUES ('5707', '5044f21506e74e3e9bda77be01441c6f', '2019-12-23 18:17:09', 'POST', 'http://localhost:8181/querySub', '[{uId=21, bookType=1, returntype=2}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '17');
INSERT INTO `tbsyslog` VALUES ('5708', '61d08cf9d3b5421ab561e0fdfff9ac4d', '2019-12-23 18:30:01', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '15');
INSERT INTO `tbsyslog` VALUES ('5709', '258603ebd551476fb3a28f2751b1e6a4', '2019-12-23 18:30:01', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '30');
INSERT INTO `tbsyslog` VALUES ('5710', 'fdf69c61b9774449b21773c5933d76ec', '2019-12-23 18:30:01', 'POST', 'http://localhost:8181/querySub', '[{uId=1, bookType=1, returntype=2}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '5');
INSERT INTO `tbsyslog` VALUES ('5711', 'f88c32ca0ac54ed4a6dcc87750bc78d2', '2019-12-23 18:30:06', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '4');
INSERT INTO `tbsyslog` VALUES ('5712', 'f88c32ca0ac54ed4a6dcc87750bc78d2', '2019-12-23 18:30:06', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '18');
INSERT INTO `tbsyslog` VALUES ('5713', '629dab210c9a4d4daf2e7088a664a5d2', '2019-12-23 18:30:06', 'POST', 'http://localhost:8181/querySub', '[{uId=1, bookType=1, returntype=2}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '4');
INSERT INTO `tbsyslog` VALUES ('5714', '941edd38b09b45a088bf9dea67a2ad23', '2019-12-23 18:31:29', 'POST', 'http://localhost:8181/queryUser', '[{userName=xueden, password=e10adc3949ba59abbe56e057f20f883e, passWord=123456, verificationCode=}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '6');
INSERT INTO `tbsyslog` VALUES ('5715', '59f020ddb88f4f6191ed1d519fd49c6f', '2019-12-23 18:31:32', 'POST', 'http://localhost:8181/queryUserList', '[{userName=xueden, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '8');
INSERT INTO `tbsyslog` VALUES ('5716', '46d1df14bb8d4d0b8322a4470fb6d6ad', '2019-12-23 18:31:32', 'POST', 'http://localhost:8181/querySub', '[{uId=21, bookType=1, returntype=2}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '6');
INSERT INTO `tbsyslog` VALUES ('5717', 'c6057780e53f42f78cb899957a18bc21', '2019-12-23 18:31:34', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '12');
INSERT INTO `tbsyslog` VALUES ('5718', '1c3407191bc34911abacc6197ab7d579', '2019-12-23 18:32:56', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '10');
INSERT INTO `tbsyslog` VALUES ('5719', '68060f66693d466bb09b9afa1b26e896', '2019-12-23 18:33:01', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '7');
INSERT INTO `tbsyslog` VALUES ('5720', '68060f66693d466bb09b9afa1b26e896', '2019-12-23 18:33:01', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '7');
INSERT INTO `tbsyslog` VALUES ('5721', 'd02e5c1197474300bd8707de8c9b32cd', '2019-12-23 18:33:01', 'POST', 'http://localhost:8181/querySub', '[{uId=1, bookType=1, returntype=2}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '5');
INSERT INTO `tbsyslog` VALUES ('5722', '03dc39210a314219a84239b6b472bef2', '2019-12-23 18:33:28', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '6');
INSERT INTO `tbsyslog` VALUES ('5723', 'fc9cdab23d1043628f85ef6b05f6537e', '2019-12-23 18:34:01', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '7');
INSERT INTO `tbsyslog` VALUES ('5724', '3df82547a0ce428998aae8ae1fe2479f', '2019-12-23 18:34:12', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '16');
INSERT INTO `tbsyslog` VALUES ('5725', '26522204557d4f09817f62ddab7c93d8', '2019-12-23 18:34:12', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '28');
INSERT INTO `tbsyslog` VALUES ('5726', 'ec250010cfd14edb9f434b2a1c7e963f', '2019-12-23 18:34:13', 'POST', 'http://localhost:8181/querySub', '[{uId=1, bookType=1, returntype=2}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '2');
INSERT INTO `tbsyslog` VALUES ('5727', '6511c7a8d40b401784c83afb7d26eea0', '2019-12-23 18:34:22', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=1, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '15');
INSERT INTO `tbsyslog` VALUES ('5728', '2535f608316f40dd873998a372a068ec', '2019-12-23 18:34:26', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=0, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '6');
INSERT INTO `tbsyslog` VALUES ('5729', '668b4a922d5945f79468a55f6220a751', '2019-12-23 18:34:28', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '5');
INSERT INTO `tbsyslog` VALUES ('5730', '50da2c9019e34ee19a99118c937c74ac', '2019-12-23 18:34:38', 'POST', 'http://localhost:8181/queryUserList', '[{userName=xue, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '5');
INSERT INTO `tbsyslog` VALUES ('5731', '13f4945516874e3a8f07bcbaffe38fc1', '2019-12-23 18:49:30', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '5');
INSERT INTO `tbsyslog` VALUES ('5732', '16ad197beda84793869d49041a88f9c6', '2019-12-23 18:49:44', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '10');
INSERT INTO `tbsyslog` VALUES ('5733', '16ad197beda84793869d49041a88f9c6', '2019-12-23 18:49:44', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '14');
INSERT INTO `tbsyslog` VALUES ('5734', 'c3af66965f584f68b8bbf42d46a77316', '2019-12-23 18:49:44', 'POST', 'http://localhost:8181/querySub', '[{uId=1, bookType=1, returntype=2}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '9');
INSERT INTO `tbsyslog` VALUES ('5735', '2328838ebf5c483681cb97f84f2cda7d', '2019-12-23 18:49:55', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=5}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '5');
INSERT INTO `tbsyslog` VALUES ('5736', '1962164a993a451db1f72c8263fbdf69', '2019-12-23 18:49:58', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '4');
INSERT INTO `tbsyslog` VALUES ('5737', '2f1a1e19a46742eab88f74d817b777b6', '2019-12-23 18:50:01', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=15}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '5');
INSERT INTO `tbsyslog` VALUES ('5738', '6c46e1b44bc042a5a66ec18d91a84456', '2019-12-23 18:50:02', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=20}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '6');
INSERT INTO `tbsyslog` VALUES ('5739', 'd185b37516534e898ebfec9d791a3588', '2019-12-23 18:59:03', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '4');
INSERT INTO `tbsyslog` VALUES ('5740', 'd185b37516534e898ebfec9d791a3588', '2019-12-23 18:59:03', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '11');
INSERT INTO `tbsyslog` VALUES ('5741', '4bc713a6807b436ebb50ab5a4d6ea806', '2019-12-23 18:59:04', 'POST', 'http://localhost:8181/querySub', '[{uId=1, bookType=1, returntype=2}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '3');
INSERT INTO `tbsyslog` VALUES ('5742', 'aaaca0eaf72a46d3bc39bec7f6702619', '2019-12-23 18:59:18', 'POST', 'http://localhost:8181/queryUser', '[{userName=xueden, password=e10adc3949ba59abbe56e057f20f883e, passWord=123456, verificationCode=}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '2');
INSERT INTO `tbsyslog` VALUES ('5743', 'd8871f239dee4d4f80c819b4f323088a', '2019-12-23 18:59:20', 'POST', 'http://localhost:8181/queryUserList', '[{userName=xueden, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '5');
INSERT INTO `tbsyslog` VALUES ('5744', '524f831d97d242bca06a99ecfb09bf11', '2019-12-23 18:59:21', 'POST', 'http://localhost:8181/querySub', '[{uId=21, bookType=1, returntype=2}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '2');
INSERT INTO `tbsyslog` VALUES ('5745', '43c7574605bb4fc8a905377557b3596b', '2019-12-23 18:59:26', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '8');
INSERT INTO `tbsyslog` VALUES ('5746', '25eefbcb14f44514a020122d95d34997', '2019-12-23 18:59:26', 'POST', 'http://localhost:8181/querySub', '[{uId=1, bookType=1, returntype=2}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '5');
INSERT INTO `tbsyslog` VALUES ('5747', '7f490617261e437b9604f43bbfef53b7', '2019-12-23 18:59:31', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '6');
INSERT INTO `tbsyslog` VALUES ('5748', '8af2a5dce25e4f4a87824dd18756e4c8', '2019-12-23 19:02:22', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '4');
INSERT INTO `tbsyslog` VALUES ('5749', '5d29366dce634bd4bf223628cff60afe', '2019-12-23 19:02:57', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '3');
INSERT INTO `tbsyslog` VALUES ('5750', 'f57f99c08ae14904a83a617d2fed5bf1', '2019-12-23 19:02:58', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '5');
INSERT INTO `tbsyslog` VALUES ('5751', '158e13ed2ba54b8f8abc6a39c1c49438', '2019-12-23 19:02:58', 'POST', 'http://localhost:8181/querySub', '[{uId=1, bookType=1, returntype=2}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '2');
INSERT INTO `tbsyslog` VALUES ('5752', 'c2747642dea642bbad9ac3e6ac0bece4', '2019-12-23 19:03:09', 'POST', 'http://localhost:8181/queryUser', '[{userName=xueden, password=e10adc3949ba59abbe56e057f20f883e, passWord=123456, verificationCode=}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '6');
INSERT INTO `tbsyslog` VALUES ('5753', 'b0e1fb6b18c84079983a045ff8feda28', '2019-12-23 19:03:11', 'POST', 'http://localhost:8181/queryUserList', '[{userName=xueden, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '11');
INSERT INTO `tbsyslog` VALUES ('5754', 'ad1f1e89a8334a3581e1446b0fbef8f9', '2019-12-23 19:03:11', 'POST', 'http://localhost:8181/querySub', '[{uId=21, bookType=1, returntype=2}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '4');
INSERT INTO `tbsyslog` VALUES ('5755', 'b6d28c520adf4ef1bdd2af155e0f7bd3', '2019-12-23 19:03:15', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '4');
INSERT INTO `tbsyslog` VALUES ('5756', 'b7cc342e3de24f82938018eb1e8d28ba', '2019-12-23 19:03:18', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '5');
INSERT INTO `tbsyslog` VALUES ('5757', '39d36cccb90e478bb871954859ff3e53', '2019-12-23 19:03:20', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '6');
INSERT INTO `tbsyslog` VALUES ('5758', '5fb37b6aab2b41c394bb2b260110baaf', '2019-12-23 19:03:23', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '3');
INSERT INTO `tbsyslog` VALUES ('5759', '4030a0b2475e4c76974fadff1e16e909', '2019-12-23 19:03:25', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '3');
INSERT INTO `tbsyslog` VALUES ('5760', '219a74ac164e4da1b706b020cba02279', '2019-12-23 19:03:29', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '3');
INSERT INTO `tbsyslog` VALUES ('5761', '07e8b24eab9e448c94e1fbba2d675946', '2019-12-23 19:03:31', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '4');
INSERT INTO `tbsyslog` VALUES ('5762', '62d7e582f6c44e5d8cf872f4a028016a', '2019-12-23 19:03:38', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '4');
INSERT INTO `tbsyslog` VALUES ('5763', '81d5024973bc48cc95e497e54462f8bf', '2019-12-23 19:15:51', 'POST', 'http://localhost:8181/queryUser', '[{userName=xueden, password=e10adc3949ba59abbe56e057f20f883e, passWord=123456, verificationCode=}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '2');
INSERT INTO `tbsyslog` VALUES ('5764', '4e955983616f4e00abed2fb795c45e2e', '2019-12-23 19:15:53', 'POST', 'http://localhost:8181/queryUserList', '[{userName=xueden, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '10');
INSERT INTO `tbsyslog` VALUES ('5765', 'e91e0d4ea3c3451d8498333fba5b10c7', '2019-12-23 19:15:54', 'POST', 'http://localhost:8181/querySub', '[{uId=21, bookType=1, returntype=2}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '2');
INSERT INTO `tbsyslog` VALUES ('5766', '1b88f6b6456f4fa3867c9572e7b07db7', '2019-12-23 19:15:56', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '3');
INSERT INTO `tbsyslog` VALUES ('5767', '0e7253f20516474b901bfa22ad96c121', '2019-12-23 19:16:01', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '5');
INSERT INTO `tbsyslog` VALUES ('5768', '61ff0e19c11546a8b82a03911aec2cf5', '2019-12-23 19:16:04', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '6');
INSERT INTO `tbsyslog` VALUES ('5769', 'a5e8cad6963b40aabb0550b27b2d0895', '2019-12-23 19:16:06', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '5');
INSERT INTO `tbsyslog` VALUES ('5770', 'a179338ba4104219a9dc1cb5834d429d', '2019-12-23 19:16:15', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '5');
INSERT INTO `tbsyslog` VALUES ('5771', '0317d3c0d84542f999b4ef48f784d587', '2019-12-23 19:16:15', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '3');
INSERT INTO `tbsyslog` VALUES ('5772', 'ff1db9dea62048e68d775967011ed3ec', '2019-12-23 19:16:26', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '7');
INSERT INTO `tbsyslog` VALUES ('5773', 'aaac61991ffc4ab389621ea87ab62fc1', '2019-12-23 19:16:32', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '6');
INSERT INTO `tbsyslog` VALUES ('5774', 'd6fabce1c2d14e7ba58946d783499b46', '2019-12-23 19:16:36', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '6');
INSERT INTO `tbsyslog` VALUES ('5775', '78d351c9587a4227b132938d743da109', '2019-12-23 19:16:36', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '7');
INSERT INTO `tbsyslog` VALUES ('5776', '6391725702fe4aa3a529a3ee9b765ea2', '2019-12-23 19:16:41', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '3');
INSERT INTO `tbsyslog` VALUES ('5777', '3252cf14225c47e0a76033b4e2302992', '2019-12-23 19:16:41', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '3');
INSERT INTO `tbsyslog` VALUES ('5778', '41853ed504cb4e47af70ed2d9cf70620', '2019-12-23 19:16:42', 'POST', 'http://localhost:8181/querySub', '[{uId=1, bookType=1, returntype=2}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '1');
INSERT INTO `tbsyslog` VALUES ('5779', '32201a9c3b1742a6a8093aea7e09e556', '2019-12-23 19:17:00', 'POST', 'http://localhost:8181/queryUser', '[{userName=xueden, password=e10adc3949ba59abbe56e057f20f883e, passWord=123456, verificationCode=}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '2');
INSERT INTO `tbsyslog` VALUES ('5780', 'be82442d5bc84652aca0753a56e37b23', '2019-12-23 19:17:02', 'POST', 'http://localhost:8181/queryUserList', '[{userName=xueden, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '5');
INSERT INTO `tbsyslog` VALUES ('5781', 'acd25b61b6eb4b9f8cc9f9e52fa9a25f', '2019-12-23 19:17:03', 'POST', 'http://localhost:8181/querySub', '[{uId=21, bookType=1, returntype=2}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '3');
INSERT INTO `tbsyslog` VALUES ('5782', 'eb198dc80eab4fcbb96407c44f7a02c8', '2019-12-23 19:17:05', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '5');
INSERT INTO `tbsyslog` VALUES ('5783', '592240008e804b58849bc45b3dd32fe4', '2019-12-23 19:17:09', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '4');
INSERT INTO `tbsyslog` VALUES ('5784', '66d47dc5d45d4928b271fbb46edb2582', '2019-12-23 19:17:13', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '4');
INSERT INTO `tbsyslog` VALUES ('5785', 'f84c7897f05844f49842a123efcf7d75', '2019-12-23 19:17:21', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '5');
INSERT INTO `tbsyslog` VALUES ('5786', 'f5211de266374c2fa6d8a7d91fd73acd', '2019-12-23 19:17:32', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '5');
INSERT INTO `tbsyslog` VALUES ('5787', 'd51d7d1939864002b620c705729a836f', '2019-12-23 19:17:34', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '7');
INSERT INTO `tbsyslog` VALUES ('5788', '6c138577a1064dd1bd10dcb1571406f6', '2019-12-23 19:17:35', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '7');
INSERT INTO `tbsyslog` VALUES ('5789', '3fde35c592af44c5ba487a8ce5996920', '2019-12-23 19:17:49', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '9');
INSERT INTO `tbsyslog` VALUES ('5790', '3fde35c592af44c5ba487a8ce5996920', '2019-12-23 19:17:49', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '9');
INSERT INTO `tbsyslog` VALUES ('5791', 'a7b82bce4a8149aa924caa2528c96303', '2019-12-23 19:17:53', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '11');
INSERT INTO `tbsyslog` VALUES ('5792', '6e10f8277ea84869adbe71093caeff0c', '2019-12-23 19:17:54', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '8');
INSERT INTO `tbsyslog` VALUES ('5793', '984cd6140134424e8e2add1b2482889e', '2019-12-23 19:18:39', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '4');
INSERT INTO `tbsyslog` VALUES ('5794', '0e1a9fa84b5d446abc617d01d1160540', '2019-12-23 19:18:39', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '9');
INSERT INTO `tbsyslog` VALUES ('5795', '8f910b38ffb24a8eb2ea8e42f9ccd09c', '2019-12-23 19:24:48', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '8');
INSERT INTO `tbsyslog` VALUES ('5796', 'bff28a377ae44c31a90196b17137f7c9', '2019-12-23 19:24:49', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '3');
INSERT INTO `tbsyslog` VALUES ('5797', '87c481e6fd294aaf860c936bfd73a152', '2019-12-23 19:24:49', 'POST', 'http://localhost:8181/querySub', '[{uId=1, bookType=1, returntype=2}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '2');
INSERT INTO `tbsyslog` VALUES ('5798', '417ac8aa09784dfca8f54a13d8dee016', '2019-12-23 19:24:56', 'POST', 'http://localhost:8181/queryUser', '[{userName=xueden, password=e10adc3949ba59abbe56e057f20f883e, passWord=123456, verificationCode=}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '3');
INSERT INTO `tbsyslog` VALUES ('5799', 'fcdf509b020f491e9161aae6a4a373b8', '2019-12-23 19:24:58', 'POST', 'http://localhost:8181/queryUserList', '[{userName=xueden, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '4');
INSERT INTO `tbsyslog` VALUES ('5800', '297694eefa914963a797bf9badc5a8d2', '2019-12-23 19:24:58', 'POST', 'http://localhost:8181/querySub', '[{uId=21, bookType=1, returntype=2}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '2');
INSERT INTO `tbsyslog` VALUES ('5801', '4ea7774220e143acae651f53f9b15f8a', '2019-12-23 19:25:00', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '5');
INSERT INTO `tbsyslog` VALUES ('5802', 'b08c2cbdbac94d0485c25a8c6c715955', '2019-12-23 19:25:21', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '15');
INSERT INTO `tbsyslog` VALUES ('5803', '79e0d47a72574370a1e6db5f6c52e6f0', '2019-12-23 19:25:22', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '9');
INSERT INTO `tbsyslog` VALUES ('5804', 'fe24eb58b1144bedb624fb4096c03c41', '2019-12-23 19:25:34', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '11');
INSERT INTO `tbsyslog` VALUES ('5805', '828efaa06d72441fbabe92ae9b733da3', '2019-12-23 19:25:45', 'POST', 'http://localhost:8181/addUser', '[{userName=11, password=e10adc3949ba59abbe56e057f20f883e, uName=11, age=11, uid=11, sex=0}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '7');
INSERT INTO `tbsyslog` VALUES ('5806', '646eee8ae5a34557af2066034a264444', '2019-12-23 19:25:45', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '4');
INSERT INTO `tbsyslog` VALUES ('5807', 'cc2cf47699e249c893a93c21762a7f25', '2019-12-23 19:25:55', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '3');
INSERT INTO `tbsyslog` VALUES ('5808', '9812261493354ecaa62d1248f799045d', '2019-12-23 19:25:56', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '2');
INSERT INTO `tbsyslog` VALUES ('5809', '303127c27f7f43ba8465458dfd07a660', '2019-12-23 19:26:07', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '3');
INSERT INTO `tbsyslog` VALUES ('5810', '7a89d4027da444509016ccceb4001f85', '2019-12-23 19:32:25', 'POST', 'http://localhost:8181/queryUser', '[{userName=xueden, password=e10adc3949ba59abbe56e057f20f883e, passWord=123456, verificationCode=}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '6');
INSERT INTO `tbsyslog` VALUES ('5811', 'ec891278d98c45e3a0f77991d5202822', '2019-12-23 19:32:28', 'POST', 'http://localhost:8181/queryUserList', '[{userName=xueden, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '16');
INSERT INTO `tbsyslog` VALUES ('5812', 'cff3dcfa2d0747a3b0d677a120afc1c7', '2019-12-23 19:32:28', 'POST', 'http://localhost:8181/querySub', '[{uId=21, bookType=1, returntype=2}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '3');
INSERT INTO `tbsyslog` VALUES ('5813', '6c24b3c329754febb80fbab7e577388e', '2019-12-23 19:32:30', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '10');
INSERT INTO `tbsyslog` VALUES ('5814', '520908a3aa1642398e023ae11e560bd8', '2019-12-23 20:47:02', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '3');
INSERT INTO `tbsyslog` VALUES ('5815', '7cf3f9b6b011409f8d73b7294a27487b', '2019-12-23 20:49:58', 'POST', 'http://localhost:8181/queryUser', '[{userName=xueden, password=e10adc3949ba59abbe56e057f20f883e, passWord=123456, verificationCode=}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '2');
INSERT INTO `tbsyslog` VALUES ('5816', 'a61d858a84f74463aa9e4178bc909630', '2019-12-23 20:50:00', 'POST', 'http://localhost:8181/queryUserList', '[{userName=xueden, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '5');
INSERT INTO `tbsyslog` VALUES ('5817', 'cfeaeb00357347d5842c96dcf52a7f9d', '2019-12-23 20:50:01', 'POST', 'http://localhost:8181/querySub', '[{uId=21, bookType=1, returntype=2}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '2');
INSERT INTO `tbsyslog` VALUES ('5818', '19bd08d2fe044c97b9ad408f3c4c6a5f', '2019-12-23 20:50:03', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '4');
INSERT INTO `tbsyslog` VALUES ('5819', 'f0d3a9b2d93d40cebd745e1f2d33d05e', '2019-12-23 20:50:09', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '3');
INSERT INTO `tbsyslog` VALUES ('5820', 'd0783a6b074d4439906693aefc00470c', '2019-12-23 20:50:09', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '7');
INSERT INTO `tbsyslog` VALUES ('5821', '953453c1666343f7a87ff432e875f4f6', '2019-12-23 20:50:09', 'POST', 'http://localhost:8181/querySub', '[{uId=1, bookType=1, returntype=2}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '2');
INSERT INTO `tbsyslog` VALUES ('5822', 'a6ef56051fac4031b35a978e1e54dcef', '2019-12-23 20:50:17', 'POST', 'http://localhost:8181/queryUser', '[{userName=xueden, password=e10adc3949ba59abbe56e057f20f883e, passWord=123456, verificationCode=}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '2');
INSERT INTO `tbsyslog` VALUES ('5823', '6d4de901e7914ea5aac3740f803d247f', '2019-12-23 20:50:19', 'POST', 'http://localhost:8181/queryUserList', '[{userName=xueden, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '5');
INSERT INTO `tbsyslog` VALUES ('5824', 'f461b60fdde84c7c8bca4a0d3ab8d084', '2019-12-23 20:50:19', 'POST', 'http://localhost:8181/querySub', '[{uId=21, bookType=1, returntype=2}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '2');
INSERT INTO `tbsyslog` VALUES ('5825', 'f05cf26d457e47d0a0ae218676c51c17', '2019-12-23 20:50:21', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '9');
INSERT INTO `tbsyslog` VALUES ('5826', '6e5db467034a4314a5a32bf94e11b114', '2019-12-23 20:59:19', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '8');
INSERT INTO `tbsyslog` VALUES ('5827', 'b521764c79bb459091ce00389c283f3b', '2019-12-23 20:59:19', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '13');
INSERT INTO `tbsyslog` VALUES ('5828', '24a774ab68ea4b92be083b98382babd9', '2019-12-23 20:59:19', 'POST', 'http://localhost:8181/querySub', '[{uId=1, bookType=1, returntype=2}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '3');
INSERT INTO `tbsyslog` VALUES ('5829', 'a8999550dc464c1c8ff3e947b51eeada', '2019-12-23 20:59:29', 'POST', 'http://localhost:8181/queryUser', '[{userName=xueden, password=e10adc3949ba59abbe56e057f20f883e, passWord=123456, verificationCode=}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '2');
INSERT INTO `tbsyslog` VALUES ('5830', 'fa620ced8c0148fa9875eef34f23e444', '2019-12-23 20:59:31', 'POST', 'http://localhost:8181/queryUserList', '[{userName=xueden, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '4');
INSERT INTO `tbsyslog` VALUES ('5831', '7a4b32bd798a473ba9b56d51898a935c', '2019-12-23 20:59:31', 'POST', 'http://localhost:8181/querySub', '[{uId=21, bookType=1, returntype=2}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '2');
INSERT INTO `tbsyslog` VALUES ('5832', '038bbb7dff23467ca49c77b833a2851e', '2019-12-23 20:59:33', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '3');
INSERT INTO `tbsyslog` VALUES ('5833', '78628a10979c4684ab7e31ac2b2dd675', '2019-12-23 21:03:19', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '3');
INSERT INTO `tbsyslog` VALUES ('5834', '78628a10979c4684ab7e31ac2b2dd675', '2019-12-23 21:03:19', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '15');
INSERT INTO `tbsyslog` VALUES ('5835', 'bec90452662c4aa6a92486a53e4f1493', '2019-12-23 21:03:19', 'POST', 'http://localhost:8181/querySub', '[{uId=1, bookType=1, returntype=2}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '8');
INSERT INTO `tbsyslog` VALUES ('5836', '6bb5c448ff6b4ffe991cbe949ff10bd2', '2019-12-23 21:03:32', 'POST', 'http://localhost:8181/queryUser', '[{userName=xueden, password=e10adc3949ba59abbe56e057f20f883e, passWord=123456, verificationCode=}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '2');
INSERT INTO `tbsyslog` VALUES ('5837', '6d811c9607684f188d7a00ed7c244885', '2019-12-23 21:03:34', 'POST', 'http://localhost:8181/queryUserList', '[{userName=xueden, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '4');
INSERT INTO `tbsyslog` VALUES ('5838', '5a8bb5eee87e41d78c264fea8a9edcf5', '2019-12-23 21:03:34', 'POST', 'http://localhost:8181/querySub', '[{uId=21, bookType=1, returntype=2}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '3');
INSERT INTO `tbsyslog` VALUES ('5839', 'fb5a3f05adc045209b96854b62eb5f2f', '2019-12-23 21:03:54', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '2');
INSERT INTO `tbsyslog` VALUES ('5840', 'd5645dd25f8840aebf914498b92c80f0', '2019-12-23 21:22:23', 'POST', 'http://localhost:8181/queryUser', '[{userName=xueden, password=e10adc3949ba59abbe56e057f20f883e, passWord=123456, verificationCode=}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '2');
INSERT INTO `tbsyslog` VALUES ('5841', '7ebbe26ba93045ad8d68d7ab13887af9', '2019-12-23 21:22:25', 'POST', 'http://localhost:8181/queryUserList', '[{userName=xueden, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '4');
INSERT INTO `tbsyslog` VALUES ('5842', '3cd0ad4a280843518f5cbf166c971173', '2019-12-23 21:22:25', 'POST', 'http://localhost:8181/querySub', '[{uId=21, bookType=1, returntype=2}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '3');
INSERT INTO `tbsyslog` VALUES ('5843', 'de3cde5c283a4a70bf57606141be8c59', '2019-12-23 21:22:33', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '8');
INSERT INTO `tbsyslog` VALUES ('5844', 'ee4d63fea4f34f0fab98de98dad1bbf5', '2019-12-24 09:00:49', 'POST', 'http://localhost:8181/queryUser', '[{userName=xueden, password=e10adc3949ba59abbe56e057f20f883e, passWord=123456, verificationCode=}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '518');
INSERT INTO `tbsyslog` VALUES ('5845', 'e63e7f96eed94ccfb1b780baa261e8eb', '2019-12-24 09:00:52', 'POST', 'http://localhost:8181/queryUserList', '[{userName=xueden, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '117');
INSERT INTO `tbsyslog` VALUES ('5846', 'd9aa00fc04944fada4a27140aafb7161', '2019-12-24 09:00:52', 'POST', 'http://localhost:8181/querySub', '[{uId=21, bookType=1, returntype=2}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '16');
INSERT INTO `tbsyslog` VALUES ('5847', 'ca33669fb9f44c8eb72c6d343201f5f3', '2019-12-24 09:00:58', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '6');
INSERT INTO `tbsyslog` VALUES ('5848', 'e7e259bb38fa4eaab821fc7ef04ceede', '2019-12-24 09:07:11', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '6');
INSERT INTO `tbsyslog` VALUES ('5849', 'e7e259bb38fa4eaab821fc7ef04ceede', '2019-12-24 09:07:11', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '25');
INSERT INTO `tbsyslog` VALUES ('5850', 'c24a7ccf286c4eb885150ebeabd3589b', '2019-12-24 09:07:27', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '8');
INSERT INTO `tbsyslog` VALUES ('5851', '4a583d4296b64718924e1f6605692e2b', '2019-12-24 09:07:41', 'POST', 'http://localhost:8181/queryUserList', '[{userName=, sex=, pageNum=1, pageSize=10}]', 'WINDOWS_7-CHROME(75.0.3770.142)', '127.0.0.1', '5');

-- ----------------------------
-- Table structure for tbuser
-- ----------------------------
DROP TABLE IF EXISTS `tbuser`;
CREATE TABLE `tbuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uId` varchar(32) DEFAULT NULL,
  `userName` varchar(20) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `uName` varchar(20) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `sex` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tbuser
-- ----------------------------
INSERT INTO `tbuser` VALUES ('21', 'xueden', 'xueden', 'e10adc3949ba59abbe56e057f20f883e', '学灯网', '23', '0');
INSERT INTO `tbuser` VALUES ('25', '002', 'xueden01', '123456', '张学友', '66', '0');

-- ----------------------------
-- Table structure for t_user_sub
-- ----------------------------
DROP TABLE IF EXISTS `t_user_sub`;
CREATE TABLE `t_user_sub` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uId` int(11) DEFAULT NULL,
  `bId` int(11) DEFAULT NULL,
  `subDateTime` datetime DEFAULT NULL,
  `returnDateTime` datetime DEFAULT NULL,
  `bookType` int(4) DEFAULT NULL,
  `returntype` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bookId` (`bId`),
  KEY `userId` (`uId`),
  CONSTRAINT `bookId` FOREIGN KEY (`bId`) REFERENCES `bookmanage` (`bId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `userId` FOREIGN KEY (`uId`) REFERENCES `tbuser` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user_sub
-- ----------------------------
INSERT INTO `t_user_sub` VALUES ('61', '21', '5', '2019-12-11 08:32:24', '2019-12-11 08:32:36', '2', '3');
INSERT INTO `t_user_sub` VALUES ('62', '21', '7', '2019-12-11 19:36:07', null, '2', '3');
INSERT INTO `t_user_sub` VALUES ('63', '25', '7', '2019-12-11 19:36:07', '2019-12-16 19:36:07', '1', '1');
