CREATE database Book;
use Book;

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

/**
 * 管理员表
 */
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `account` char(16) NOT NULL,
  `password` char(16) NULL DEFAULT NULL,
  `name` char(16) NULL DEFAULT NULL,
  PRIMARY KEY (`account`) USING BTREE
) ENGINE = InnoDB ;

/**
* 添加数据
*/
INSERT INTO `admin` VALUES ('admin', '123456', '管理员');


DROP TABLE IF EXISTS `apply`;
CREATE TABLE `apply`  (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `did` int(11) NULL DEFAULT NULL COMMENT '景区id',
  `dname` char(16) NULL DEFAULT NULL,
  `wid` int(11) NULL DEFAULT NULL,
  `reason` char(32) NULL DEFAULT NULL COMMENT '原因',
  `applytime` datetime(0) NULL DEFAULT NULL COMMENT '景区的名额',
  `request` char(8) NULL DEFAULT NULL COMMENT '状态：yes or no',
  `state` char(8) NULL DEFAULT NULL COMMENT '状态：等待处理，同意，拒绝',
  PRIMARY KEY (`aid`) USING BTREE,
  INDEX `wid`(`wid`) USING BTREE,
  INDEX `did`(`did`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 ;

INSERT INTO `apply` VALUES (1, 1, '中山桥', 1, '展现风采', '2020-01-01 00:00:00', '申请开放', '等待处理');
INSERT INTO `apply` VALUES (2, 2, '黄河母亲', 2, '展现风采', '2020-02-01 00:00:00', '申请开放', '等待处理');
INSERT INTO `apply` VALUES (3, 3, '五泉山公园', 3, '打扫卫生', '2020-03-01 00:00:00', '申请闭馆', '处理完成');
INSERT INTO `apply` VALUES (4, 4, '甘肃博物馆', 4, '防止踩踏', '2020-04-01 00:00:00', '申请闭馆', '等待处理');
INSERT INTO `apply` VALUES (5, 5, '景区5', 5, '原因5', '2020-05-01 00:00:00', 'no', '处理完成');
INSERT INTO `apply` VALUES (6, 6, '景区6', 6, '原因6', '2020-06-01 00:00:00', 'yes', '等待处理');
INSERT INTO `apply` VALUES (7, 7, '景区7', 7, '原因7', '2020-07-01 00:00:00', 'no', '处理完成');
INSERT INTO `apply` VALUES (8, 8, '景区8', 8, '原因8', '2020-08-01 00:00:00', 'yes', '等待处理');
INSERT INTO `apply` VALUES (9, 9, '景区9', 9, '原因9', '2020-09-01 00:00:00', 'no', '处理完成');
INSERT INTO `apply` VALUES (10, 10, '景区10', 10, '原因10', '2020-10-01 00:00:00', 'yes', '等待处理');

/**
* 景区表
*/

DROP TABLE IF EXISTS `spot`;
CREATE TABLE `spot`  (
  `did` int(11) NOT NULL AUTO_INCREMENT,
  `account` char(16) NULL DEFAULT NULL,
  `password` char(16) NULL DEFAULT NULL,
  `dname` char(16) NULL DEFAULT NULL,
  `fee` int(11) NULL DEFAULT NULL COMMENT '预约费',
  `age` tinyint(4) NULL DEFAULT NULL,
  `office` char(16) NULL DEFAULT NULL,
  `room` char(16) NULL DEFAULT NULL,
  `career` char(8) NULL DEFAULT NULL,
  `description` varchar(255) NULL DEFAULT NULL,
  `picpath` varchar(64) NULL DEFAULT NULL,
  PRIMARY KEY (`did`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 ;

INSERT INTO `spot` VALUES (1, '00001', '123456', '中山桥', 5,  116, '城关区', '城关区滨河路中段', '五A级景区', '中山桥始建于1907年,由德国商人承建，历时4年建成。这座桥梁的设计和建造在当时堪称世界先进水平，为中国桥梁建设的发展奠定了基础。中山桥全长233.5米，宽7.5米，共有6个桥墩，每个桥墩之间跨度为30米。桥面铺设有木质轨道，用于通行火车和马车。', '/url.jpg');
INSERT INTO `spot` VALUES (2, '00002', '234567', '黄河母亲', 5, 119, '城关区', '城关区滨河路中段', '五A级景区', '雁荡山被誉为“海上名山、天下奇景”，因“山貌堪称稀世之珍，气势甲于海内”而被赞为“天下第一山”。', '/url2.jpg');
INSERT INTO `spot` VALUES (3, '00003', '345678', '仁寿山公园', 5, 118, '安宁区', '安宁区刘家堡北部', '五A级景区', '大足石刻是唐至宋时期我国石窟艺术的瑰宝，是目前世界上最大的汉语石刻艺术宝库。', '/url3.jpg');
INSERT INTO `spot` VALUES (4, '00004', '456789', '甘肃博物馆', 5, 110, '七里河区', '七里河区西津西路', '五A级景区', '布达拉宫是世界上海拔最高，集宫殿、城堡和寺庙于一体的宏伟建筑，也是西藏大地上最庞大、最完整的古代宫堡建筑群。', '/url4.jpg');
INSERT INTO `spot` VALUES (5, '00005', '567890', '黄山', 5, 126, '黄山市', '黄山市黄山区', '五A级景区', '黄山被誉为“天下第一奇山”，它集中国山水之美的诸多特点于一身，如奇松、怪石、云海、温泉、冬雪等，层次分明，气势磅礴。', '/url5.jpg');
INSERT INTO `spot` VALUES (6, '00006', '678901', '天津之眼', 5, 121, '天津市', '天津市河北区', '五A级景区', '天津之眼是世界上唯一一座建在桥上的摩天轮。', '/url6.jpg');
-- INSERT INTO `spot` VALUES (7, '00007', '789012', '颐和园', 5, 128, '北京市', '北京市海淀区', '五A级景区', '颐和园是中国现存保存最完整的皇家园林，被誉为“皇家园林博物馆”，也是国家重点旅游景点。', '/url7.jpg');
INSERT INTO `spot` VALUES (8, '00008', '890123', '故宫', 5, 123, '北京市', '北京市东城区', '五A级景区', '故宫是明清两代的皇家宫殿，也是世界上现存规模最大、保存最为完整的木质结构古建筑群。', '/url8.jpg');
INSERT INTO `spot` VALUES (9, '00009', '901234', '张家界', 5, 125, '湖南省', '张家界市岳阳县', '五A级景区', '张家界是中国第一个国家森林公园，以三千奇峰异石、八百优水为特色。', '/url9.jpg');
INSERT INTO `spot` VALUES (10, '00010', '012345', '乌镇', 5, 126, '浙江省', '嘉兴市桐乡县', '五A级景区', '乌镇是中国江南六大古镇之一，被誉为“鱼米之乡、丝绸之府”。', '/url10.jpg');
INSERT INTO `spot` VALUES (11, '00011', '123450', '长城', 5, 126, '北京市', '北京市怀柔区', '五A级景区', '长城是中国古代伟大的防御工程之一，是中华民族的象征。', '/url11.jpg');
INSERT INTO `spot` VALUES (12, '00012', '234561', '桂林山水', 5, 112, '广西壮族自治区', '桂林市', '五A级景区', '桂林山水以山为靓，水为秀，山水皆秀，并以南溪山为代表，被誉为“桂林山水甲天下”。', '/url12.jpg');
INSERT INTO `spot` VALUES (13, '00013', '345672', '西湖', 5, 116, '浙江省', '杭州市', '五A级景区', '西湖是浙江省的名胜区和国家重点风景名胜区，也是中国首批国家5A级旅游区，被誉为“人间天堂”。', '/url13.jpg');
INSERT INTO `spot` VALUES (14, '00014', '456783', '云冈石窟', 5, 113, '山西省', '大同市', '五A级景区', '云冈石窟是古代中韩文化交流的重要载体，是继敦煌莫高窟之后的又一艺术的瑰宝。', '/url14.jpg');
INSERT INTO `spot` VALUES (15, '00015', '567894', '泰山', 5, 118, '山东省', '泰安市', '五A级景区', '泰山是中国五岳之首，是象征中国儒家文化的山。', '/url15.jpg');
INSERT INTO `spot` VALUES (16, '00016', '678905', '鼓浪屿', 5, 120, '福建省', '厦门市', '五A级景区', '鼓浪屿是中国的音乐之岛，也是闽台交流的前沿阵地，集自然风光、殖民建筑、历史文化于一体。', '/url16.jpg');
INSERT INTO `spot` VALUES (17, '00017', '789016', '秦始皇陵', 5, 123, '陕西省', '西安市临潼区', '五A级景区', '秦始皇陵是中国历史上第一个皇帝秦始皇的陵墓，也是世界上最大的地下皇家陵寝。', '/url17.jpg');
INSERT INTO `spot` VALUES (18, '00018', '890127', '峨眉山', 5, 116, '四川省', '乐山市', '五A级景区', '峨眉山被誉为“洞天福地，仙灵聚会”，是全球第一座获得“世界遗产”称号的山。', '/url18.jpg');
INSERT INTO `spot` VALUES (19, '00019', '901238', '三清山', 5, 117, '江西省', '上饶市玉山县', '五A级景区', '三清山是世界自然遗产、世界地质公园、国家重点风景名胜区和国家级自然保护区，被誉为典型的“花岗岩地貌”。', '/url19.jpg');

DROP TABLE IF EXISTS `integrity`;
CREATE TABLE `integrity`  (
  `integrityid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NULL DEFAULT NULL COMMENT '游客id',
  `dname` char(16) NULL DEFAULT NULL COMMENT '景区名称',
  `office` char(16) NULL DEFAULT NULL COMMENT '地区名字',
  `time` datetime(0) NULL DEFAULT NULL COMMENT '诚信记录的时间',
  `reason` char(32) NULL DEFAULT NULL COMMENT '原因',
  `score` tinyint(4) NULL DEFAULT NULL COMMENT '分值',
  PRIMARY KEY (`integrityid`) USING BTREE,
  INDEX `pid`(`pid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 ;;

INSERT INTO `integrity` VALUES (1, 1, '杨玉涛', '中山桥', '2023-01-15 22:16:10', '完成预约', 10);
INSERT INTO `integrity` VALUES (2, 2, '王丽', '黄河母亲', '2023-01-25 09:10:20', '爽约', -10);
INSERT INTO `integrity` VALUES (3, 3, '张明', '仁寿山公园', '2023-02-05 10:23:45', '完成预约', 10);
INSERT INTO `integrity` VALUES (4, 4, '刘华', '甘肃博物馆', '2023-02-15 15:05:05', '完成预约', 10);
-- INSERT INTO `integrity` VALUES (5, 5, '赵桂英', '黄山', '2023-02-20 16:44:30', '完成预约', 10);
-- INSERT INTO `integrity` VALUES (6, 6, '李洪金', '天津之眼', '2023-03-05 08:12:50', '完成预约', 10);
-- INSERT INTO `integrity` VALUES (7, 7, '胡一刀', '颐和园', '2023-03-20 18:18:18', '完成预约', 10);
-- INSERT INTO `integrity` VALUES (8, 8, '沈穎', '故宫', '2023-04-02 11:24:36', '完成预约', 10);
-- INSERT INTO `integrity` VALUES (9, 9, '程咬金', '张家界', '2023-04-22 10:20:00', '完成预约', 10);
-- INSERT INTO `integrity` VALUES (10, 10, '赵志敬', '乌镇', '2023-05-16 13:28:05', '完成预约', 10);
-- INSERT INTO `integrity` VALUES (11, 11, '于海', '长城', '2023-06-08 15:30:25', '完成预约', 10);
-- INSERT INTO `integrity` VALUES (12, 12, '李明珠', '桂林山水', '2023-06-30 09:35:55', '完成预约', 10);
-- INSERT INTO `integrity` VALUES (13, 13, '王梦婷', '西湖', '2023-07-10 15:14:45', '完成预约', 10);
-- INSERT INTO `integrity` VALUES (14, 14, '张三', '云冈石窟', '2023-07-26 12:03:06', '完成预约', 10);
-- INSERT INTO `integrity` VALUES (15, 15, '李四', '泰山', '2023-08-11 15:42:35', '完成预约', 10);
-- INSERT INTO `integrity` VALUES (16, 16, '王五', '鼓浪屿', '2023-08-28 14:21:10', '完成预约', 10);
-- INSERT INTO `integrity` VALUES (17, 17, '赵六', '秦始皇陵', '2023-09-13 13:40:15', '完成预约', 10);
-- INSERT INTO `integrity` VALUES (18, 18, '孙琳', '峨眉山', '2023-09-25 18:55:25', '完成预约', 10);
-- INSERT INTO `integrity` VALUES (19, 19, '周杰', '三清山', '2023-10-15 09:16:55', '完成预约', 10);
-- INSERT INTO `integrity` VALUES (20, 20, '吕布', '南京博物院', '2023-10-30 11:42:35', '完成预约', 10);
-- INSERT INTO `integrity` VALUES (21, 21, '貂蝉', '南京博物院', '2023-11-10 16:24:45', '完成预约', 10);

DROP TABLE IF EXISTS `region`;
CREATE TABLE `region`  (
  `officename` char(16) NOT NULL,
  `description` varchar(255) NULL DEFAULT NULL,
  `doctornum` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`officename`) USING BTREE
) ENGINE = InnoDB ;

INSERT INTO `region` VALUES ('城关区', '城关区描述', 10);
INSERT INTO `region` VALUES ('安宁区', '安宁区描述', 10);
INSERT INTO `region` VALUES ('东城区', '东城区描述', 10);
INSERT INTO `region` VALUES ('南城区', '南城区描述', 10);
INSERT INTO `region` VALUES ('北城区', '北城区描述', 10);
INSERT INTO `region` VALUES ('中山区', '中山区描述', 10);
INSERT INTO `region` VALUES ('西青区', '西青区描述', 10);
INSERT INTO `region` VALUES ('南开区', '南开区描述', 10);
INSERT INTO `region` VALUES ('河西区', '河西区描述', 10);
INSERT INTO `region` VALUES ('河东区', '河东区描述', 10);
INSERT INTO `region` VALUES ('红桥区', '红桥区描述', 10);
INSERT INTO `region` VALUES ('和平区', '和平区描述', 10);
INSERT INTO `region` VALUES ('河北区', '河北区描述', 10);
INSERT INTO `region` VALUES ('武清区', '武清区描述', 10);
INSERT INTO `region` VALUES ('白云区', '白云区描述', 10);
INSERT INTO `region` VALUES ('海淀区', '海淀区描述', 10);
INSERT INTO `region` VALUES ('朝阳区', '朝阳区描述', 10);
INSERT INTO `region` VALUES ('青羊区', '青羊区描述', 10);
INSERT INTO `region` VALUES ('锦江区', '锦江区描述', 10);
INSERT INTO `region` VALUES ('金牛区', '金牛区描述', 10);
INSERT INTO `region` VALUES ('武侯区', '武侯区描述', 10);

DROP TABLE IF EXISTS `visitor`;
CREATE TABLE `visitor`  (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `account` char(16) NULL DEFAULT NULL,
  `email` char(32) NULL DEFAULT NULL,
  `password` char(32) NULL DEFAULT NULL,
  `name` char(16) NULL DEFAULT NULL,
  `integrity` tinyint(4) NULL DEFAULT NULL,
  PRIMARY KEY (`pid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 ;

INSERT INTO `visitor` VALUES (1, '00001', '3348225655@qq.com', '123456', '杨玉涛', 100);
INSERT INTO `visitor` VALUES (2, '00002', 'email2@email.com', '123456', '王丽', 100);
INSERT INTO `visitor` VALUES (3, '00003', 'email3@email.com', '123456', '张明', 100);
INSERT INTO `visitor` VALUES (4, '00004', 'email4@email.com', '123456', '刘华', 100);
INSERT INTO `visitor` VALUES (5, '00005', 'email5@email.com', '123456', '赵元', 100);
INSERT INTO `visitor` VALUES (6, '00006', 'email6@email.com', '123456', '刘阳', 100);
INSERT INTO `visitor` VALUES (7, '00007', 'email7@email.com', '123456', '林雪', 100);
INSERT INTO `visitor` VALUES (8, '00008', 'email8@email.com', '123456', '孙萌', 100);
INSERT INTO `visitor` VALUES (9, '00009', 'email9@email.com', '123456', '陈帆', 100);
INSERT INTO `visitor` VALUES (10, '00010', 'email10@email.com', '123456', '方春', 100);
INSERT INTO `visitor` VALUES (11, '00011', 'email11@email.com', '123456', '吴婷', 100);
INSERT INTO `visitor` VALUES (12, '00012', 'email12@email.com', '123456', '郝雷', 100);
INSERT INTO `visitor` VALUES (13, '00013', 'email13@email.com', '123456', '钱翔', 100);
INSERT INTO `visitor` VALUES (14, '00014', 'email14@email.com', '123456', '孙默', 100);
INSERT INTO `visitor` VALUES (15, '00015', 'email15@email.com', '123456', '于海', 100);
INSERT INTO `visitor` VALUES (16, '00016', 'email16@email.com', '123456', '张晗', 100);
INSERT INTO `visitor` VALUES (17, '00017', 'email17@email.com', '123456', '冉朝', 100);
INSERT INTO `visitor` VALUES (18, '00018', 'email18@email.com', '123456', '曾可', 100);
INSERT INTO `visitor` VALUES (19, '00019', 'email19@email.com', '123456', '唐飞', 100);
INSERT INTO `visitor` VALUES (20, '00020', 'email20@email.com', '123456', '侯晨', 100);
INSERT INTO `visitor` VALUES (21, '00021', 'email21@email.com', '123456', '鲁翠', 100);

DROP TABLE IF EXISTS `recode`;
CREATE TABLE `recode`  (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NULL DEFAULT NULL COMMENT '游客id',
  `wid` int(11) NULL DEFAULT NULL COMMENT '工作日id',
  `did` int(11) NULL DEFAULT NULL COMMENT '景区id',
  `serialnumber` int(11) NULL DEFAULT NULL COMMENT '预约序号',
  `visitdate` date NULL DEFAULT NULL COMMENT '参观日期',
  `visitnoon` char(4) NULL DEFAULT NULL COMMENT '参观上午或下午',
  `visittime` time(0) NULL DEFAULT NULL COMMENT '参观时间',
  `ordertime` datetime(0) NULL DEFAULT NULL COMMENT '预约记录的时间',
  `state` char(8) NULL DEFAULT NULL COMMENT '预约状态：成功，取消，完成，爽约',
  PRIMARY KEY (`rid`) USING BTREE,
  INDEX `pid`(`pid`) USING BTREE,
  INDEX `did`(`did`) USING BTREE,
  INDEX `wid`(`wid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 ;


INSERT INTO `recode` VALUES (1, 1, 119, 9, 5, '2023-01-16', '上午', '10:06:00', '2019-01-15 11:27:13', '完成');
INSERT INTO `recode` VALUES (2, 1, 135, 10, 7, '2023-01-17', '上午', '10:54:00', '2019-01-15 11:27:33', '爽约');
INSERT INTO `recode` VALUES (3, 1, 119, 9, 7, '2023-01-16', '上午', '10:54:00', '2019-01-15 16:28:59', '完成');
INSERT INTO `recode` VALUES (4, 1, 77, 6, 5, '2023-01-16', '上午', '10:06:00', '2019-01-15 20:30:51', '取消');
INSERT INTO `recode` VALUES (5, 4, 217, 16, 7, '2023-01-16', '上午', '10:54:00', '2019-01-15 20:40:20', '成功');
INSERT INTO `recode` VALUES (6, 4, 301, 17, 8, '2023-01-16', '上午', '11:18:00', '2019-01-15 20:40:43', '成功');
INSERT INTO `recode` VALUES (7, 4, 263, 19, 8, '2023-01-18', '上午', '11:18:00', '2019-01-15 20:41:14', '成功');
INSERT INTO `recode` VALUES (8, 4, 267, 5, 9, '2023-01-20', '上午', '11:42:00', '2019-01-15 20:50:48', '成功');
INSERT INTO `recode` VALUES (9, 4, 277, 5, 5, '2023-01-18', '上午', '10:06:00', '2019-01-15 20:51:03', '爽约');
INSERT INTO `recode` VALUES (10, 4, 217, 16, 6, '2023-01-16', '上午', '10:30:00', '2019-01-15 20:58:26', '成功');
INSERT INTO `recode` VALUES (11, 4, 177, 13, 10, '2023-01-17', '上午', '12:06:00', '2019-01-15 20:58:52', '成功');
INSERT INTO `recode` VALUES (12, 4, 73, 6, 5, '2023-01-21', '上午', '10:06:00', '2019-01-15 20:59:24', '成功');
INSERT INTO `recode` VALUES (13, 4, 125, 9, 10, '2023-01-19', '上午', '12:06:00', '2019-01-15 21:00:46', '爽约');
INSERT INTO `recode` VALUES (14, 4, 153, 11, 8, '2023-01-19', '上午', '11:18:00', '2019-01-15 21:04:59', '成功');
INSERT INTO `recode` VALUES (15, 1, 75, 6, 8, '2023-01-22', '上午', '11:18:00', '2019-01-16 13:47:41', '取消');
INSERT INTO `recode` VALUES (16, 1, 9, 1, 6, '2023-01-17', '上午', '10:30:00', '2019-01-16 15:20:39', '取消');
INSERT INTO `recode` VALUES (17, 1, 21, 2, 8, '2023-01-23', '上午', '11:18:00', '2019-01-17 20:52:04', '取消');
INSERT INTO `recode` VALUES (18, 1, 7, 1, 10, '2023-05-15', '上午', '12:06:00', '2019-05-14 10:59:13', '成功');
INSERT INTO `recode` VALUES (19, 1, 107, 8, 8, '2023-05-16', '上午', '11:18:00', '2019-05-14 12:08:31', '成功');
INSERT INTO `recode` VALUES (20, 1, 7, 1, 2, '2023-05-15', '上午', '08:54:00', '2019-05-14 16:13:49', '成功');
INSERT INTO `recode` VALUES (21, 1, 3, 1, 7, '2023-05-20', '上午', '10:54:00', '2019-05-19 14:58:26', '成功');
INSERT INTO `recode` VALUES (22, 1, 23, 2, 8, '2023-09-12', '上午', '11:18:00', '2019-09-11 16:40:13', '成功');


-- INSERT INTO `recode` VALUES (1, 1, 119, 9, 5, '2019-01-16', '上午', '10:06:00', '2023-01-15 11:27:13', '完成');
-- INSERT INTO `recode` VALUES (2, 2, 120, 10, 6, '2019-02-12', '下午', '14:15:00', '2023-02-16 12:32:20', '完成');
-- INSERT INTO `recode` VALUES (3, 3, 121, 11, 7, '2019-03-21', '下午', '16:20:00', '2023-03-15 13:11:35', '取消');
-- INSERT INTO `recode` VALUES (4, 4, 122, 12, 8, '2019-04-17', '上午', '09:05:00', '2023-04-16 14:51:00', '完成');
-- INSERT INTO `recode` VALUES (5, 5, 123, 13, 9, '2019-05-15', '上午', '10:35:00', '2023-05-15 15:42:30', '成功');
-- INSERT INTO `recode` VALUES (6, 6, 124, 14, 10, '2019-06-22', '下午', '15:45:00', '2023-06-15 11:31:45', '取消');
-- INSERT INTO `recode` VALUES (7, 7, 125, 15, 11, '2019-07-16', '上午', '08:20:00', '2023-07-16 12:13:50', '完成');
-- INSERT INTO `recode` VALUES (8, 8, 126, 16, 12, '2019-08-18', '下午', '13:30:00', '2023-08-16 13:51:30', '完成');
-- INSERT INTO `recode` VALUES (9, 9, 127, 17, 13, '2019-09-22', '上午', '11:50:00', '2023-09-16 16:42:40', '爽约');
-- INSERT INTO `recode` VALUES (10, 10, 128, 18, 14, '2019-10-16', '下午', '12:15:00', '2023-10-16 17:31:15', '完成');
-- INSERT INTO `recode` VALUES (11, 11, 129, 19, 15, '2019-11-22', '上午', '10:30:00', '2023-11-16 10:16:35', '完成');
-- INSERT INTO `recode` VALUES (12, 12, 130, 20, 16, '2019-12-16', '下午', '14:40:00', '2023-12-16 11:17:00', '爽约');
-- INSERT INTO `recode` VALUES (13, 13, 131, 21, 17, '2020-01-15', '上午', '09:10:00', '2023-01-15 15:32:50', '完成');
-- INSERT INTO `recode` VALUES (14, 14, 132, 22, 18, '2020-02-20', '下午', '16:05:00', '2023-02-15 10:33:15', '完成');
-- INSERT INTO `recode` VALUES (15, 15, 133, 23, 19, '2020-03-18', '上午', '11:15:00', '2023-03-15 11:20:50', '完成');
-- INSERT INTO `recode` VALUES (16, 16, 134, 24, 20, '2020-04-16', '下午', '14:45:00', '2023-04-15 12:42:40', '完成');
-- INSERT INTO `recode` VALUES (17, 17, 135, 25, 21, '2020-05-22', '上午', '10:55:00', '2023-05-15 16:31:30', '取消');
-- INSERT INTO `recode` VALUES (18, 18, 136, 26, 22, '2020-06-16', '下午', '13:10:00', '2023-06-15 14:52:20', '取消');
-- INSERT INTO `recode` VALUES (19, 19, 137, 27, 23, '2020-07-15', '上午', '11:25:00', '2023-07-16 15:31:15', '完成');
-- INSERT INTO `recode` VALUES (20, 20, 138, 28, 24, '2020-08-20', '下午', '16:35:00', '2023-08-16 11:51:10', '完成');
-- INSERT INTO `recode` VALUES (21, 21, 139, 29, 25, '2020-09-16', '上午', '10:15:00', '2023-09-16 16:12:00', '完成');

DROP TABLE IF EXISTS `room`;
CREATE TABLE `room`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `officename` char(16) NULL DEFAULT NULL,
  `roomname` char(16) NULL DEFAULT NULL,
  `doctornum` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `officename`(`officename`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 ;

INSERT INTO `room` VALUES (1, '城关区', '城关区滨河路中段', 2);
INSERT INTO `room` VALUES (2, '城关区', '城关区滨河路中段', 2);
INSERT INTO `room` VALUES (3, '安宁区', '安宁区刘家堡北部',  1);
INSERT INTO `room` VALUES (4, '七里河区', '七里河区西津西路', 1);
INSERT INTO `room` VALUES (5, '北城区', '北城区长江路东段', 2);
INSERT INTO `room` VALUES (6, '中山区', '中山区解放路北段', 2);
INSERT INTO `room` VALUES (7, '西青区', '西青区胜利大街南段', 2);
INSERT INTO `room` VALUES (8, '南开区', '南开区银如路南段', 2);
INSERT INTO `room` VALUES (9, '河西区', '河西区天景大道北段', 2);
INSERT INTO `room` VALUES (10, '河东区', '河东区世豪街西段', 2);
INSERT INTO `room` VALUES (11, '红桥区', '红桥区五星大道南段', 2);
INSERT INTO `room` VALUES (12, '和平区', '和平区长安街北段', 2);
INSERT INTO `room` VALUES (13, '河北区', '河北区富强路南段', 2);
INSERT INTO `room` VALUES (14, '武清区', '武清区健康街北段', 2);
INSERT INTO `room` VALUES (15, '白云区', '白云区江湾路南段', 2);
INSERT INTO `room` VALUES (16, '海淀区', '海淀区明亮大道北段', 2);
INSERT INTO `room` VALUES (17, '朝阳区', '朝阳区友谊街南段', 2);
INSERT INTO `room` VALUES (18, '青羊区', '青羊区保安路北段', 2);
INSERT INTO `room` VALUES (19, '锦江区', '锦江区欢乐街南段', 2);
INSERT INTO `room` VALUES (20, '金牛区', '金牛区安定路北段', 2);
INSERT INTO `room` VALUES (21, '武侯区', '武侯区清晨大街南段', 2);

DROP TABLE IF EXISTS `workday`;
CREATE TABLE `workday`  (
  `wid` int(11) NOT NULL AUTO_INCREMENT,
  `did` int(11) NULL DEFAULT NULL COMMENT '景区id',
  `worktime` char(4) NULL DEFAULT NULL COMMENT '景区工作日，星期几',
  `ampm` char(4) NULL DEFAULT NULL COMMENT '景区工作日的上午或下午',
  `nsnum` int(11) NULL DEFAULT NULL COMMENT '景区这天上午或下午的预约数',
  `state` char(8) NULL DEFAULT NULL COMMENT '状态：已满，预约，闭馆',
  PRIMARY KEY (`wid`) USING BTREE,
  INDEX `did`(`did`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 365 ;

INSERT INTO `workday` VALUES (1, 1, '0', '上午', 10, '预约');
INSERT INTO `workday` VALUES (2, 1, '0', '下午', 9, '预约');
INSERT INTO `workday` VALUES (3, 1, '1', '上午', 8, '预约');
INSERT INTO `workday` VALUES (4, 1, '1', '下午', 10, '预约');
INSERT INTO `workday` VALUES (5, 1, '2', '上午', 9, '预约');
INSERT INTO `workday` VALUES (6, 1, '2', '下午', 10, '预约');
INSERT INTO `workday` VALUES (7, 1, '3', '上午', 7, '预约');
INSERT INTO `workday` VALUES (8, 1, '3', '下午', 9, '预约');
INSERT INTO `workday` VALUES (9, 1, '4', '上午', 10, '预约');
INSERT INTO `workday` VALUES (10, 1, '4', '下午', 12, '预约');
INSERT INTO `workday` VALUES (11, 1, '5', '上午', 11, '预约');
INSERT INTO `workday` VALUES (12, 1, '5', '下午', 13, '预约');
INSERT INTO `workday` VALUES (13, 1, '6', '上午', 10, '预约');
INSERT INTO `workday` VALUES (14, 1, '6', '下午', 11, '预约');
INSERT INTO `workday` VALUES (18, 2, '0', '上午', 10, '预约');
INSERT INTO `workday` VALUES (19, 2, '0', '下午', 8, '预约');
INSERT INTO `workday` VALUES (20, 2, '1', '上午', 9, '已满');
INSERT INTO `workday` VALUES (21, 2, '1', '下午', 10, '预约');
INSERT INTO `workday` VALUES (22, 2, '2', '上午', 11, '闭馆');
INSERT INTO `workday` VALUES (23, 2, '2', '下午', 12, '预约');
INSERT INTO `workday` VALUES (24, 2, '3', '上午', 13, '预约');
INSERT INTO `workday` VALUES (25, 2, '3', '下午', 14, '预约');
INSERT INTO `workday` VALUES (26, 2, '4', '上午', 10, '预约');
INSERT INTO `workday` VALUES (27, 2, '4', '下午', 9, '预约');
INSERT INTO `workday` VALUES (28, 2, '5', '上午', 14, '已满');
INSERT INTO `workday` VALUES (29, 2, '5', '下午', 7, '预约');
INSERT INTO `workday` VALUES (30, 3, '0', '上午', 10, '预约');
INSERT INTO `workday` VALUES (31, 3, '0', '下午', 13, '闭馆');
INSERT INTO `workday` VALUES (32, 3, '1', '上午', 11, '预约');
INSERT INTO `workday` VALUES (33, 3, '1', '下午', 10, '已满');
INSERT INTO `workday` VALUES (34, 3, '2', '上午', 9, '预约');
INSERT INTO `workday` VALUES (35, 3, '2', '下午', 8, '预约');
INSERT INTO `workday` VALUES (36, 3, '3', '上午', 12, '预约');
INSERT INTO `workday` VALUES (37, 3, '3', '下午', 12, '已满');
INSERT INTO `workday` VALUES (38, 3, '4', '上午', 11, '预约');
INSERT INTO `workday` VALUES (39, 3, '4', '下午', 13, '闭馆');
INSERT INTO `workday` VALUES (40, 3, '5', '上午', 15, '预约');
INSERT INTO `workday` VALUES (41, 3, '5', '下午', 11, '已满');
INSERT INTO `workday` VALUES (42, 3, '6', '上午', 5, '预约');
INSERT INTO `workday` VALUES (43, 3, '7', '下午', 8, '闭馆');
INSERT INTO `workday` VALUES (44, 3, '1', '上午', 15, '已满');
INSERT INTO `workday` VALUES (45, 3, '2', '下午', 7, '预约');
INSERT INTO `workday` VALUES (46, 3, '3', '上午', 9, '闭馆');
INSERT INTO `workday` VALUES (47, 3, '4', '下午', 10, '已满');
INSERT INTO `workday` VALUES (48, 3, '5', '上午', 12, '预约');
INSERT INTO `workday` VALUES (49, 3, '6', '下午', 6, '闭馆');
INSERT INTO `workday` VALUES (50, 3, '7', '上午', 13, '已满');
INSERT INTO `workday` VALUES (51, 3, '1', '下午', 4, '预约');
INSERT INTO `workday` VALUES (52, 3, '2', '上午', 14, '闭馆');
INSERT INTO `workday` VALUES (53, 3, '3', '下午', 16, '已满');
INSERT INTO `workday` VALUES (54, 3, '4', '上午', 2, '预约');
INSERT INTO `workday` VALUES (55, 3, '5', '下午', 3, '闭馆');
INSERT INTO `workday` VALUES (56, 3, '6', '上午', 17, '已满');
INSERT INTO `workday` VALUES (57, 3, '7', '下午', 1, '预约');
INSERT INTO `workday` VALUES (58, 3, '1', '上午', 18, '闭馆');
INSERT INTO `workday` VALUES (59, 3, '2', '下午', 19, '已满');
INSERT INTO `workday` VALUES (60, 3, '3', '上午', 20, '预约');
INSERT INTO `workday` VALUES (61, 3, '4', '下午', 21, '闭馆');
INSERT INTO `workday` VALUES (62, 3, '5', '上午', 22, '已满');
INSERT INTO `workday` VALUES (63, 3, '6', '下午', 23, '预约');
INSERT INTO `workday` VALUES (64, 3, '7', '上午', 24, '闭馆');
INSERT INTO `workday` VALUES (65, 3, '1', '下午', 25, '已满');
INSERT INTO `workday` VALUES (66, 3, '2', '上午', 26, '预约');
INSERT INTO `workday` VALUES (67, 3, '3', '下午', 27, '闭馆');
INSERT INTO `workday` VALUES (68, 3, '4', '上午', 28, '已满');
INSERT INTO `workday` VALUES (69, 3, '5', '下午', 29, '预约');
INSERT INTO `workday` VALUES (70, 3, '6', '上午', 30, '闭馆');
INSERT INTO `workday` VALUES (71, 3, '7', '下午', 31, '已满');
INSERT INTO `workday` VALUES (72, 3, '1', '上午', 32, '预约');
INSERT INTO `workday` VALUES (73, 3, '2', '下午', 33, '闭馆');
INSERT INTO `workday` VALUES (74, 3, '3', '上午', 34, '已满');
INSERT INTO `workday` VALUES (75, 3, '4', '下午', 35, '预约');
INSERT INTO `workday` VALUES (76, 3, '5', '上午', 36, '闭馆');
INSERT INTO `workday` VALUES (77, 3, '6', '下午', 37, '已满');
INSERT INTO `workday` VALUES (78, 3, '7', '上午', 38, '预约');
INSERT INTO `workday` VALUES (79, 3, '1', '下午', 39, '闭馆');
INSERT INTO `workday` VALUES (80, 3, '2', '上午', 40, '已满');
INSERT INTO `workday` VALUES (81, 3, '3', '下午', 41, '预约');
INSERT INTO `workday` VALUES (82, 3, '4', '上午', 42, '闭馆');
INSERT INTO `workday` VALUES (83, 3, '5', '下午', 43, '已满');
INSERT INTO `workday` VALUES (84, 3, '6', '上午', 44, '预约');
INSERT INTO `workday` VALUES (85, 3, '7', '下午', 45, '闭馆');
INSERT INTO `workday` VALUES (86, 3, '1', '上午', 46, '已满');
INSERT INTO `workday` VALUES (87, 3, '2', '下午', 47, '预约');
INSERT INTO `workday` VALUES (88, 3, '3', '上午', 48, '闭馆');
INSERT INTO `workday` VALUES (89, 3, '4', '下午', 49, '已满');
INSERT INTO `workday` VALUES (90, 3, '5', '上午', 50, '预约');
INSERT INTO `workday` VALUES (91, 3, '6', '下午', 51, '闭馆');
INSERT INTO `workday` VALUES (92, 3, '7', '上午', 52, '已满');
INSERT INTO `workday` VALUES (93, 3, '1', '下午', 53, '预约');
INSERT INTO `workday` VALUES (94, 3, '2', '上午', 54, '闭馆');
INSERT INTO `workday` VALUES (95, 3, '3', '下午', 55, '已满');
INSERT INTO `workday` VALUES (96, 3, '4', '上午', 56, '预约');
INSERT INTO `workday` VALUES (97, 3, '5', '下午', 57, '闭馆');
INSERT INTO `workday` VALUES (98, 3, '6', '上午', 58, '已满');
INSERT INTO `workday` VALUES (99, 3, '7', '下午', 59, '预约');
INSERT INTO `workday` VALUES (100, 3,'1', '上午', 60, '闭馆');
INSERT INTO `workday` VALUES (101, 3,'2', '下午', 80, '已满');
INSERT INTO `workday` VALUES (102, 3,'3', '上午', 50, '预约');
INSERT INTO `workday` VALUES (103, 3,'4', '下午', 70, '闭馆');
INSERT INTO `workday` VALUES (104, 3,'5', '上午', 90, '已满');
INSERT INTO `workday` VALUES (105, 3,'6', '下午', 100, '预约');
INSERT INTO `workday` VALUES (106, 3,'7', '上午', 40, '闭馆');
INSERT INTO `workday` VALUES (107, 3,'1', '下午', 65, '已满');
INSERT INTO `workday` VALUES (108, 4,'2', '上午', 55, '预约');
INSERT INTO `workday` VALUES (109, 4,'3', '下午', 75, '闭馆');
INSERT INTO `workday` VALUES (110, 4,'4', '上午', 95, '已满');
INSERT INTO `workday` VALUES (111, 4,'5', '下午', 105, '预约');
INSERT INTO `workday` VALUES (112, 4,'6', '上午', 45, '闭馆');
INSERT INTO `workday` VALUES (113, 4,'7', '下午', 68, '已满');
INSERT INTO `workday` VALUES (114, 4,'1', '上午', 58, '预约');
INSERT INTO `workday` VALUES (115, 4,'2', '下午', 78, '闭馆');
INSERT INTO `workday` VALUES (116, 4,'3', '上午', 98, '已满');
INSERT INTO `workday` VALUES (117, 4,'4', '下午', 108, '预约');
INSERT INTO `workday` VALUES (118, 4,'5', '上午', 48, '闭馆');
INSERT INTO `workday` VALUES (119, 4,'6', '下午', 70, '已满');
INSERT INTO `workday` VALUES (120, 4,'7', '上午', 50, '预约');
INSERT INTO `workday` VALUES (121, 4,'1', '下午', 60, '闭馆');
INSERT INTO `workday` VALUES (122, 4,'2', '上午', 80, '已满');
INSERT INTO `workday` VALUES (123, 4,'3', '下午', 100, '预约');
INSERT INTO `workday` VALUES (124, 4,'4', '上午', 110, '闭馆');
INSERT INTO `workday` VALUES (125, 4,'5', '下午', 120, '已满');
INSERT INTO `workday` VALUES (126, 4,'6', '上午', 40, '预约');
INSERT INTO `workday` VALUES (127, 4,'7', '下午', 60, '闭馆');
INSERT INTO `workday` VALUES (128, 4,'1', '上午', 50, '已满');
INSERT INTO `workday` VALUES (129, 4,'2', '下午', 70, '预约');
INSERT INTO `workday` VALUES (130, 4,'3', '上午', 90, '闭馆');
INSERT INTO `workday` VALUES (131, 4,'4', '下午', 100, '已满');
INSERT INTO `workday` VALUES (132, 4,'5', '上午', 110, '预约');
INSERT INTO `workday` VALUES (133, 4,'6', '下午', 40, '闭馆');
INSERT INTO `workday` VALUES (134, 4,'7', '上午', 60, '已满');
INSERT INTO `workday` VALUES (135, 4,'1', '下午', 50, '预约');
INSERT INTO `workday` VALUES (136, 4,'2', '上午', 70, '闭馆');
INSERT INTO `workday` VALUES (137, 4,'3', '下午', 90, '已满');
INSERT INTO `workday` VALUES (138, 4,'4', '上午', 100, '预约');
INSERT INTO `workday` VALUES (139, 4,'5', '下午', 110, '闭馆');
INSERT INTO `workday` VALUES (140, 4,'6', '上午', 40, '已满');
INSERT INTO `workday` VALUES (141, 4,'7', '下午', 60, '预约');
INSERT INTO `workday` VALUES (142, 4,'1', '上午', 50, '闭馆');
INSERT INTO `workday` VALUES (143, 4,'2', '下午', 70, '已满');
INSERT INTO `workday` VALUES (144, 4,'3', '上午', 90, '预约');
INSERT INTO `workday` VALUES (145, 4,'4', '下午', 100, '闭馆');
INSERT INTO `workday` VALUES (146, 4,'5', '上午', 110, '已满');
INSERT INTO `workday` VALUES (147, 4,'6', '下午', 40, '预约');
INSERT INTO `workday` VALUES (148, 4,'7', '上午', 60, '闭馆');
INSERT INTO `workday` VALUES (149, 4,'1', '下午', 50, '已满');
INSERT INTO `workday` VALUES (150, 4,'2', '上午', 70, '预约');
INSERT INTO `workday` VALUES (151, 4,'2', '上午', 70, '预约');
INSERT INTO `workday` VALUES (152, 4,'2', '上午', 70, '预约');
INSERT INTO `workday` VALUES (153, 4,'2', '上午', 70, '预约');
INSERT INTO `workday` VALUES (154, 4,'2', '上午', 70, '预约');
INSERT INTO `workday` VALUES (155, 4,'2', '上午', 70, '预约');
INSERT INTO `workday` VALUES (156, 4,'2', '上午', 70, '预约');
INSERT INTO `workday` VALUES (157, 4,'2', '上午', 70, '预约');
INSERT INTO `workday` VALUES (158, 4,'2', '上午', 70, '预约');
INSERT INTO `workday` VALUES (159, 4,'2', '上午', 70, '预约');
INSERT INTO `workday` VALUES (160, 4,'2', '上午', 70, '预约');
INSERT INTO `workday` VALUES (161, 4,'2', '上午', 70, '预约');
INSERT INTO `workday` VALUES (162, 4,'2', '上午', 70, '预约');
INSERT INTO `workday` VALUES (163, 4,'2', '上午', 70, '预约');
INSERT INTO `workday` VALUES (164, 4,'2', '上午', 70, '预约');
INSERT INTO `workday` VALUES (165, 4,'2', '上午', 70, '预约');
INSERT INTO `workday` VALUES (166, 4,'2', '上午', 70, '预约');
INSERT INTO `workday` VALUES (167, 4,'2', '上午', 70, '预约');
INSERT INTO `workday` VALUES (168, 4,'2', '上午', 70, '预约');
INSERT INTO `workday` VALUES (169, 4,'2', '上午', 70, '预约');
INSERT INTO `workday` VALUES (170, 4,'2', '上午', 70, '预约');
INSERT INTO `workday` VALUES (171, 4,'2', '上午', 70, '预约');
INSERT INTO `workday` VALUES (172, 4,'2', '上午', 70, '预约');
INSERT INTO `workday` VALUES (173, 4,'2', '上午', 70, '预约');
INSERT INTO `workday` VALUES (174, 4,'2', '上午', 70, '预约');
INSERT INTO `workday` VALUES (175, 4,'2', '上午', 70, '预约');
INSERT INTO `workday` VALUES (176, 4,'2', '上午', 70, '预约');
INSERT INTO `workday` VALUES (177, 4,'2', '上午', 70, '预约');
INSERT INTO `workday` VALUES (178, 4,'2', '上午', 70, '预约');
INSERT INTO `workday` VALUES (179, 4,'2', '上午', 70, '预约');
INSERT INTO `workday` VALUES (180, 4,'2', '上午', 70, '预约');
INSERT INTO `workday` VALUES (181, 4,'2', '上午', 70, '预约');
INSERT INTO `workday` VALUES (182, 4,'2', '上午', 70, '预约');
INSERT INTO `workday` VALUES (183, 4,'2', '上午', 70, '预约');
INSERT INTO `workday` VALUES (184, 4,'2', '上午', 70, '预约');
INSERT INTO `workday` VALUES (185, 4,'2', '上午', 70, '预约');
INSERT INTO `workday` VALUES (186, 4,'2', '上午', 70, '预约');
INSERT INTO `workday` VALUES (187, 4,'2', '上午', 70, '预约');
INSERT INTO `workday` VALUES (188, 4,'2', '上午', 70, '预约');
INSERT INTO `workday` VALUES (189, 4,'2', '上午', 70, '预约');
INSERT INTO `workday` VALUES (190, 4,'2', '上午', 70, '预约');
INSERT INTO `workday` VALUES (191, 4,'2', '上午', 70, '预约');
INSERT INTO `workday` VALUES (192, 4,'2', '上午', 70, '预约');
INSERT INTO `workday` VALUES (193, 4,'2', '上午', 70, '预约');
INSERT INTO `workday` VALUES (194, 4,'2', '上午', 70, '预约');
INSERT INTO `workday` VALUES (195, 4,'2', '上午', 70, '预约');
INSERT INTO `workday` VALUES (196, 4,'2', '上午', 70, '预约');
INSERT INTO `workday` VALUES (197, 4,'2', '上午', 70, '预约');
INSERT INTO `workday` VALUES (198, 4,'2', '上午', 70, '预约');
INSERT INTO `workday` VALUES (199, 4,'2', '上午', 70, '预约');
INSERT INTO `workday` VALUES (200, 4,'2', '上午', 70, '预约');

DROP PROCEDURE IF EXISTS `agreeApply`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `agreeApply`(in s int,in aid1 int)
BEGIN
      declare s1 char(32);
      declare wid1 int;
      set s1 = (select request from apply where aid=aid1);
      set wid1 = (select wid from apply where aid=aid1);
      if '申请开放'=s1 then
        update workday set state='预约',nsnum=s where wid=wid1;
      end if;
      if '申请闭馆'=s1 then
        update workday set state='闭馆',nsnum=0 where wid=wid1;
      end if;
      update apply set state='同意' where aid=aid1;
    END
;;
delimiter ;


DROP PROCEDURE IF EXISTS `orderList`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `orderList`(in pid int)
BEGIN
      select recode.rid,recode.pid,recode.wid,recode.did,recode.serialnumber,recode.visitdate,recode.visitnoon,recode.visittime,recode.ordertime,recode.state,
      spot.dname,spot.office,spot.room,spot.picpath,spot.fee
      from recode,spot
      where recode.pid=pid  and spot.did=recode.did
      order by recode.ordertime desc;
    END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;