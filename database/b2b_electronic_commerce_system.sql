/*
 Navicat Premium Dump SQL

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 90200 (9.2.0)
 Source Host           : localhost:3306
 Source Schema         : b2b_electronic_commerce_system

 Target Server Type    : MySQL
 Target Server Version : 90200 (9.2.0)
 File Encoding         : 65001

 Date: 28/02/2026 22:26:44
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `address_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '地址ID',
  `receiver_id` bigint NULL DEFAULT NULL COMMENT '收件人ID',
  `receiver` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '收件人',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '联系电话',
  `province` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '省份',
  `city` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '城市',
  `district` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '区/县',
  `detail` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '详细地址',
  `label` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '标签',
  `is_default` int NOT NULL COMMENT '是否默认 0否 1是',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_address_id`(`address_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 198 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '收货地址表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES (1, 'ADDR202512140001', 1004, '王浩宇', '13700000000', '北京市', '北京市', '西城区', '建国路88号SOHO现代城1号楼1501室', '学校', 0);
INSERT INTO `address` VALUES (2, 'ADDR202512140002', 1004, '王浩宇', '13700000000', '北京市', '北京市', '海淀区', '中关村南大街5号理工科技大厦8层808室', '公司', 0);
INSERT INTO `address` VALUES (3, 'ADDR202512140003', 1005, '李欣怡', '13700000000', '上海市', '上海市', '浦东新区', '张江高科技园区博云路2号智慧大厦3号楼2002室', '家庭', 1);
INSERT INTO `address` VALUES (4, 'ADDR202512140004', 1005, '李欣怡', '13700000000', '上海市', '上海市', '静安区', '南京西路1266号恒隆广场28层2806室', '公司', 0);
INSERT INTO `address` VALUES (5, 'ADDR202512140005', 1006, '张博文', '1390815676', '广东省', '广州市', '天河区', '天河路385号太古汇公寓B座1205室', '家庭', 1);
INSERT INTO `address` VALUES (6, 'ADDR202512140006', 1006, '张博文', '1390815676', '广东省', '深圳市', '南山区', '科技园南区科苑路11号腾讯大厦15层1510室', '公司', 0);
INSERT INTO `address` VALUES (7, 'ADDR202512140007', 1007, '刘思琪', '1503591550', '浙江省', '杭州市', '西湖区', '文三路478号华星时代广场A座803室', '家庭', 1);
INSERT INTO `address` VALUES (8, 'ADDR202512140008', 1007, '刘思琪', '1503591550', '浙江省', '宁波市', '鄞州区', '宁南南路888号南部商务区杉杉大厦10层1009室', '公司', 0);
INSERT INTO `address` VALUES (9, 'ADDR202512140009', 1008, '陈俊豪', '1515832010', '四川省', '成都市', '锦江区', '东大街下东大街段258号太古里朗御1号楼3001室', '家庭', 1);
INSERT INTO `address` VALUES (10, 'ADDR202512140010', 1008, '陈俊豪', '1515832010', '四川省', '重庆市', '渝中区', '解放碑青年路38号商社大厦18层1805室', '公司', 0);
INSERT INTO `address` VALUES (11, 'ADDR202512140011', 1009, '杨雨桐', '1889464283', '江苏省', '南京市', '鼓楼区', '汉中路89号金鹰国际商城2号楼1608室', '家庭', 1);
INSERT INTO `address` VALUES (12, 'ADDR202512140012', 1009, '杨雨桐', '1889464283', '江苏省', '苏州市', '姑苏区', '干将东路566号宏盛大厦7层702室', '公司', 0);
INSERT INTO `address` VALUES (13, 'ADDR202512140013', 1010, '赵梓轩', '1893856261', '河南省', '郑州市', '金水区', '花园路8号正道花园百货家属院5号楼402室', '家庭', 1);
INSERT INTO `address` VALUES (14, 'ADDR202512140014', 1010, '赵梓轩', '1893856261', '河南省', '洛阳市', '洛龙区', '开元大道268号世贸中心A座12层1207室', '公司', 0);
INSERT INTO `address` VALUES (15, 'ADDR202512140015', 1011, '黄梦琪', '1366090696', '湖南省', '长沙市', '岳麓区', '金星中路388号玛依拉山庄8号楼1103室', '家庭', 1);
INSERT INTO `address` VALUES (16, 'ADDR202512140016', 1011, '黄梦琪', '1366090696', '湖南省', '株洲市', '天元区', '黄河北路208号华尔兹写字楼15层1501室', '公司', 0);
INSERT INTO `address` VALUES (17, 'ADDR202512140017', 1012, '周浩然', '1356751942', '山东省', '青岛市', '市南区', '香港中路68号华普大厦1号楼2206室', '家庭', 1);
INSERT INTO `address` VALUES (18, 'ADDR202512140018', 1012, '周浩然', '1356751942', '山东省', '济南市', '历下区', '泉城路188号恒隆广场西翼19层1903室', '公司', 0);
INSERT INTO `address` VALUES (19, 'ADDR202512140019', 1013, '吴诗涵', '1342569820', '辽宁省', '大连市', '沙河口区', '中山路552号星海大厦B座905室', '家庭', 1);
INSERT INTO `address` VALUES (20, 'ADDR202512140020', 1013, '吴诗涵', '1342569820', '辽宁省', '沈阳市', '和平区', '南京南街168号万达新天地天河座11层1108室', '公司', 0);
INSERT INTO `address` VALUES (21, 'ADDR202512140021', 1014, '徐宇辰', '1594541150', '福建省', '厦门市', '思明区', '湖滨南路388号国贸大厦A座709室', '家庭', 1);
INSERT INTO `address` VALUES (22, 'ADDR202512140022', 1014, '徐宇辰', '1594541150', '福建省', '福州市', '鼓楼区', '五四路158号环球广场25层2502室', '公司', 0);
INSERT INTO `address` VALUES (23, 'ADDR202512140023', 1015, '孙一诺', '1589459325', '湖北省', '武汉市', '武昌区', '中南路7号中商广场写字楼B座18层1809室', '家庭', 1);
INSERT INTO `address` VALUES (24, 'ADDR202512140024', 1015, '孙一诺', '1589459325', '湖北省', '宜昌市', '西陵区', '夷陵大道72号九州大厦10层1005室', '公司', 0);
INSERT INTO `address` VALUES (25, 'ADDR202512140025', 1016, '马子轩', '1576715529', '安徽省', '合肥市', '包河区', '马鞍山路130号万达广场6号楼2307室', '家庭', 1);
INSERT INTO `address` VALUES (26, 'ADDR202512140026', 1016, '马子轩', '1576715529', '安徽省', '芜湖市', '镜湖区', '北京中路7号伟星时代金融中心12层1203室', '公司', 0);
INSERT INTO `address` VALUES (27, 'ADDR202512140027', 1017, '朱雨萱', '1567221235', '云南省', '昆明市', '五华区', '人民中路17号昆明走廊大厦B座806室', '家庭', 1);
INSERT INTO `address` VALUES (28, 'ADDR202512140028', 1017, '朱雨萱', '1567221235', '云南省', '曲靖市', '麒麟区', '南宁西路28号雄业金都国际15层1508室', '公司', 0);
INSERT INTO `address` VALUES (29, 'ADDR202512140029', 1018, '胡皓轩', '1552926021', '陕西省', '西安市', '雁塔区', '长安南路45号长延居小区3号楼1704室', '家庭', 1);
INSERT INTO `address` VALUES (30, 'ADDR202512140030', 1018, '胡皓轩', '1552926021', '陕西省', '宝鸡市', '渭滨区', '经二路154号宝鸡国贸中心9层901室', '公司', 0);
INSERT INTO `address` VALUES (31, 'ADDR202512140031', 1019, '林若曦', '1528705403', '云南省', '大理白族自治州', '大理市', '下关镇苍山路256号艺海天成公寓5号楼802室', '家庭', 1);
INSERT INTO `address` VALUES (32, 'ADDR202512140032', 1019, '林若曦', '1528705403', '广西壮族自治区', '南宁市', '青秀区', '民族大道131号航洋国际城2号楼2008室', '公司', 0);
INSERT INTO `address` VALUES (33, 'ADDR202512140033', 1020, '高梓涵', '1538945822', '贵州省', '贵阳市', '南明区', '中华南路1号鲜花广场A座1105室', '家庭', 1);
INSERT INTO `address` VALUES (34, 'ADDR202512140034', 1020, '高梓涵', '1538945822', '贵州省', '遵义市', '汇川区', '珠海路1号国贸中心写字楼18层1806室', '公司', 0);
INSERT INTO `address` VALUES (35, 'ADDR202512140035', 1021, '何欣妍', '1863279658', '河北省', '石家庄市', '长安区', '中山东路39号勒泰中心公寓1号楼2509室', '家庭', 1);
INSERT INTO `address` VALUES (36, 'ADDR202512140036', 1021, '何欣妍', '1863279658', '河北省', '唐山市', '路北区', '新华西道2号世博广场写字楼10层1007室', '公司', 0);
INSERT INTO `address` VALUES (37, 'ADDR202512140037', 1022, '郭宇泽', '1870311438', '山西省', '太原市', '小店区', '亲贤北街99号王府井百货公寓B座1403室', '家庭', 1);
INSERT INTO `address` VALUES (38, 'ADDR202512140038', 1022, '郭宇泽', '1870311438', '山西省', '大同市', '平城区', '迎宾街1号凯德世家广场写字楼8层805室', '公司', 0);
INSERT INTO `address` VALUES (39, 'ADDR202512140039', 1023, '罗诗雨', '1781171061', '内蒙古自治区', '呼和浩特市', '新城区', '新华东街8号维多利国际广场公寓2号楼1908室', '家庭', 1);
INSERT INTO `address` VALUES (40, 'ADDR202512140040', 1023, '罗诗雨', '1781171061', '内蒙古自治区', '包头市', '昆都仑区', '钢铁大街27号万达广场写字楼A座12层1202室', '公司', 0);
INSERT INTO `address` VALUES (41, 'ADDR202512140041', 1024, '郑浩然', '1776447824', '吉林省', '长春市', '朝阳区', '人民大街7088号伟峰国际商务广场1号楼709室', '家庭', 1);
INSERT INTO `address` VALUES (42, 'ADDR202512140042', 1024, '郑浩然', '1776447824', '吉林省', '吉林市', '昌邑区', '解放东路6号中京城写字楼15层1503室', '公司', 0);
INSERT INTO `address` VALUES (43, 'ADDR202512140043', 1025, '梁雨桐', '1766747800', '黑龙江省', '哈尔滨市', '南岗区', '长江路157号盟科汇公寓3号楼806室', '家庭', 1);
INSERT INTO `address` VALUES (44, 'ADDR202512140044', 1025, '梁雨桐', '1766747800', '黑龙江省', '大庆市', '萨尔图区', '东风路15号万达广场写字楼10层1009室', '公司', 0);
INSERT INTO `address` VALUES (45, 'ADDR202512140045', 1026, '谢梓轩', '1752221844', '江西省', '南昌市', '红谷滩区', '红谷中大道998号绿地中央广场A1座2205室', '家庭', 1);
INSERT INTO `address` VALUES (46, 'ADDR202512140046', 1026, '谢梓轩', '1752221844', '江西省', '赣州市', '章贡区', '长征大道1号中航城写字楼18层1808室', '公司', 0);
INSERT INTO `address` VALUES (47, 'ADDR202512140047', 1027, '宋欣怡', '1735520796', '甘肃省', '兰州市', '城关区', '张掖路87号中环广场写字楼20层2006室', '家庭', 1);
INSERT INTO `address` VALUES (48, 'ADDR202512140048', 1027, '宋欣怡', '1735520796', '甘肃省', '天水市', '秦州区', '民主东路59号天水市总工会大厦8层803室', '公司', 0);
INSERT INTO `address` VALUES (49, 'ADDR202512140049', 1028, '唐宇辰', '1723663746', '青海省', '西宁市', '城西区', '五四大街37号力盟商业巷写字楼12层1205室', '家庭', 1);
INSERT INTO `address` VALUES (50, 'ADDR202512140050', 1028, '唐宇辰', '1723663746', '青海省', '海东市', '乐都区', '古城大街8号海东市行政服务中心6层602室', '公司', 0);
INSERT INTO `address` VALUES (51, 'ADDR202512140051', 1029, '韩梦琪', '1719480708', '宁夏回族自治区', '银川市', '金凤区', '北京中路192号亲水商务中心写字楼15层1509室', '家庭', 1);
INSERT INTO `address` VALUES (52, 'ADDR202512140052', 1029, '韩梦琪', '1719480708', '宁夏回族自治区', '吴忠市', '利通区', '裕民东路38号吴忠市国贸大厦9层907室', '公司', 0);
INSERT INTO `address` VALUES (53, 'ADDR202512140053', 1030, '冯皓轩', '1705119737', '新疆维吾尔自治区', '乌鲁木齐市', '天山区', '解放北路29号时代广场写字楼A座28层2803室', '家庭', 1);
INSERT INTO `address` VALUES (54, 'ADDR202512140054', 1030, '冯皓轩', '1705119737', '新疆维吾尔自治区', '喀什地区', '喀什市', '解放南路38号喀什噶尔大厦12层1206室', '公司', 0);
INSERT INTO `address` VALUES (55, 'ADDR202512140055', 1031, '于诗涵', '1308132562', '海南省', '海口市', '龙华区', '金龙路22号深发展大厦10层1008室', '家庭', 1);
INSERT INTO `address` VALUES (56, 'ADDR202512140056', 1031, '于诗涵', '1308132562', '海南省', '三亚市', '吉阳区', '凤凰路155号三亚市图书馆写字楼8层805室', '公司', 0);
INSERT INTO `address` VALUES (57, 'ADDR202512140057', 1032, '董梓涵', '1314770338', '天津市', '天津市', '和平区', '南京路129号万科世贸广场B座17层1709室', '家庭', 1);
INSERT INTO `address` VALUES (58, 'ADDR202512140058', 1032, '董梓涵', '1314770338', '天津市', '天津市', '滨海新区', '响螺湾商务区旷世国际大厦B座20层2003室', '公司', 0);
INSERT INTO `address` VALUES (59, 'ADDR202512140059', 1033, '萧雨桐', '1327488562', '重庆市', '重庆市', '江北区', '建新北路8号红鼎国际名苑C座2307室', '家庭', 1);
INSERT INTO `address` VALUES (60, 'ADDR202512140060', 1033, '萧雨桐', '1327488562', '重庆市', '重庆市', '渝北区', '金开大道99号升伟晶石公元写字楼15层1508室', '公司', 0);
INSERT INTO `address` VALUES (61, 'ADDR202512140061', 1034, '程浩然', '1802179690', '广东省', '东莞市', '南城街道', '鸿福路200号第一国际商务大厦F座11层1106室', '家庭', 1);
INSERT INTO `address` VALUES (62, 'ADDR202512140062', 1034, '程浩然', '1802179690', '广东省', '佛山市', '禅城区', '季华五路47号华远大厦18层1809室', '公司', 0);
INSERT INTO `address` VALUES (63, 'ADDR202512140063', 1035, '曹欣怡', '1811060448', '江苏省', '无锡市', '梁溪区', '中山路288号云蝠大厦25层2505室', '家庭', 1);
INSERT INTO `address` VALUES (64, 'ADDR202512140064', 1035, '曹欣怡', '1811060448', '江苏省', '常州市', '新北区', '通江中路398号富都商务公寓12层1203室', '公司', 0);
INSERT INTO `address` VALUES (65, 'ADDR202512140065', 1036, '袁宇辰', '1827179015', '湖北省', '襄阳市', '樊城区', '长虹路13号万达写字楼A座10层1008室', '家庭', 1);
INSERT INTO `address` VALUES (66, 'ADDR202512140066', 1036, '袁宇辰', '1827179015', '湖北省', '荆州市', '沙市区', '北京路237号安良国际写字楼15层1506室', '公司', 0);
INSERT INTO `address` VALUES (67, 'ADDR202512140067', 1037, '邓梦琪', '1836506007', '浙江省', '温州市', '鹿城区', '车站大道2号华盟商务广场19层1907室', '家庭', 1);
INSERT INTO `address` VALUES (68, 'ADDR202512140068', 1037, '邓梦琪', '1836506007', '浙江省', '嘉兴市', '南湖区', '中山路1338号嘉兴世界贸易中心12层1205室', '公司', 0);
INSERT INTO `address` VALUES (69, 'ADDR202512140069', 1038, '许皓轩', '1840060250', '四川省', '绵阳市', '涪城区', '临园路东段72号富临大都会写字楼18层1809室', '家庭', 1);
INSERT INTO `address` VALUES (70, 'ADDR202512140070', 1038, '许皓轩', '1840060250', '四川省', '南充市', '顺庆区', '人民南路66号新世纪购物广场写字楼10层1003室', '公司', 0);
INSERT INTO `address` VALUES (71, 'ADDR202512140071', 1039, '傅诗涵', '1853679571', '山东省', '烟台市', '芝罘区', '南大街150号银座商城写字楼16层1608室', '家庭', 1);
INSERT INTO `address` VALUES (72, 'ADDR202512140072', 1039, '傅诗涵', '1853679571', '山东省', '潍坊市', '奎文区', '东风东街360号泰华大厦12层1206室', '公司', 0);
INSERT INTO `address` VALUES (73, 'ADDR202512140073', 1040, '沈梓涵', '1997212765', '河南省', '新乡市', '红旗区', '平原路88号胖东来百货写字楼15层1509室', '家庭', 1);
INSERT INTO `address` VALUES (74, 'ADDR202512140074', 1040, '沈梓涵', '1997212765', '河南省', '许昌市', '魏都区', '七一路1号胖东来时代广场写字楼8层805室', '公司', 0);
INSERT INTO `address` VALUES (75, 'ADDR202512140075', 1041, '曾雨桐', '1985933219', '湖南省', '岳阳市', '岳阳楼区', '巴陵中路523号中建岳阳中心写字楼11层1108室', '家庭', 1);
INSERT INTO `address` VALUES (76, 'ADDR202512140076', 1041, '曾雨桐', '1985933219', '湖南省', '常德市', '武陵区', '朗州路438号友阿国际广场写字楼18层1803室', '公司', 0);
INSERT INTO `address` VALUES (77, 'ADDR202512140077', 1042, '彭浩然', '1970860382', '安徽省', '芜湖市', '鸠江区', '祥源路66号皖江财富广场A2座10层1009室', '家庭', 1);
INSERT INTO `address` VALUES (78, 'ADDR202512140078', 1042, '彭浩然', '1970860382', '安徽省', '蚌埠市', '蚌山区', '东海大道4399号蚌埠银泰城写字楼15层1506室', '公司', 0);
INSERT INTO `address` VALUES (79, 'ADDR202512140079', 1043, '吕欣怡', '1964520567', '广西壮族自治区', '桂林市', '秀峰区', '中山中路39号南方大厦写字楼12层1208室', '家庭', 1);
INSERT INTO `address` VALUES (80, 'ADDR202512140080', 1043, '吕欣怡', '1964520567', '广西壮族自治区', '柳州市', '城中区', '解放北路3号地王国际财富中心写字楼20层2005室', '公司', 0);
INSERT INTO `address` VALUES (81, 'ADDR202512140081', 1044, '苏宇辰', '1950863629', '云南省', '丽江市', '古城区', '雪山路430号祥和商业广场写字楼8层803室', '家庭', 1);
INSERT INTO `address` VALUES (82, 'ADDR202512140082', 1044, '苏宇辰', '1950863629', '云南省', '玉溪市', '红塔区', '东风中路2号玉溪时代广场写字楼10层1008室', '公司', 0);
INSERT INTO `address` VALUES (83, 'ADDR202512140083', 1045, '卢梦琪', '1940059144', '贵州省', '六盘水市', '钟山区', '钟山大道中段58号百盛购物中心写字楼15层1506室', '家庭', 1);
INSERT INTO `address` VALUES (84, 'ADDR202512140084', 1045, '卢梦琪', '1940059144', '贵州省', '安顺市', '西秀区', '黄果树大街289号家喻五洲写字楼12层1209室', '公司', 0);
INSERT INTO `address` VALUES (85, 'ADDR202512140085', 1046, '蒋皓轩', '1930332546', '河北省', '保定市', '竞秀区', '朝阳北大街99号万博广场写字楼25层2507室', '家庭', 1);
INSERT INTO `address` VALUES (86, 'ADDR202512140086', 1046, '蒋皓轩', '1930332546', '河北省', '邯郸市', '丛台区', '人民东路208号国贸中心写字楼18层1805室', '公司', 0);
INSERT INTO `address` VALUES (87, 'ADDR202512140087', 1047, '蔡诗涵', '1929272703', '山西省', '晋中市', '榆次区', '迎宾西街179号晋商国际写字楼10层1008室', '家庭', 1);
INSERT INTO `address` VALUES (88, 'ADDR202512140088', 1047, '蔡诗涵', '1929272703', '山西省', '临汾市', '尧都区', '鼓楼北大街38号安达圣购物中心写字楼15层1503室', '公司', 0);
INSERT INTO `address` VALUES (89, 'ADDR202512140089', 1048, '贾梓涵', '1913601192', '内蒙古自治区', '鄂尔多斯市', '东胜区', '鄂尔多斯东街17号万达广场写字楼12层1206室', '家庭', 1);
INSERT INTO `address` VALUES (90, 'ADDR202512140090', 1048, '贾梓涵', '1913601192', '内蒙古自治区', '赤峰市', '红山区', '哈达西街91号维多利广场写字楼8层809室', '公司', 0);
INSERT INTO `address` VALUES (91, 'ADDR202512140091', 1049, '丁雨桐', '1904120094', '吉林省', '四平市', '铁西区', '英雄大路1539号华生购物中心写字楼10层1005室', '家庭', 1);
INSERT INTO `address` VALUES (92, 'ADDR202512140092', 1049, '丁雨桐', '1904120094', '吉林省', '辽源市', '龙山区', '人民大街148号银座购物中心写字楼8层803室', '公司', 0);
INSERT INTO `address` VALUES (93, 'ADDR202512140093', 1050, '魏浩然', '1661495915', '黑龙江省', '齐齐哈尔市', '龙沙区', '龙华路1号大商新玛特写字楼15层1508室', '家庭', 1);
INSERT INTO `address` VALUES (94, 'ADDR202512140094', 1050, '魏浩然', '1661495915', '黑龙江省', '牡丹江市', '西安区', '太平路31号波斯特购物中心写字楼12层1206室', '公司', 0);
INSERT INTO `address` VALUES (95, 'ADDR202512140095', 1051, '薛欣怡', '1659371447', '江西省', '九江市', '浔阳区', '浔阳路8号联盛广场写字楼18层1809室', '家庭', 1);
INSERT INTO `address` VALUES (96, 'ADDR202512140096', 1051, '薛欣怡', '1659371447', '江西省', '上饶市', '信州区', '中山路1号亿升广场写字楼10层1007室', '公司', 0);
INSERT INTO `address` VALUES (97, 'ADDR202512140097', 1052, '叶宇辰', '1673237436', '甘肃省', '酒泉市', '肃州区', '西大街1号东方广场写字楼15层1505室', '家庭', 1);
INSERT INTO `address` VALUES (98, 'ADDR202512140098', 1052, '叶宇辰', '1673237436', '甘肃省', '嘉峪关市', '镜铁区', '新华南路588号雄关大厦写字楼8层803室', '公司', 0);

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` bigint NOT NULL COMMENT '管理员ID',
  `admin_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '管理员账号',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '管理员',
  `password` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '管理员密码',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '管理员邮箱',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '管理员电话',
  `avatar` varchar(10000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '管理员头像',
  `create_time` varchar(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '创建时间，格式为yyyy-MM-dd HH:mm:ss',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_admin_account`(`admin_name` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '管理员信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'admin', '管理员', '123456', '123456789@qq.com', '13700000000', '/avatar/1cd9f241-6e37-47b8-857b-bf7ef510a10e.webp', '2025-10-15-16:10:00');

-- ----------------------------
-- Table structure for after_sale_apply
-- ----------------------------
DROP TABLE IF EXISTS `after_sale_apply`;
CREATE TABLE `after_sale_apply`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `order_no` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '订单编号',
  `type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '售后类型：refunded（退货）/ exchanged（换货）',
  `product_id` bigint NOT NULL COMMENT '原商品ID',
  `quantity` int NOT NULL COMMENT '数量',
  `reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '原因',
  `evidence` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '凭证，图片URL，多个用逗号分隔',
  `exchange_info` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '换货信息，可存储额外说明',
  `target_product_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '目标商品ID（换货时必填）',
  `target_product_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '目标商品名称（换货时必填）',
  `consignee_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '收货人姓名（可选）',
  `consignee_id` bigint NULL DEFAULT NULL COMMENT '收货人id（可选）',
  `after_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '售后状态',
  `apply_time` datetime NULL DEFAULT NULL COMMENT '申请时间',
  `after_sale_no` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '售后申请单号（后端生成）',
  `reject_reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '拒绝原因',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '售后申请表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of after_sale_apply
-- ----------------------------
INSERT INTO `after_sale_apply` VALUES (1, 'OD20251213060', 'refunded', 1, 1, '无特殊原因申请退货', 'https://img.example.com/60_1.jpg,https://img.example.com/60_2.jpg', '', '1', '智能手机ProMax', '张博文', 1006, '拒绝申请', '2025-03-12 15:15:00', 'AFTER20251213060', '无7天无理由退货');
INSERT INTO `after_sale_apply` VALUES (2, 'OD20251213061', 'refunded', 2, 1, '商品不符预期申请退货', 'https://img.example.com/61_1.jpg', '', '2', '轻薄笔记本电脑', '刘思琪', 1007, '拒绝申请', '2025-05-08 10:25:00', 'AFTER20251213061', '售卖前就已经标注，按实物为准');
INSERT INTO `after_sale_apply` VALUES (3, 'OD20251213062', 'exchanged', 3, 1, '规格不符申请换货', 'https://img.example.com/62_1.jpg', '更换同款式不同规格商品', '3', '无线蓝牙耳机', '陈俊豪', 1008, '拒绝申请', '2025-02-20 12:05:00', 'AFTER20251213062', '商品符合');
INSERT INTO `after_sale_apply` VALUES (4, 'OD20251213063', 'refunded', 4, 1, '快递暴力申请退货', 'https://img.example.com/63_1.jpg,https://img.example.com/63_2.jpg', '', '4', '智能手表', '杨雨桐', 1009, '拒绝申请', '2025-07-15 16:45:00', 'AFTER20251213063', 'fsfsefsef');
INSERT INTO `after_sale_apply` VALUES (5, 'OD20251213064', 'refunded', 5, 1, '无理由退货', 'https://img.example.com/64_1.jpg', '', '5', '平板电脑', '吴诗涵', 1013, '同意退货申请', '2025-01-05 09:15:00', 'AFTER20251213064', '');
INSERT INTO `after_sale_apply` VALUES (6, 'OD20251213065', 'exchanged', 6, 1, '赠品缺失申请换货', 'https://img.example.com/65_1.jpg', '补寄赠品并更换商品包装', '6', '移动电源20000mAh', '徐宇辰', 1014, '同意换货申请', '2025-04-22 14:35:00', 'AFTER20251213065', NULL);
INSERT INTO `after_sale_apply` VALUES (7, 'OD20251213066', 'refunded', 7, 1, '联系电话无法接通申请退货', 'https://img.example.com/66_1.jpg', '', '7', '机械键盘', '马子轩', 1016, '同意退货申请', '2025-06-30 11:25:00', 'AFTER20251213066', '');
INSERT INTO `after_sale_apply` VALUES (8, 'OD20251213067', 'refunded', 8, 1, '需本人签收未到场申请退货', 'https://img.example.com/67_1.jpg', '', '8', '游戏鼠标', '林若曦', 1019, '同意退货申请', '2025-08-18 16:05:00', 'AFTER20251213067', NULL);
INSERT INTO `after_sale_apply` VALUES (9, 'OD20251213068', 'exchanged', 9, 1, '发票抬头错误申请换货重开', 'https://img.example.com/68_1.jpg', '更换商品并重新开具发票', '9', '桌面音箱', '何欣妍', 1021, '同意换货申请', '2025-09-02 10:05:00', 'AFTER20251213068', NULL);
INSERT INTO `after_sale_apply` VALUES (10, 'OD20251213069', 'refunded', 10, 1, '物流进度缓慢申请退货', 'https://img.example.com/69_1.jpg,https://img.example.com/69_2.jpg', '', '10', 'Type-C快充线', '罗诗雨', 1023, '同意退货申请', '2025-10-17 14:55:00', 'AFTER20251213069', NULL);
INSERT INTO `after_sale_apply` VALUES (11, 'OD20251213070', 'refunded', 11, 1, '无特殊要求申请退货', 'https://img.example.com/70_1.jpg', '', '11', '氨基酸洁面乳', '郑浩然', 1024, '同意退货申请', '2025-11-25 13:20:00', 'AFTER20251213070', NULL);
INSERT INTO `after_sale_apply` VALUES (12, 'OD20251213071', 'exchanged', 12, 1, '包装破损申请换货', 'https://img.example.com/71_1.jpg', '更换加固包装的同款商品', '12', '保湿补水面膜', '梁雨桐', 1025, '同意换货申请', '2025-03-07 11:35:00', 'AFTER20251213071', NULL);
INSERT INTO `after_sale_apply` VALUES (13, 'OD20251213072', 'refunded', 13, 1, '发票稍后补开申请退货', 'https://img.example.com/72_1.jpg', '', '13', '口红哑光款', '唐宇辰', 1028, '同意退货申请', '2025-05-19 17:35:00', 'AFTER20251213072', NULL);
INSERT INTO `after_sale_apply` VALUES (14, 'OD20251213073', 'refunded', 14, 1, '收货后不满意申请退货', 'https://img.example.com/73_1.jpg', '', '14', '防晒霜SPF50+', '萧雨桐', 1033, '同意退货申请', '2025-02-12 09:45:00', 'AFTER20251213073', NULL);
INSERT INTO `after_sale_apply` VALUES (15, 'OD20251213074', 'exchanged', 15, 1, '无备注申请换货', 'https://img.example.com/74_1.jpg', '无额外说明，仅更换同款商品', '15', '护发精油', '袁宇辰', 1036, '同意换货申请', '2025-07-03 14:05:00', 'AFTER20251213074', NULL);
INSERT INTO `after_sale_apply` VALUES (16, 'OD20251213075', 'refunded', 16, 1, '赠品选择错误申请退货', 'https://img.example.com/75_1.jpg', '', '16', '香水淡香款', '许皓轩', 1038, '同意退货申请', '2025-01-28 16:05:00', 'AFTER20251213075', NULL);
INSERT INTO `after_sale_apply` VALUES (17, 'OD20251213076', 'exchanged', 17, 1, '地址修改申请退货', 'https://img.example.com/76_1.jpg,https://img.example.com/76_2.jpg', '', '17', '护手霜套装', '傅诗涵', 1039, '同意换货申请', '2025-04-10 11:50:00', 'AFTER20251213076', NULL);
INSERT INTO `after_sale_apply` VALUES (18, 'OD20251213077', 'exchanged', 18, 1, '需开具增值税专用发票申请换货', 'https://img.example.com/77_1.jpg', '换货并开具增值税专用发票', '18', '卸妆油', '沈梓涵', 1040, '同意换货申请', '2025-06-15 10:15:00', 'AFTER20251213077', NULL);
INSERT INTO `after_sale_apply` VALUES (19, 'OD20251213078', 'refunded', 19, 1, '物流选择顺丰申请退货', 'https://img.example.com/78_1.jpg', '', '19', '气垫BB霜', '曾雨桐', 1041, '同意退货申请', '2025-08-29 15:25:00', 'AFTER20251213078', NULL);
INSERT INTO `after_sale_apply` VALUES (20, 'OD20251213079', 'refunded', 20, 1, '无备注申请退货', 'https://img.example.com/79_1.jpg', '', '20', '身体乳', '卢梦琪', 1045, '同意退货申请', '2025-10-05 13:05:00', 'AFTER20251213079', NULL);

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `category_id` bigint NOT NULL AUTO_INCREMENT COMMENT '分类ID',
  `category_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '分类名称',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '分类状态(on是启用，off是禁用)',
  `category_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '分类描述',
  `is_hot` int NULL DEFAULT NULL COMMENT '是否为热门分类(1是热门，0不是热门)',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `category_level` int NULL DEFAULT NULL COMMENT '分类级别',
  UNIQUE INDEX `uk_category_id`(`category_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '商品分类表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, '电子产品', 'on', '涵盖手机、电脑、智能穿戴等各类电子设备', 0, '2025-12-26 15:08:07', 1);
INSERT INTO `category` VALUES (3, '美妆个护', 'on', '各类美妆产品、个人护理用品的集合', 1, '2025-12-26 15:08:07', 1);
INSERT INTO `category` VALUES (4, '家居日用', 'on', '家居生活所需的各类日用品', 1, '2025-12-26 15:08:07', 1);
INSERT INTO `category` VALUES (5, '食品生鲜', 'on', '新鲜食品、零食饮料等食品类商品', 0, '2025-12-26 15:08:07', 1);
INSERT INTO `category` VALUES (6, '运动户外', 'on', '运动装备、户外用品等相关商品', 0, '2025-12-26 15:08:07', 1);
INSERT INTO `category` VALUES (7, '母婴用品', 'on', '母婴相关的各类产品', 1, '2025-12-26 15:08:07', 1);
INSERT INTO `category` VALUES (8, '图书音像', 'on', '图书、音像制品等文化类商品', 0, '2025-12-26 15:08:07', 1);
INSERT INTO `category` VALUES (9, '汽车用品', 'on', '汽车相关的各类用品', 0, '2025-12-26 15:08:07', 1);
INSERT INTO `category` VALUES (10, '宠物用品', 'on', '宠物相关的各类商品', 1, '2025-12-26 15:08:07', 1);
INSERT INTO `category` VALUES (11, '测试分类', 'off', '简直无敌了', 1, '2025-12-26 15:30:38', 1);

-- ----------------------------
-- Table structure for category_list
-- ----------------------------
DROP TABLE IF EXISTS `category_list`;
CREATE TABLE `category_list`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `category_id` bigint NOT NULL COMMENT '商品分类ID（关联分类表的主键）',
  `product_id` bigint NOT NULL COMMENT '商品ID（关联商品表的主键）',
  `product_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '商品图片URL',
  `product_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '商品名称',
  `product_price` decimal(10, 2) NOT NULL COMMENT '商品价格（精确到分）',
  `product_description` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '商品描述',
  `update_time` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间（自动更新）',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_category_id`(`category_id` ASC) USING BTREE COMMENT '按分类ID查询的索引',
  INDEX `idx_product_id`(`product_id` ASC) USING BTREE COMMENT '按商品ID查询的索引'
) ENGINE = InnoDB AUTO_INCREMENT = 61 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '分类-商品关联列表（存储分类下的商品信息）' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category_list
-- ----------------------------
INSERT INTO `category_list` VALUES (1, 1, 1, '/images/phone1.jpg', '智能手机Pro', 3999.00, '6.7英寸全面屏，5000mAh电池', '2025-12-14 10:00:00');
INSERT INTO `category_list` VALUES (2, 1, 2, '/images/laptop1.jpg', '轻薄笔记本电脑', 4999.00, '14英寸便携本，16G内存', '2025-12-14 10:00:00');
INSERT INTO `category_list` VALUES (3, 1, 3, '/images/earphone1.jpg', '无线蓝牙耳机', 299.00, '主动降噪，续航24小时', '2025-12-14 10:00:00');
INSERT INTO `category_list` VALUES (4, 1, 4, '/images/watch1.jpg', '智能手表', 1299.00, '心率监测+血氧检测', '2025-12-14 10:00:00');
INSERT INTO `category_list` VALUES (5, 1, 5, '/images/tablet1.jpg', '平板电脑', 2499.00, '10.9英寸屏幕，学习娱乐两用', '2025-12-14 10:00:00');
INSERT INTO `category_list` VALUES (6, 1, 6, '/images/power1.jpg', '移动电源20000mAh', 129.00, '双向快充，便携设计', '2025-12-14 10:00:00');
INSERT INTO `category_list` VALUES (7, 1, 7, '/images/keyboard1.jpg', '机械键盘', 359.00, '青轴按键，RGB背光', '2025-12-14 10:00:00');
INSERT INTO `category_list` VALUES (8, 1, 8, '/images/mouse1.jpg', '游戏鼠标', 199.00, '可编程按键，人体工学', '2025-12-14 10:00:00');
INSERT INTO `category_list` VALUES (9, 1, 9, '/images/speaker1.jpg', '桌面音箱', 499.00, '立体环绕声，蓝牙5.0', '2025-12-14 10:00:00');
INSERT INTO `category_list` VALUES (10, 1, 10, '/images/cable1.jpg', 'Type-C快充线', 29.90, '1.5米长，60W快充', '2025-12-14 10:00:00');
INSERT INTO `category_list` VALUES (11, 3, 11, '/images/cleanser1.jpg', '氨基酸洁面乳', 89.00, '温和清洁，适合敏感肌', '2025-12-14 10:00:00');
INSERT INTO `category_list` VALUES (12, 3, 12, '/images/mask1.jpg', '保湿补水面膜', 129.00, '20片装，玻尿酸精华', '2025-12-14 10:00:00');
INSERT INTO `category_list` VALUES (13, 3, 13, '/images/lipstick1.jpg', '口红哑光款', 159.00, '显白正红色，持久不沾杯', '2025-12-14 10:00:00');
INSERT INTO `category_list` VALUES (14, 3, 14, '/images/sunscreen1.jpg', '防晒霜SPF50+', 109.00, '防水防汗，全身可用', '2025-12-14 10:00:00');
INSERT INTO `category_list` VALUES (15, 3, 15, '/images/hairOil1.jpg', '护发精油', 79.00, '修复干枯发质，柔顺亮泽', '2025-12-14 10:00:00');
INSERT INTO `category_list` VALUES (16, 3, 16, '/images/perfume1.jpg', '香水淡香款', 299.00, '清新花果香，持久6小时', '2025-12-14 10:00:00');
INSERT INTO `category_list` VALUES (17, 3, 17, '/images/handCream1.jpg', '护手霜套装', 59.00, '3支装，滋润不油腻', '2025-12-14 10:00:00');
INSERT INTO `category_list` VALUES (18, 3, 18, '/images/makeupRemover1.jpg', '卸妆油', 99.00, '温和卸妆，深层清洁', '2025-12-14 10:00:00');
INSERT INTO `category_list` VALUES (19, 3, 19, '/images/bbCream1.jpg', '气垫BB霜', 169.00, '遮瑕保湿，自然裸妆', '2025-12-14 10:00:00');
INSERT INTO `category_list` VALUES (20, 3, 20, '/images/bodyLotion1.jpg', '身体乳', 69.00, '全身保湿，持久留香', '2025-12-14 10:00:00');
INSERT INTO `category_list` VALUES (21, 4, 21, '/images/towel1.jpg', '纯棉毛巾4条装', 39.90, '吸水亲肤，不掉毛', '2025-12-14 10:00:00');
INSERT INTO `category_list` VALUES (22, 4, 22, '/images/dishSoap1.jpg', '厨房洗洁精', 19.90, '食品级，去油不伤手', '2025-12-14 10:00:00');
INSERT INTO `category_list` VALUES (23, 4, 23, '/images/trashBag1.jpg', '垃圾袋加厚款', 29.90, '50只装，承重10kg', '2025-12-14 10:00:00');
INSERT INTO `category_list` VALUES (24, 4, 24, '/images/thermos1.jpg', '保温杯500ml', 89.00, '316不锈钢，保温12小时', '2025-12-14 10:00:00');
INSERT INTO `category_list` VALUES (25, 4, 25, '/images/bedding1.jpg', '床上四件套', 299.00, '纯棉材质，简约图案', '2025-12-14 10:00:00');
INSERT INTO `category_list` VALUES (26, 4, 26, '/images/laundryDetergent1.jpg', '洗衣液2kg', 49.90, '深层去污，持久留香', '2025-12-14 10:00:00');
INSERT INTO `category_list` VALUES (27, 4, 27, '/images/toothbrush1.jpg', '牙刷软毛10支装', 25.90, '高密度植毛，呵护牙龈', '2025-12-14 10:00:00');
INSERT INTO `category_list` VALUES (28, 4, 28, '/images/scissors1.jpg', '厨房剪刀', 59.00, '多功能，锋利耐用', '2025-12-14 10:00:00');
INSERT INTO `category_list` VALUES (29, 4, 29, '/images/storageBox1.jpg', '收纳盒三件套', 79.00, '塑料材质，分类收纳', '2025-12-14 10:00:00');
INSERT INTO `category_list` VALUES (30, 4, 30, '/images/slipper1.jpg', '拖鞋居家款', 35.90, 'EVA材质，防滑耐磨', '2025-12-14 10:00:00');
INSERT INTO `category_list` VALUES (31, 5, 31, '/images/milk1.jpg', '进口牛奶2L', 59.90, '全脂高钙，日期新鲜', '2025-12-14 10:00:00');
INSERT INTO `category_list` VALUES (32, 5, 32, '/images/chips1.jpg', '休闲薯片组合', 49.90, '6包混合口味', '2025-12-14 10:00:00');
INSERT INTO `category_list` VALUES (33, 5, 33, '/images/apple1.jpg', '新鲜苹果5斤', 39.90, '红富士，脆甜多汁', '2025-12-14 10:00:00');
INSERT INTO `category_list` VALUES (34, 5, 34, '/images/noodle1.jpg', '方便面整箱装', 69.90, '24包经典口味', '2025-12-14 10:00:00');
INSERT INTO `category_list` VALUES (35, 5, 35, '/images/egg1.jpg', '鸡蛋30枚', 45.90, '散养土鸡蛋，新鲜营养', '2025-12-14 10:00:00');
INSERT INTO `category_list` VALUES (36, 5, 36, '/images/nut1.jpg', '坚果礼盒', 129.00, '8种坚果混合，礼盒装', '2025-12-14 10:00:00');
INSERT INTO `category_list` VALUES (37, 5, 37, '/images/chickenWing1.jpg', '冷冻鸡翅中', 79.00, '2斤装，新鲜冷冻', '2025-12-14 10:00:00');
INSERT INTO `category_list` VALUES (38, 5, 38, '/images/drink1.jpg', '碳酸饮料24瓶', 59.90, '经典口味，整箱批发', '2025-12-14 10:00:00');
INSERT INTO `category_list` VALUES (39, 5, 39, '/images/rice1.jpg', '大米10kg', 89.90, '东北珍珠米，软糯香甜', '2025-12-14 10:00:00');
INSERT INTO `category_list` VALUES (40, 5, 40, '/images/yogurt1.jpg', '酸奶12盒', 65.90, '低温发酵，益生菌丰富', '2025-12-14 10:00:00');
INSERT INTO `category_list` VALUES (41, 6, 41, '/images/shoe1.jpg', '跑步运动鞋', 399.00, '轻便减震，透气网面', '2025-12-14 10:00:00');
INSERT INTO `category_list` VALUES (42, 6, 42, '/images/badmintonRacket1.jpg', '羽毛球拍双拍', 129.00, '碳素纤维，耐用轻便', '2025-12-14 10:00:00');
INSERT INTO `category_list` VALUES (43, 6, 43, '/images/yogaMat1.jpg', '瑜伽垫加厚款', 89.00, '防滑耐磨，6mm厚度', '2025-12-14 10:00:00');
INSERT INTO `category_list` VALUES (44, 6, 44, '/images/tent1.jpg', '户外帐篷', 299.00, '双人自动帐篷，防风防雨', '2025-12-14 10:00:00');
INSERT INTO `category_list` VALUES (45, 8, 45, '/images/book1.jpg', '图书-悬疑小说', 49.90, '畅销悬疑系列，单册装', '2025-12-14 10:00:00');
INSERT INTO `category_list` VALUES (46, 8, 46, '/images/cd1.jpg', 'CD-经典音乐合集', 89.00, '无损音质，10碟装', '2025-12-14 10:00:00');
INSERT INTO `category_list` VALUES (47, 9, 47, '/images/carSeat1.jpg', '汽车坐垫四季款', 199.00, '亚麻材质，透气舒适', '2025-12-14 10:00:00');
INSERT INTO `category_list` VALUES (48, 9, 48, '/images/carCharger1.jpg', '车载充电器', 59.00, '双USB快充，兼容所有车型', '2025-12-14 10:00:00');
INSERT INTO `category_list` VALUES (49, 9, 49, '/images/windshieldFluid1.jpg', '汽车玻璃水', 19.90, '冬季防冻型，2L装', '2025-12-14 10:00:00');
INSERT INTO `category_list` VALUES (50, 9, 50, '/images/carPerfume1.jpg', '车载香水', 39.90, '持久淡香，除异味', '2025-12-14 10:00:00');
INSERT INTO `category_list` VALUES (51, 7, 51, '/images/diaper1.jpg', '婴儿纸尿裤L码', 129.00, '超薄透气，50片装', '2025-12-14 10:00:00');
INSERT INTO `category_list` VALUES (52, 7, 52, '/images/milkPowder1.jpg', '婴儿奶粉1段', 299.00, '适合0-6个月宝宝', '2025-12-14 10:00:00');
INSERT INTO `category_list` VALUES (53, 7, 53, '/images/block1.jpg', '儿童玩具积木', 89.00, '环保材质，益智拼装', '2025-12-14 10:00:00');
INSERT INTO `category_list` VALUES (54, 7, 54, '/images/wipe1.jpg', '婴儿湿巾80抽', 29.90, '无酒精，柔软亲肤', '2025-12-14 10:00:00');
INSERT INTO `category_list` VALUES (55, 7, 55, '/images/kidThermos1.jpg', '儿童保温杯', 99.00, '316不锈钢，带吸管', '2025-12-14 10:00:00');
INSERT INTO `category_list` VALUES (56, 10, 56, '/images/catFood1.jpg', '宠物猫粮5kg', 149.00, '全价成猫粮，营养均衡', '2025-12-14 10:00:00');
INSERT INTO `category_list` VALUES (57, 10, 57, '/images/dogLeash1.jpg', '宠物狗绳牵引绳', 59.00, '可伸缩，舒适握柄', '2025-12-14 10:00:00');
INSERT INTO `category_list` VALUES (58, 10, 58, '/images/catLitter1.jpg', '宠物猫砂10kg', 69.90, '结团快，低粉尘', '2025-12-14 10:00:00');
INSERT INTO `category_list` VALUES (59, 10, 59, '/images/petToy1.jpg', '宠物玩具球', 29.90, '耐咬材质，互动玩具', '2025-12-14 10:00:00');
INSERT INTO `category_list` VALUES (60, 10, 60, '/images/petBed1.jpg', '宠物窝中小型犬', 89.00, '保暖舒适，可拆洗', '2025-12-14 10:00:00');

-- ----------------------------
-- Table structure for confirm_refund
-- ----------------------------
DROP TABLE IF EXISTS `confirm_refund`;
CREATE TABLE `confirm_refund`  (
  `refund_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '退款ID',
  `order_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '审核原因',
  `result` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '审核结果',
  `review_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '审核人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '审核时间',
  PRIMARY KEY (`refund_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of confirm_refund
-- ----------------------------
INSERT INTO `confirm_refund` VALUES ('1', '1001', NULL, '通过', 'zhangsan', '2025-10-25 21:35:51');

-- ----------------------------
-- Table structure for inventory
-- ----------------------------
DROP TABLE IF EXISTS `inventory`;
CREATE TABLE `inventory`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `product_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '商品ID',
  `product_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '商品名称',
  `product_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '商品编码',
  `current_stock` int NOT NULL COMMENT '当前库存',
  `warning_threshold` int NOT NULL DEFAULT 0 COMMENT '预警阈值',
  `supplier_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '供应商名称',
  `supplier_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '供应商id',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_product_id`(`product_id` ASC) USING BTREE,
  CONSTRAINT `ck_current_stock` CHECK ((`current_stock` >= 0) and (`current_stock` <= 999999)),
  CONSTRAINT `ck_warning_threshold` CHECK ((`warning_threshold` >= 0) and (`warning_threshold` <= 999999))
) ENGINE = InnoDB AUTO_INCREMENT = 66 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '库存信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of inventory
-- ----------------------------
INSERT INTO `inventory` VALUES (1, '1', '智能手机Pro', 'P0001', 10, 20, '数码科技供应商', 'SP001', '2025-12-27 17:13:00');
INSERT INTO `inventory` VALUES (2, '2', '轻薄笔记本电脑', 'P0002', 5, 10, '数码科技供应商', 'SP001', '2025-12-14 10:00:00');
INSERT INTO `inventory` VALUES (3, '3', '无线蓝牙耳机', 'P0003', 30, 50, '音频设备供应商', 'SP002', '2025-12-27 19:20:44');
INSERT INTO `inventory` VALUES (4, '4', '智能手表', 'P0004', 150, 15, '数码科技供应商', 'SP001', '2025-12-14 10:00:00');
INSERT INTO `inventory` VALUES (5, '5', '平板电脑', 'P0005', 120, 12, '数码科技供应商', 'SP001', '2025-12-14 10:00:00');
INSERT INTO `inventory` VALUES (6, '6', '移动电源20000mAh', 'P0006', 800, 80, '配件供应商', 'SP003', '2025-12-14 10:00:00');
INSERT INTO `inventory` VALUES (7, '7', '机械键盘', 'P0007', 200, 20, '音频设备供应商', 'SP002', '2025-12-14 10:00:00');
INSERT INTO `inventory` VALUES (8, '8', '游戏鼠标', 'P0008', 300, 30, '音频设备供应商', 'SP002', '2025-12-14 10:00:00');
INSERT INTO `inventory` VALUES (9, '9', '桌面音箱', 'P0009', 100, 10, '音频设备供应商', 'SP002', '2025-12-14 10:00:00');
INSERT INTO `inventory` VALUES (10, '10', 'Type-C快充线', 'P0010', 1000, 100, '配件供应商', 'SP003', '2025-12-14 10:00:00');
INSERT INTO `inventory` VALUES (11, '11', '氨基酸洁面乳', 'P0011', 300, 30, '美妆供应商', 'SP004', '2025-12-14 10:00:00');
INSERT INTO `inventory` VALUES (12, '12', '保湿补水面膜', 'P0012', 500, 50, '美妆供应商', 'SP004', '2025-12-14 10:00:00');
INSERT INTO `inventory` VALUES (13, '13', '口红哑光款', 'P0013', 200, 20, '彩妆供应商', 'SP005', '2025-12-14 10:00:00');
INSERT INTO `inventory` VALUES (14, '14', '防晒霜SPF50+', 'P0014', 250, 25, '美妆供应商', 'SP004', '2025-12-14 10:00:00');
INSERT INTO `inventory` VALUES (15, '15', '护发精油', 'P0015', 180, 18, '个护供应商', 'SP006', '2025-12-14 10:00:00');
INSERT INTO `inventory` VALUES (16, '16', '香水淡香款', 'P0016', 100, 10, '彩妆供应商', 'SP005', '2025-12-14 10:00:00');
INSERT INTO `inventory` VALUES (17, '17', '护手霜套装', 'P0017', 400, 40, '个护供应商', 'SP006', '2025-12-14 10:00:00');
INSERT INTO `inventory` VALUES (18, '18', '卸妆油', 'P0018', 220, 22, '美妆供应商', 'SP004', '2025-12-14 10:00:00');
INSERT INTO `inventory` VALUES (19, '19', '气垫BB霜', 'P0019', 150, 15, '彩妆供应商', 'SP005', '2025-12-14 10:00:00');
INSERT INTO `inventory` VALUES (20, '20', '身体乳', 'P0020', 350, 35, '个护供应商', 'SP006', '2025-12-14 10:00:00');
INSERT INTO `inventory` VALUES (21, '21', '纯棉毛巾4条装', 'P0021', 600, 60, '家居供应商', 'SP007', '2025-12-14 10:00:00');
INSERT INTO `inventory` VALUES (22, '22', '厨房洗洁精', 'P0022', 1000, 100, '清洁用品供应商', 'SP008', '2025-12-14 10:00:00');
INSERT INTO `inventory` VALUES (23, '23', '垃圾袋加厚款', 'P0023', 800, 80, '清洁用品供应商', 'SP008', '2025-12-14 10:00:00');
INSERT INTO `inventory` VALUES (24, '24', '保温杯500ml', 'P0024', 200, 20, '家居供应商', 'SP007', '2025-12-14 10:00:00');
INSERT INTO `inventory` VALUES (25, '25', '床上四件套', 'P0025', 100, 10, '家纺供应商', 'SP009', '2025-12-14 10:00:00');
INSERT INTO `inventory` VALUES (26, '26', '洗衣液2kg', 'P0026', 700, 70, '清洁用品供应商', 'SP008', '2025-12-14 10:00:00');
INSERT INTO `inventory` VALUES (27, '27', '牙刷软毛10支装', 'P0027', 900, 90, '个护供应商', 'SP006', '2025-12-14 10:00:00');
INSERT INTO `inventory` VALUES (28, '28', '厨房剪刀', 'P0028', 150, 15, '家居供应商', 'SP007', '2025-12-14 10:00:00');
INSERT INTO `inventory` VALUES (29, '29', '收纳盒三件套', 'P0029', 200, 20, '家居供应商', 'SP007', '2025-12-14 10:00:00');
INSERT INTO `inventory` VALUES (30, '30', '拖鞋居家款', 'P0030', 400, 40, '家居供应商', 'SP007', '2025-12-14 10:00:00');
INSERT INTO `inventory` VALUES (31, '31', '进口牛奶2L', 'P0031', 300, 30, '食品供应商', 'SP010', '2025-12-14 10:00:00');
INSERT INTO `inventory` VALUES (32, '32', '休闲薯片组合', 'P0032', 500, 50, '食品供应商', 'SP010', '2025-12-14 10:00:00');
INSERT INTO `inventory` VALUES (33, '33', '新鲜苹果5斤', 'P0033', 200, 20, '生鲜供应商', 'SP011', '2025-12-14 10:00:00');
INSERT INTO `inventory` VALUES (34, '34', '方便面整箱装', 'P0034', 400, 40, '食品供应商', 'SP010', '2025-12-14 10:00:00');
INSERT INTO `inventory` VALUES (35, '35', '鸡蛋30枚', 'P0035', 300, 30, '生鲜供应商', 'SP011', '2025-12-14 10:00:00');
INSERT INTO `inventory` VALUES (36, '36', '坚果礼盒', 'P0036', 100, 10, '食品供应商', 'SP010', '2025-12-14 10:00:00');
INSERT INTO `inventory` VALUES (37, '37', '冷冻鸡翅中', 'P0037', 150, 15, '生鲜供应商', 'SP011', '2025-12-14 10:00:00');
INSERT INTO `inventory` VALUES (38, '38', '碳酸饮料24瓶', 'P0038', 250, 25, '食品供应商', 'SP010', '2025-12-14 10:00:00');
INSERT INTO `inventory` VALUES (39, '39', '大米10kg', 'P0039', 100, 10, '粮油供应商', 'SP012', '2025-12-14 10:00:00');
INSERT INTO `inventory` VALUES (40, '40', '酸奶12盒', 'P0040', 200, 20, '食品供应商', 'SP010', '2025-12-14 10:00:00');
INSERT INTO `inventory` VALUES (41, '41', '跑步运动鞋', 'P0041', 150, 15, '运动用品供应商', 'SP013', '2025-12-14 10:00:00');
INSERT INTO `inventory` VALUES (42, '42', '羽毛球拍双拍', 'P0042', 200, 20, '运动用品供应商', 'SP013', '2025-12-14 10:00:00');
INSERT INTO `inventory` VALUES (43, '43', '瑜伽垫加厚款', 'P0043', 300, 30, '健身器材供应商', 'SP014', '2025-12-14 10:00:00');
INSERT INTO `inventory` VALUES (44, '44', '户外帐篷', 'P0044', 80, 8, '户外用品供应商', 'SP015', '2025-12-14 10:00:00');
INSERT INTO `inventory` VALUES (45, '45', '图书-悬疑小说', 'P0045', 200, 20, '图书供应商', 'SP019', '2025-12-14 10:00:00');
INSERT INTO `inventory` VALUES (46, '46', 'CD-经典音乐合集', 'P0046', 100, 10, '图书供应商', 'SP019', '2025-12-14 10:00:00');
INSERT INTO `inventory` VALUES (47, '47', '汽车坐垫四季款', 'P0047', 150, 15, '汽车用品供应商', 'SP020', '2025-12-14 10:00:00');
INSERT INTO `inventory` VALUES (48, '48', '车载充电器', 'P0048', 300, 30, '汽车用品供应商', 'SP020', '2025-12-14 10:00:00');
INSERT INTO `inventory` VALUES (49, '49', '汽车玻璃水', 'P0049', 500, 50, '汽车用品供应商', 'SP020', '2025-12-14 10:00:00');
INSERT INTO `inventory` VALUES (50, '50', '车载香水', 'P0050', 200, 20, '汽车用品供应商', 'SP020', '2025-12-14 10:00:00');
INSERT INTO `inventory` VALUES (51, '51', '婴儿纸尿裤L码', 'P0051', 300, 30, '母婴供应商', 'SP016', '2025-12-14 10:00:00');
INSERT INTO `inventory` VALUES (52, '52', '婴儿奶粉1段', 'P0052', 100, 10, '母婴供应商', 'SP016', '2025-12-14 10:00:00');
INSERT INTO `inventory` VALUES (53, '53', '儿童玩具积木', 'P0053', 200, 20, '玩具供应商', 'SP017', '2025-12-14 10:00:00');
INSERT INTO `inventory` VALUES (54, '54', '婴儿湿巾80抽', 'P0054', 800, 80, '母婴供应商', 'SP016', '2025-12-14 10:00:00');
INSERT INTO `inventory` VALUES (55, '55', '儿童保温杯', 'P0055', 150, 15, '母婴供应商', 'SP016', '2025-12-14 10:00:00');
INSERT INTO `inventory` VALUES (56, '56', '宠物猫粮5kg', 'P0056', 200, 20, '宠物用品供应商', 'SP018', '2025-12-14 10:00:00');
INSERT INTO `inventory` VALUES (57, '57', '宠物狗绳牵引绳', 'P0057', 300, 30, '宠物用品供应商', 'SP018', '2025-12-14 10:00:00');
INSERT INTO `inventory` VALUES (58, '58', '宠物猫砂10kg', 'P0058', 400, 40, '宠物用品供应商', 'SP018', '2025-12-14 10:00:00');
INSERT INTO `inventory` VALUES (59, '59', '宠物玩具球', 'P0059', 500, 50, '宠物用品供应商', 'SP018', '2025-12-14 10:00:00');
INSERT INTO `inventory` VALUES (60, '60', '宠物窝中小型犬', 'P0060', 100, 10, '宠物用品供应商', 'SP018', '2025-12-14 10:00:00');

-- ----------------------------
-- Table structure for inventory_record
-- ----------------------------
DROP TABLE IF EXISTS `inventory_record`;
CREATE TABLE `inventory_record`  (
  `record_id` bigint NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `product_id` int NULL DEFAULT NULL COMMENT '商品ID',
  `product_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '商品名称',
  `product_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '商品编码',
  `quantity` int NULL DEFAULT NULL COMMENT '商品数量',
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '类型：出入库（in/out）',
  `reason` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '操作原因',
  `operate_time` datetime NULL DEFAULT NULL COMMENT '操作时间',
  `operator` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '供应商（操作人）',
  PRIMARY KEY (`record_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 61 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '商品操作信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of inventory_record
-- ----------------------------
INSERT INTO `inventory_record` VALUES (1, 1, '智能手机 ProMax', 'P0001', 4, 'out', '售卖', '2025-12-13 14:25:00', '王浩宇');
INSERT INTO `inventory_record` VALUES (2, 2, '轻薄笔记本电脑', 'P0002', 3, 'out', '售卖', '2025-12-02 13:10:00', '胡皓轩');
INSERT INTO `inventory_record` VALUES (3, 3, '无线蓝牙耳机', 'P0003', 4, 'out', '售卖', '2025-11-30 14:10:00', '赵梓轩');
INSERT INTO `inventory_record` VALUES (4, 4, '智能手表', 'P0004', 2, 'out', '售卖', '2025-12-13 10:30:00', '苏宇辰');
INSERT INTO `inventory_record` VALUES (5, 5, '平板电脑', 'P0005', 2, 'out', '售卖', '2025-12-03 16:30:00', '高梓涵');
INSERT INTO `inventory_record` VALUES (6, 6, '移动电源 20000mAh', 'P0006', 1, 'out', '售卖', '2025-12-03 16:30:00', '韩梦琪');
INSERT INTO `inventory_record` VALUES (7, 7, '机械键盘', 'P0007', 3, 'out', '售卖', '2025-12-13 14:25:00', '王浩宇');
INSERT INTO `inventory_record` VALUES (8, 8, '游戏鼠标', 'P0008', 3, 'out', '售卖', '2025-08-18 15:20:00', '胡皓轩');
INSERT INTO `inventory_record` VALUES (9, 9, '桌面音箱', 'P0009', 3, 'out', '售卖', '2025-12-05 14:50:00', '谢梓轩');
INSERT INTO `inventory_record` VALUES (10, 10, 'Type-C 快充线', 'P0010', 2, 'out', '售卖', '2025-11-30 09:50:00', '李欣怡');
INSERT INTO `inventory_record` VALUES (11, 11, '氨基酸洁面乳', 'P0011', 2, 'out', '售卖', '2025-11-25 12:30:00', '谢梓轩');
INSERT INTO `inventory_record` VALUES (12, 12, '保湿补水面膜', 'P0012', 2, 'out', '售卖', '2025-12-06 14:50:00', '宋欣怡');
INSERT INTO `inventory_record` VALUES (13, 13, '口红哑光款', 'P0013', 1, 'out', '售卖', '2025-12-06 14:50:00', '叶宇辰');
INSERT INTO `inventory_record` VALUES (14, 14, '防晒霜 SPF50+', 'P0014', 3, 'out', '售卖', '2025-05-08 09:40:00', '李欣怡');
INSERT INTO `inventory_record` VALUES (15, 15, '护发精油', 'P0015', 3, 'out', '售卖', '2025-12-13 20:30:00', '赵梓轩');
INSERT INTO `inventory_record` VALUES (16, 16, '香水淡香款', 'P0016', 1, 'out', '售卖', '2025-12-07 11:30:00', '韩梦琪');
INSERT INTO `inventory_record` VALUES (17, 17, '护手霜套装', 'P0017', 2, 'out', '售卖', '2025-12-08 15:20:00', '冯皓轩');
INSERT INTO `inventory_record` VALUES (18, 18, '卸妆油', 'P0018', 2, 'out', '售卖', '2025-06-15 09:20:00', '曹欣怡');
INSERT INTO `inventory_record` VALUES (19, 19, '气垫 BB 霜', 'P0019', 3, 'out', '售卖', '2025-12-09 09:10:00', '程浩然');
INSERT INTO `inventory_record` VALUES (20, 20, '身体乳', 'P0020', 4, 'out', '售卖', '2025-11-30 08:30:00', '周浩然');
INSERT INTO `inventory_record` VALUES (21, 21, '纯棉毛巾 4 条装', 'P0021', 1, 'out', '售卖', '2025-02-20 11:15:00', '赵梓轩');
INSERT INTO `inventory_record` VALUES (22, 22, '厨房洗洁精', 'P0022', 5, 'out', '售卖', '2025-12-10 13:40:00', '程浩然');
INSERT INTO `inventory_record` VALUES (23, 23, '垃圾袋加厚款', 'P0023', 8, 'out', '售卖', '2025-12-10 13:40:00', '曹欣怡');
INSERT INTO `inventory_record` VALUES (24, 24, '保温杯 500ml', 'P0024', 5, 'out', '售卖', '2025-12-11 16:10:00', '邓梦琪');
INSERT INTO `inventory_record` VALUES (25, 25, '床上四件套', 'P0025', 2, 'out', '售卖', '2025-12-13 14:10:00', '贾梓涵');
INSERT INTO `inventory_record` VALUES (26, 26, '洗衣液 2kg', 'P0026', 3, 'out', '售卖', '2025-12-11 16:10:00', '赵梓轩');
INSERT INTO `inventory_record` VALUES (27, 27, '牙刷软毛 10 支装', 'P0027', 2, 'out', '售卖', '2025-12-12 08:50:00', '彭浩然');
INSERT INTO `inventory_record` VALUES (28, 28, '厨房剪刀', 'P0028', 2, 'out', '售卖', '2025-01-05 08:30:00', '周浩然');
INSERT INTO `inventory_record` VALUES (29, 29, '收纳盒三件套', 'P0029', 5, 'out', '售卖', '2025-12-13 09:20:00', '吕欣怡');
INSERT INTO `inventory_record` VALUES (30, 30, '拖鞋居家款', 'P0030', 2, 'out', '售卖', '2025-11-30 11:20:00', '黄梦琪');
INSERT INTO `inventory_record` VALUES (31, 31, '进口牛奶 2L', 'P0031', 9, 'out', '售卖', '2025-12-13 09:20:00', '吕欣怡');
INSERT INTO `inventory_record` VALUES (32, 32, '休闲薯片组合', 'P0032', 2, 'out', '售卖', '2025-01-28 15:10:00', '董梓涵');
INSERT INTO `inventory_record` VALUES (33, 33, '新鲜苹果 5 斤', 'P0033', 1, 'out', '售卖', '2025-12-13 10:30:00', '彭浩然');
INSERT INTO `inventory_record` VALUES (34, 34, '方便面整箱装', 'P0034', 5, 'out', '售卖', '2025-12-13 11:20:00', '蒋皓轩');
INSERT INTO `inventory_record` VALUES (35, 35, '鸡蛋 30 枚', 'P0035', 7, 'out', '售卖', '2025-07-15 16:00:00', '黄梦琪');
INSERT INTO `inventory_record` VALUES (36, 36, '坚果礼盒', 'P0036', 2, 'out', '售卖', '2025-12-13 11:20:00', '蔡诗涵');
INSERT INTO `inventory_record` VALUES (37, 37, '冷冻鸡翅中', 'P0037', 2, 'out', '售卖', '2025-12-13 12:10:00', '薛欣怡');
INSERT INTO `inventory_record` VALUES (38, 38, '碳酸饮料 24 瓶', 'P0038', 1, 'out', '售卖', '2025-12-13 12:10:00', '叶宇辰');
INSERT INTO `inventory_record` VALUES (39, 39, '大米 10kg', 'P0039', 4, 'out', '售卖', '2025-05-19 16:50:00', '董梓涵');
INSERT INTO `inventory_record` VALUES (40, 40, '酸奶 12 盒', 'P0040', 10, 'out', '售卖', '2025-11-30 08:40:00', '曹欣怡');
INSERT INTO `inventory_record` VALUES (41, 41, '跑步运动鞋', 'P0041', 0, 'out', '售卖', '2025-12-13 13:20:00', '贾梓涵');
INSERT INTO `inventory_record` VALUES (42, 42, '羽毛球拍双拍', 'P0042', 3, 'out', '售卖', '2025-09-02 09:10:00', '高梓涵');
INSERT INTO `inventory_record` VALUES (43, 43, '瑜伽垫加厚款', 'P0043', 1, 'out', '售卖', '2025-12-13 14:10:00', '丁雨桐');
INSERT INTO `inventory_record` VALUES (44, 44, '户外帐篷', 'P0044', 3, 'out', '售卖', '2025-12-13 14:10:00', '丁雨桐');
INSERT INTO `inventory_record` VALUES (45, 45, '图书 - 悬疑小说', 'P0045', 2, 'out', '售卖', '2025-12-13 15:22:00', '吕欣怡');
INSERT INTO `inventory_record` VALUES (46, 47, '汽车坐垫四季款', 'P0047', 4, 'out', '售卖', '2025-04-22 13:50:00', '孙一诺');
INSERT INTO `inventory_record` VALUES (47, 48, '车载充电器', 'P0048', 2, 'out', '售卖', '2025-12-13 16:30:00', '薛欣怡');
INSERT INTO `inventory_record` VALUES (48, 49, '汽车玻璃水', 'P0049', 1, 'out', '售卖', '2025-06-30 10:05:00', '朱雨萱');
INSERT INTO `inventory_record` VALUES (49, 50, '车载香水', 'P0050', 4, 'out', '售卖', '2025-11-30 15:42:00', '孙一诺');
INSERT INTO `inventory_record` VALUES (50, 51, '婴儿纸尿裤 L 码', 'P0051', 3, 'out', '售卖', '2025-12-13 17:12:00', '叶宇辰');
INSERT INTO `inventory_record` VALUES (51, 52, '婴儿奶粉 1 段', 'P0052', 1, 'out', '售卖', '2025-12-13 17:12:00', '王浩宇');
INSERT INTO `inventory_record` VALUES (52, 53, '儿童玩具积木', 'P0053', 2, 'out', '售卖', '2025-12-13 18:22:00', '王浩宇');
INSERT INTO `inventory_record` VALUES (53, 54, '婴儿湿巾 80 抽', 'P0054', 0, 'out', '售卖', '2025-12-13 18:22:00', '于诗涵');
INSERT INTO `inventory_record` VALUES (54, 55, '儿童保温杯', 'P0055', 2, 'out', '售卖', '2025-12-01 09:20:00', '朱雨萱');
INSERT INTO `inventory_record` VALUES (55, 56, '宠物猫粮 5kg', 'P0056', 3, 'out', '售卖', '2025-08-29 14:30:00', '邓梦琪');
INSERT INTO `inventory_record` VALUES (56, 57, '宠物狗绳牵引绳', 'P0057', 1, 'out', '售卖', '2025-12-13 19:10:00', '李欣怡');
INSERT INTO `inventory_record` VALUES (57, 58, '宠物猫砂 10kg', 'P0058', 1, 'out', '售卖', '2025-12-13 20:32:00', '赵梓轩');
INSERT INTO `inventory_record` VALUES (58, 59, '宠物玩具球', 'P0059', 4, 'out', '售卖', '2025-12-13 20:32:00', '邓梦琪');
INSERT INTO `inventory_record` VALUES (59, 60, '宠物窝中小型犬', 'P0060', 2, 'out', '售卖', '2025-07-03 13:20:00', '于诗涵');
INSERT INTO `inventory_record` VALUES (60, 61, '华为 p70pro', 'P0061', 3, 'out', '售卖', '2025-10-05 12:10:00', '彭浩然');

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order`  (
  `order_id` bigint NULL DEFAULT NULL COMMENT '订单ID(主键ID)',
  `order_no` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '订单编号',
  `buyer_id` bigint NULL DEFAULT NULL COMMENT '采购商ID',
  `buyer_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '采购商名称',
  `supplier_id` bigint NULL DEFAULT NULL COMMENT '供货商ID',
  `supplier_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '供货商名称',
  `status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '状态：pending(待支付)/paid(已支付)/shipped(已发货)/completed(已完成)/cancelled(已取消)/access(已接单)',
  `payment_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '支付方式：alipay(支付宝)/wechat(微信支付)',
  `total_amount` decimal(10, 2) NOT NULL COMMENT '总金额',
  `pay_amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '实付金额',
  `pay_time` datetime NULL DEFAULT NULL COMMENT '支付时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `complete_time` datetime NULL DEFAULT NULL COMMENT '完成时间',
  `address` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '收货地址',
  `express_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '物流单号',
  `express_company` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '快递公司',
  `agreed_delivery_time` datetime NULL DEFAULT NULL COMMENT '约定成交时间',
  `delivery_status` int NULL DEFAULT NULL COMMENT '履约状态(0：延期，1：按时履约)',
  `commission_rate` decimal(10, 2) NULL DEFAULT NULL COMMENT '佣金比率（默认是5）',
  `commission` decimal(10, 2) NULL DEFAULT NULL COMMENT '平台佣金（比率乘以订单总金额）',
  UNIQUE INDEX `uk_order_id`(`order_id` ASC) USING BTREE,
  UNIQUE INDEX `uk_order_no`(`order_no` ASC) USING BTREE,
  INDEX `idx_buyer_id`(`buyer_id` ASC) USING BTREE,
  INDEX `idx_status`(`status` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '订单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES (2, 'OD20251103002', 1007, '刘思琪', 1005, '李欣怡', 'shipped', 'wechat', 256.80, 243.96, '2025-11-03 14:20:00', '优先发货', '2025-11-04 08:40:00', '2025-11-07 15:20:00', '上海市浦东新区张江路2号', 'EX20251107002', '中通快递', '2025-11-08 00:00:00', 1, 5.00, 12.84);
INSERT INTO `order` VALUES (3, 'OD20251105003', 1008, '陈俊豪', 1010, '赵梓轩', 'pending', 'alipay', 89.90, 85.40, NULL, '待支付', '2025-11-05 09:05:00', NULL, '广州市天河区天河路3号', '', '', '2025-11-10 00:00:00', 0, 5.00, 4.50);
INSERT INTO `order` VALUES (4, 'OD20251106004', 1009, '杨雨桐', 1011, '黄梦琪', 'paid', 'wechat', 321.60, 305.52, '2025-11-06 16:30:00', '发票抬头：XX科技公司', '2025-11-06 16:32:00', '2025-11-09 11:10:00', '深圳市南山区科技园路4号', 'EX20251109004', '圆通速递', '2025-11-10 00:00:00', 1, 5.00, 16.08);
INSERT INTO `order` VALUES (5, 'OD20251107005', 1013, '吴诗涵', 1012, '周浩然', 'shipped', 'alipay', 198.20, 188.29, '2025-11-07 09:45:00', '易碎品，轻拿轻放', '2025-11-08 08:15:00', '2025-11-11 14:30:00', '杭州市西湖区西湖大道5号', 'EX20251111005', '韵达快递', '2025-11-10 00:00:00', 0, 5.00, 9.91);
INSERT INTO `order` VALUES (6, 'OD20251108006', 1014, '徐宇辰', 1015, '孙一诺', 'paid', 'wechat', 456.70, 433.86, '2025-11-08 11:20:00', '多件商品分开包装', '2025-11-08 11:22:00', '2025-11-12 09:50:00', '成都市锦江区春熙路6号', 'EX20251112006', '申通快递', '2025-11-13 00:00:00', 1, 5.00, 22.84);
INSERT INTO `order` VALUES (7, 'OD20251109007', 1016, '马子轩', 1017, '朱雨萱', 'pending', 'alipay', 67.30, 0.00, NULL, '暂存购物车', '2025-11-09 15:40:00', NULL, '武汉市武昌区中山路7号', '', '', NULL, NULL, 5.00, NULL);
INSERT INTO `order` VALUES (8, 'OD20251110008', 1019, '林若曦', 1018, '胡皓轩', 'shipped', 'wechat', 289.40, 274.93, '2025-11-10 13:10:00', '加急配送', '2025-11-11 07:50:00', '2025-11-13 16:20:00', '南京市鼓楼区中山北路8号', 'EX20251113008', '顺丰速运', '2025-11-14 00:00:00', 1, 5.00, 14.47);
INSERT INTO `order` VALUES (9, 'OD20251111009', 1021, '何欣妍', 1020, '高梓涵', 'paid', 'alipay', 156.90, 149.05, '2025-11-11 08:30:00', '无备注', '2025-11-11 08:32:00', '2025-11-14 10:40:00', '西安市雁塔区长安南路9号', 'EX20251114009', '中通快递', '2025-11-15 00:00:00', 1, 5.00, 7.85);
INSERT INTO `order` VALUES (10, 'OD20251112010', 1023, '罗诗雨', 1022, '郭宇泽', 'shipped', 'wechat', 312.50, 296.87, '2025-11-12 14:50:00', '请放快递柜', '2025-11-13 09:10:00', '2025-11-16 13:30:00', '重庆市渝中区解放碑路10号', 'EX20251116010', '圆通速递', '2025-11-12 00:00:00', 0, 5.00, 15.63);
INSERT INTO `order` VALUES (11, 'OD20251113011', 1024, '郑浩然', 1026, '谢梓轩', 'pending', 'alipay', 98.70, 0.00, NULL, '待确认收货地址', '2025-11-13 11:20:00', NULL, '郑州市金水区花园路11号', '', '', NULL, NULL, 5.00, NULL);
INSERT INTO `order` VALUES (12, 'OD20251114012', 1025, '梁雨桐', 1027, '宋欣怡', 'paid', 'wechat', 245.30, 233.03, '2025-11-14 09:20:00', '开发票', '2025-11-14 09:22:00', '2025-11-17 11:50:00', '长沙市岳麓区岳麓大道12号', 'EX20251117012', '韵达快递', '2025-11-18 00:00:00', 1, 5.00, 12.27);
INSERT INTO `order` VALUES (13, 'OD20251115013', 1028, '唐宇辰', 1029, '韩梦琪', 'shipped', 'alipay', 187.60, 178.22, '2025-11-15 16:10:00', '赠品一起发', '2025-11-16 08:40:00', '2025-11-19 15:20:00', '青岛市市南区香港中路13号', 'EX20251119013', '申通快递', '2025-11-20 00:00:00', 1, 5.00, 9.38);
INSERT INTO `order` VALUES (15, 'OD20251117015', 1036, '袁宇辰', 1031, '于诗涵', 'pending', 'alipay', 76.40, 0.00, NULL, '犹豫中', '2025-11-17 14:20:00', NULL, '沈阳市和平区南京街15号', '', '', NULL, NULL, 5.00, NULL);
INSERT INTO `order` VALUES (16, 'OD20251118016', 1038, '许皓轩', 1032, '董梓涵', 'shipped', 'wechat', 278.90, 264.95, '2025-11-18 08:50:00', '周末配送', '2025-11-19 07:30:00', '2025-11-22 16:40:00', '厦门市思明区湖滨南路16号', 'EX20251122016', '中通快递', '2025-11-21 00:00:00', 0, 5.00, 13.95);
INSERT INTO `order` VALUES (17, 'OD20251119017', 1039, '傅诗涵', 1034, '程浩然', 'paid', 'alipay', 145.20, 137.94, '2025-11-19 11:40:00', '发票内容：办公用品', '2025-11-19 11:42:00', '2025-11-23 10:20:00', '合肥市蜀山区长江西路17号', 'EX20251123017', '圆通速递', '2025-11-24 00:00:00', 1, 5.00, 7.26);
INSERT INTO `order` VALUES (18, 'OD20251120018', 1040, '沈梓涵', 1035, '曹欣怡', 'shipped', 'wechat', 345.70, 328.41, '2025-11-20 15:10:00', '联系电话：138XXXX1234', '2025-11-21 08:20:00', '2025-11-24 14:50:00', '福州市鼓楼区五四路18号', 'EX20251124018', '韵达快递', '2025-11-25 00:00:00', 1, 5.00, 17.29);
INSERT INTO `order` VALUES (19, 'OD20251121019', 1041, '曾雨桐', 1037, '邓梦琪', 'pending', 'alipay', 87.50, 0.00, NULL, '对比其他商品', '2025-11-21 09:30:00', NULL, '济南市历下区泉城路19号', '', '', NULL, NULL, 5.00, NULL);
INSERT INTO `order` VALUES (20, 'OD20251122020', 1045, '卢梦琪', 1042, '彭浩然', 'paid', 'wechat', 223.40, 212.23, '2025-11-22 13:20:00', '无备注', '2025-11-22 13:22:00', '2025-11-25 09:40:00', '昆明市五华区东风西路20号', 'EX20251125020', '申通快递', '2025-11-26 00:00:00', 1, 5.00, 11.17);
INSERT INTO `order` VALUES (21, 'OD20251123021', 1050, '魏浩然', 1043, '吕欣怡', 'shipped', 'alipay', 176.80, 167.96, '2025-11-23 08:40:00', '包装加固', '2025-11-24 07:50:00', '2025-11-27 15:30:00', '贵阳市云岩区中华中路21号', 'EX20251127021', '顺丰速运', '2025-11-28 00:00:00', 1, 5.00, 8.84);
INSERT INTO `order` VALUES (22, 'OD20251124022', 1006, '张博文', 1044, '苏宇辰', 'paid', 'wechat', 389.10, 369.64, '2025-11-24 16:30:00', '开发票', '2025-11-24 16:32:00', '2025-11-28 11:10:00', '南宁市青秀区民族大道22号', 'EX20251128022', '中通快递', '2025-11-27 00:00:00', 0, 5.00, 19.46);
INSERT INTO `order` VALUES (23, 'OD20251125023', 1014, '徐宇辰', 1046, '蒋皓轩', 'pending', 'alipay', 65.20, 0.00, NULL, '待凑单', '2025-11-25 10:10:00', NULL, '海口市龙华区滨海大道23号', '', '', NULL, NULL, 5.00, NULL);
INSERT INTO `order` VALUES (24, 'OD20251126024', 1014, '徐宇辰', 1047, '蔡诗涵', 'shipped', 'wechat', 256.30, 243.48, '2025-11-26 14:20:00', '请联系收件人', '2025-11-27 08:30:00', '2025-11-29 14:40:00', '兰州市城关区庆阳路24号', 'EX20251129024', '圆通速递', '2025-11-30 00:00:00', 1, 5.00, 12.82);
INSERT INTO `order` VALUES (25, 'OD20251127025', 1014, '徐宇辰', 1048, '贾梓涵', 'paid', 'alipay', 134.70, 127.96, '2025-11-27 09:20:00', '无备注', '2025-11-27 09:22:00', '2025-11-30 10:20:00', '西宁市城西区五四大街25号', 'EX20251130025', '韵达快递', '2025-12-01 00:00:00', 1, 5.00, 6.74);
INSERT INTO `order` VALUES (26, 'OD20251128026', 1014, '徐宇辰', 1049, '丁雨桐', 'shipped', 'wechat', 312.90, 297.25, '2025-11-28 11:50:00', '赠品单独包装', '2025-11-29 07:40:00', '2025-12-01 15:50:00', '银川市兴庆区解放西街26号', 'EX20251201026', '申通快递', '2025-12-02 00:00:00', 1, 5.00, 15.65);
INSERT INTO `order` VALUES (27, 'OD20251129027', 1014, '徐宇辰', 1043, '吕欣怡', 'pending', 'alipay', 78.60, 0.00, NULL, '待支付', '2025-11-29 15:30:00', NULL, '乌鲁木齐市天山区光明路27号', '', '', NULL, NULL, 5.00, NULL);
INSERT INTO `order` VALUES (28, 'OD20251130028', 1016, '马子轩', 1051, '薛欣怡', 'paid', 'wechat', 245.80, 233.51, '2025-11-30 10:10:00', '发票抬头：XX贸易公司', '2025-11-30 10:12:00', '2025-12-02 09:30:00', '拉萨市城关区北京路28号', 'EX20251202028', '顺丰速运', '2025-12-21 00:00:00', 0, 5.00, 12.29);
INSERT INTO `order` VALUES (29, 'OD20251130029', 1019, '林若曦', 1052, '叶宇辰', 'shipped', 'alipay', 187.30, 177.93, '2025-11-30 16:20:00', '易碎品标识', '2025-12-01 08:20:00', '2025-12-03 14:20:00', '石家庄市长安区建设北大街29号', 'EX20251203029', '中通快递', '2025-12-04 00:00:00', 1, 5.00, 9.37);
INSERT INTO `order` VALUES (30, 'OD20251130030', 1021, '何欣妍', 1004, '王浩宇', 'paid', 'wechat', 369.20, 350.74, '2025-11-30 13:40:00', '无备注', '2025-11-30 13:42:00', '2025-12-04 10:50:00', '太原市杏花岭区府东街30号', 'EX20251204030', '圆通速递', '2025-12-05 00:00:00', 1, 5.00, 18.46);
INSERT INTO `order` VALUES (31, 'OD20251130031', 1023, '罗诗雨', 1005, '李欣怡', 'pending', 'alipay', 92.40, 0.00, NULL, '暂存', '2025-11-30 09:50:00', NULL, '呼和浩特市新城区新华大街31号', '', '', NULL, NULL, 5.00, NULL);
INSERT INTO `order` VALUES (32, 'OD20251130032', 1024, '郑浩然', 1010, '赵梓轩', 'shipped', 'wechat', 278.50, 264.57, '2025-11-30 14:10:00', '周末不配送', '2025-12-01 07:30:00', '2025-12-05 16:30:00', '长春市朝阳区人民大街32号', 'EX20251205032', '韵达快递', '2025-12-06 00:00:00', 1, 5.00, 13.93);
INSERT INTO `order` VALUES (33, 'OD20251130033', 1025, '梁雨桐', 1011, '黄梦琪', 'paid', 'alipay', 156.40, 148.58, '2025-11-30 11:20:00', '开发票', '2025-11-30 11:22:00', '2025-12-06 10:10:00', '哈尔滨市南岗区中山路33号', 'EX20251206033', '申通快递', '2025-12-07 00:00:00', 1, 5.00, 7.82);
INSERT INTO `order` VALUES (34, 'OD20251130034', 1028, '唐宇辰', 1012, '周浩然', 'shipped', 'wechat', 345.60, 328.32, '2025-11-30 08:30:00', '联系电话：139XXXX5678', '2025-12-01 08:40:00', '2025-12-07 14:40:00', '沈阳市沈河区青年大街34号', 'EX20251207034', '顺丰速运', '2025-12-06 00:00:00', 0, 5.00, 17.28);
INSERT INTO `order` VALUES (35, 'OD20251130035', 1033, '萧雨桐', 1015, '孙一诺', 'paid', 'alipay', 223.70, 212.51, '2025-11-30 15:40:00', '无备注', '2025-11-30 15:42:00', '2025-12-08 09:30:00', '大连市中山区人民路35号', 'EX20251208035', '中通快递', '2025-12-09 00:00:00', 1, 5.00, 11.19);
INSERT INTO `order` VALUES (36, 'OD20251201036', 1036, '袁宇辰', 1017, '朱雨萱', 'pending', 'wechat', 87.30, 0.00, NULL, '待确认商品', '2025-12-01 09:20:00', NULL, '青岛市市北区辽宁路36号', '', '', NULL, NULL, 5.00, NULL);
INSERT INTO `order` VALUES (37, 'OD20251202037', 1038, '许皓轩', 1018, '胡皓轩', 'paid', 'alipay', 312.80, 297.16, '2025-12-02 13:10:00', '赠品一起配送', '2025-12-02 13:12:00', '2025-12-09 15:20:00', '宁波市鄞州区中山东路37号', 'EX20251209037', '圆通速递', '2025-12-10 00:00:00', 1, 5.00, 15.64);
INSERT INTO `order` VALUES (38, 'OD20251203038', 1039, '傅诗涵', 1020, '高梓涵', 'shipped', 'wechat', 176.50, 167.67, '2025-12-03 16:30:00', '包装标注\"贵重物品\"', '2025-12-04 08:20:00', '2025-12-10 11:10:00', '无锡市梁溪区中山路38号', 'EX20251210038', '韵达快递', '2025-12-11 00:00:00', 1, 5.00, 8.83);
INSERT INTO `order` VALUES (39, 'OD20251204039', 1040, '沈梓涵', 1022, '郭宇泽', 'paid', 'alipay', 256.40, 243.58, '2025-12-04 10:20:00', '无备注', '2025-12-04 10:22:00', '2025-12-11 09:40:00', '常州市新北区通江中路39号', 'EX20251211039', '申通快递', '2025-12-12 00:00:00', 1, 5.00, 12.82);
INSERT INTO `order` VALUES (40, 'OD20251205040', 1041, '曾雨桐', 1026, '谢梓轩', 'pending', 'wechat', 65.70, 0.00, NULL, '待凑满减', '2025-12-05 14:50:00', NULL, '苏州市姑苏区干将东路40号', '', '', NULL, NULL, 5.00, NULL);
INSERT INTO `order` VALUES (41, 'OD20251206041', 1045, '卢梦琪', 1027, '宋欣怡', 'shipped', 'alipay', 369.70, 351.21, '2025-12-06 08:40:00', '加急发货', '2025-12-07 07:50:00', '2025-12-12 16:30:00', '南京市秦淮区夫子庙路41号', 'EX20251212041', '顺丰速运', '2025-12-13 00:00:00', 1, 5.00, 18.49);
INSERT INTO `order` VALUES (42, 'OD20251207042', 1050, '魏浩然', 1029, '韩梦琪', 'paid', 'wechat', 145.90, 138.60, '2025-12-07 11:30:00', '发票内容：耗材', '2025-12-07 11:32:00', '2025-12-13 10:20:00', '杭州市拱墅区湖墅南路42号', 'EX20251213042', '中通快递', '2025-12-14 00:00:00', 1, 5.00, 7.30);
INSERT INTO `order` VALUES (43, 'OD20251208043', 1006, '张博文', 1030, '冯皓轩', 'shipped', 'alipay', 289.30, 274.83, '2025-12-08 15:20:00', '请放驿站', '2025-12-09 08:30:00', '2025-12-13 14:40:00', '合肥市包河区徽州大道43号', 'EX20251213043', '圆通速递', '2025-12-13 00:00:00', 0, 5.00, 14.47);
INSERT INTO `order` VALUES (44, 'OD20251209044', 1007, '刘思琪', 1031, '程浩然', 'pending', 'wechat', 78.40, 0.00, NULL, '犹豫购买', '2025-12-09 09:10:00', NULL, '武汉市江汉区江汉路44号', '', '', NULL, NULL, 5.00, NULL);
INSERT INTO `order` VALUES (45, 'OD20251210045', 1008, '陈俊豪', 1035, '曹欣怡', 'paid', 'alipay', 345.20, 327.94, '2025-12-10 13:40:00', '无备注', '2025-12-10 13:42:00', '2025-12-13 09:30:00', '长沙市芙蓉区五一大道45号', 'EX20251213045', '韵达快递', '2025-12-15 00:00:00', 1, 5.00, 17.26);
INSERT INTO `order` VALUES (46, 'OD20251211046', 1009, '杨雨桐', 1037, '邓梦琪', 'shipped', 'wechat', 223.60, 212.42, '2025-12-11 16:10:00', '赠品单独发', '2025-12-12 07:40:00', '2025-12-13 15:50:00', '郑州市二七区二七路46号', 'EX20251213046', '申通快递', '2025-12-16 00:00:00', 1, 5.00, 11.18);
INSERT INTO `order` VALUES (47, 'OD20251212047', 1013, '吴诗涵', 1042, '彭浩然', 'paid', 'alipay', 187.70, 178.31, '2025-12-12 08:50:00', '开发票', '2025-12-12 08:52:00', '2025-12-13 11:10:00', '广州市越秀区北京路47号', 'EX20251213047', '顺丰速运', '2025-12-16 00:00:00', 1, 5.00, 9.39);
INSERT INTO `order` VALUES (48, 'OD20251213048', 1014, '徐宇辰', 1043, '吕欣怡', 'pending', 'wechat', 92.50, 0.00, NULL, '待支付', '2025-12-13 09:20:00', NULL, '深圳市福田区深南大道48号', '', '', NULL, NULL, 5.00, NULL);
INSERT INTO `order` VALUES (49, 'OD20251213049', 1016, '马子轩', 1044, '苏宇辰', 'paid', 'alipay', 245.50, 233.22, '2025-12-13 10:30:00', '无备注', '2025-12-13 10:32:00', '2025-12-13 14:20:00', '上海市黄浦区南京东路49号', 'EX20251213049', '中通快递', '2025-12-17 00:00:00', 1, 5.00, 12.28);
INSERT INTO `order` VALUES (50, 'OD20251213050', 1019, '林若曦', 1046, '蒋皓轩', 'shipped', 'wechat', 312.40, 296.78, '2025-12-13 11:20:00', '易碎品包装', '2025-12-13 11:22:00', '2025-12-13 15:30:00', '北京市海淀区中关村大街50号', 'EX20251213050', '圆通速递', '2025-12-18 00:00:00', 1, 5.00, 15.62);
INSERT INTO `order` VALUES (51, 'OD20251213051', 1021, '何欣妍', 1047, '蔡诗涵', 'paid', 'alipay', 156.80, 148.96, '2025-12-13 12:10:00', '联系电话：137XXXX9012', '2025-12-13 12:12:00', '2025-12-13 16:40:00', '成都市武侯区武侯祠大街51号', 'EX20251213051', '韵达快递', '2025-12-18 00:00:00', 1, 5.00, 7.84);
INSERT INTO `order` VALUES (52, 'OD20251213052', 1023, '罗诗雨', 1048, '贾梓涵', 'pending', 'wechat', 65.80, 0.00, NULL, '暂存购物车', '2025-12-13 13:20:00', NULL, '杭州市上城区延安路52号', '', '', NULL, NULL, 5.00, NULL);
INSERT INTO `order` VALUES (53, 'OD20251213053', 1024, '郑浩然', 1049, '丁雨桐', 'shipped', 'alipay', 278.70, 264.76, '2025-12-13 14:10:00', '优先配送', '2025-12-13 14:12:00', '2025-12-13 17:20:00', '南京市建邺区江东中路53号', 'EX20251213053', '申通快递', '2025-12-16 00:00:00', 0, 5.00, 13.94);
INSERT INTO `order` VALUES (54, 'OD20251213054', 1025, '梁雨桐', 1032, '董梓涵', 'paid', 'wechat', 369.50, 351.02, '2025-12-13 15:20:00', '无备注', '2025-12-13 15:22:00', '2025-12-13 18:10:00', '深圳市罗湖区深南东路54号', 'EX20251213054', '顺丰速运', '2025-12-20 00:00:00', 1, 5.00, 18.48);
INSERT INTO `order` VALUES (55, 'OD20251213055', 1028, '唐宇辰', 1051, '薛欣怡', 'pending', 'alipay', 87.60, 0.00, NULL, '待确认地址', '2025-12-13 16:30:00', NULL, '广州市海珠区新港中路55号', '', '', NULL, NULL, 5.00, NULL);
INSERT INTO `order` VALUES (56, 'OD20251213056', 1033, '萧雨桐', 1052, '叶宇辰', 'shipped', 'wechat', 223.80, 212.61, '2025-12-13 17:10:00', '赠品一起发', '2025-12-13 17:12:00', '2025-12-13 19:30:00', '武汉市汉阳区汉阳大道56号', 'EX20251213056', '中通快递', '2025-12-21 00:00:00', 1, 5.00, 11.19);
INSERT INTO `order` VALUES (57, 'OD20251213057', 1036, '袁宇辰', 1004, '王浩宇', 'paid', 'alipay', 145.60, 138.32, '2025-12-13 18:20:00', '开发票', '2025-12-13 18:22:00', '2025-12-13 20:10:00', '成都市锦江区红星路57号', 'EX20251213057', '圆通速递', '2025-12-21 00:00:00', 1, 5.00, 7.28);
INSERT INTO `order` VALUES (58, 'OD20251213058', 1038, '许皓轩', 1005, '李欣怡', 'pending', 'wechat', 92.70, 0.00, NULL, '待支付', '2025-12-13 19:10:00', NULL, '西安市碑林区南大街58号', '', '', NULL, NULL, 5.00, NULL);
INSERT INTO `order` VALUES (59, 'OD20251213059', 1039, '傅诗涵', 1010, '赵梓轩', 'shipped', 'alipay', 256.70, 243.86, '2025-12-13 20:30:00', '包装加固', '2025-12-13 20:32:00', '2025-12-13 21:40:00', '重庆市渝北区金开大道59号', 'EX20251213059', '韵达快递', '2025-12-22 00:00:00', 1, 5.00, 12.84);
INSERT INTO `order` VALUES (60, 'OD20251213060', 1006, '张博文', 1004, '王浩宇', 'shipped', 'alipay', 128.50, 122.07, '2025-03-12 14:25:00', '无特殊备注', '2025-03-12 15:10:00', '2025-03-12 16:30:00', '北京市朝阳区建国路88号', 'EX20251213060', '顺丰', '2025-03-15 14:25:00', 1, 5.00, 6.43);
INSERT INTO `order` VALUES (61, 'OD20251213061', 1007, '刘思琪', 1005, '李欣怡', 'paid', 'wechat', 256.00, 243.20, '2025-05-08 09:40:00', '申请优先发货', '2025-05-08 10:20:00', '2025-05-08 10:20:00', '上海市浦东新区张江高科技园区', 'EX20251213061', '中通', '2025-05-07 09:40:00', 0, 5.00, 12.80);
INSERT INTO `order` VALUES (62, 'OD20251213062', 1008, '陈俊豪', 1010, '赵梓轩', 'shipped', 'alipay', 89.90, 85.40, '2025-02-20 11:15:00', '发票已随货寄出', '2025-02-20 12:00:00', '2025-02-20 14:45:00', '广州市天河区珠江新城', 'EX20251213062', '圆通', '2025-02-23 11:15:00', 1, 5.00, 4.50);
INSERT INTO `order` VALUES (63, 'OD20251213063', 1009, '杨雨桐', 1011, '黄梦琪', 'shipped', 'wechat', 320.80, 304.76, '2025-07-15 16:00:00', '收货地址需备注门牌号', '2025-07-15 16:40:00', '2025-07-15 18:20:00', '深圳市南山区科技园', 'EX20251213063', '京东', '2025-07-18 16:00:00', 1, 5.00, 16.04);
INSERT INTO `order` VALUES (64, 'OD20251213064', 1013, '吴诗涵', 1012, '周浩然', 'returned', 'alipay', 199.00, 189.05, '2025-01-05 08:30:00', '无', '2025-01-05 09:10:00', '2025-01-05 10:50:00', '杭州市西湖区西溪湿地旁', 'EX20251213064', '极兔', '2025-01-04 08:30:00', 0, 5.00, 9.95);
INSERT INTO `order` VALUES (65, 'OD20251213065', 1014, '徐宇辰', 1015, '孙一诺', 'exchanged', 'wechat', 75.20, 71.44, '2025-04-22 13:50:00', '赠品请单独包装', '2025-04-22 14:30:00', '2025-04-22 14:30:00', '成都市锦江区春熙路', 'EX20251213065', '韵达', '2025-04-25 13:50:00', 1, 5.00, 3.76);
INSERT INTO `order` VALUES (66, 'OD20251213066', 1016, '马子轩', 1017, '朱雨萱', 'refunded', 'alipay', 450.00, 427.50, '2025-06-30 10:05:00', '联系电话保持畅通', '2025-06-30 11:20:00', '2025-06-30 13:15:00', '重庆市渝中区解放碑', 'EX20251213066', '顺丰', '2025-07-03 10:05:00', 1, 5.00, 22.50);
INSERT INTO `order` VALUES (67, 'OD20251213067', 1019, '林若曦', 1018, '胡皓轩', 'returned', 'wechat', 218.60, 207.67, '2025-08-18 15:20:00', '需本人签收', '2025-08-18 16:00:00', '2025-08-18 17:40:00', '武汉市武昌区黄鹤楼附近', 'EX20251213067', '中通', '2025-08-11 15:20:00', 0, 5.00, 10.93);
INSERT INTO `order` VALUES (68, 'OD20251213068', 1021, '何欣妍', 1020, '高梓涵', 'exchanged', 'alipay', 156.30, 148.48, '2025-09-02 09:10:00', '发票抬头为个人', '2025-09-02 10:00:00', '2025-09-02 10:00:00', '西安市雁塔区大雁塔南广场', 'EX20251213068', '圆通', '2025-09-05 09:10:00', 1, 5.00, 7.82);
INSERT INTO `order` VALUES (69, 'OD20251213069', 1023, '罗诗雨', 1022, '郭宇泽', 'refunded', 'wechat', 389.50, 369.02, '2025-10-17 14:00:00', '物流进度请及时同步', '2025-10-17 14:50:00', '2025-10-17 16:30:00', '南京市鼓楼区新街口', 'EX20251213069', '京东', '2025-10-20 14:00:00', 1, 5.00, 19.48);
INSERT INTO `order` VALUES (70, 'OD20251213070', 1024, '郑浩然', 1026, '谢梓轩', 'returned', 'alipay', 99.90, 94.90, '2025-11-25 12:30:00', '无特殊要求', '2025-11-25 13:15:00', '2025-11-25 15:20:00', '长沙市岳麓区岳麓山景区', 'EX20251213070', '极兔', '2025-11-16 12:30:00', 0, 5.00, 5.00);
INSERT INTO `order` VALUES (71, 'OD20251213071', 1025, '梁雨桐', 1027, '宋欣怡', 'exchanged', 'wechat', 275.00, 261.25, '2025-03-07 10:45:00', '包装需加固', '2025-03-07 11:30:00', '2025-03-07 11:30:00', '郑州市金水区二七广场', 'EX20251213071', '韵达', '2025-03-10 10:45:00', 1, 5.00, 13.75);
INSERT INTO `order` VALUES (72, 'OD20251213072', 1028, '唐宇辰', 1029, '韩梦琪', 'refunded', 'alipay', 142.80, 135.66, '2025-05-19 16:50:00', '发票稍后补开', '2025-05-19 17:30:00', '2025-05-19 19:10:00', '青岛市市南区五四广场', 'EX20251213072', '顺丰', '2025-05-22 16:50:00', 1, 5.00, 7.14);
INSERT INTO `order` VALUES (73, 'OD20251213073', 1033, '萧雨桐', 1030, '冯皓轩', 'returned', 'wechat', 520.00, 494.00, '2025-02-12 08:50:00', '收货后请电话通知', '2025-02-12 09:40:00', '2025-02-12 11:25:00', '大连市中山区星海广场', 'EX20251213073', '中通', '2025-02-10 08:50:00', 0, 5.00, 26.00);
INSERT INTO `order` VALUES (74, 'OD20251213074', 1036, '袁宇辰', 1031, '于诗涵', 'exchanged', 'alipay', 88.60, 84.17, '2025-07-03 13:20:00', '无', '2025-07-03 14:00:00', '2025-07-03 14:00:00', '沈阳市和平区太原街', 'EX20251213074', '圆通', '2025-07-06 13:20:00', 1, 5.00, 4.43);
INSERT INTO `order` VALUES (75, 'OD20251213075', 1038, '许皓轩', 1032, '董梓涵', 'refunded', 'wechat', 315.40, 299.63, '2025-01-28 15:10:00', '赠品选择A款', '2025-01-28 16:00:00', '2025-01-28 17:50:00', '合肥市蜀山区天鹅湖', 'EX20251213075', '京东', '2025-01-31 15:10:00', 1, 5.00, 15.77);
INSERT INTO `order` VALUES (76, 'OD20251213076', 1039, '傅诗涵', 1034, '程浩然', 'returned', 'alipay', 198.00, 188.10, '2025-04-10 11:00:00', '地址修改为XX路XX号', '2025-04-10 11:45:00', '2025-04-10 13:30:00', '福州市鼓楼区三坊七巷', 'EX20251213076', '极兔', '2025-04-03 11:00:00', 0, 5.00, 9.90);
INSERT INTO `order` VALUES (77, 'OD20251213077', 1040, '沈梓涵', 1035, '曹欣怡', 'exchanged', 'wechat', 125.70, 119.41, '2025-06-15 09:20:00', '需开具增值税专用发票', '2025-06-15 10:10:00', '2025-06-15 10:10:00', '厦门市思明区鼓浪屿', 'EX20251213077', '韵达', '2025-06-18 09:20:00', 1, 5.00, 6.29);
INSERT INTO `order` VALUES (78, 'OD20251213078', 1041, '曾雨桐', 1037, '邓梦琪', 'refunded', 'alipay', 420.90, 399.85, '2025-08-29 14:30:00', '物流选择顺丰', '2025-08-29 15:20:00', '2025-08-29 17:05:00', '南宁市青秀区民族大道', 'EX20251213078', '顺丰', '2025-09-01 14:30:00', 1, 5.00, 21.05);
INSERT INTO `order` VALUES (79, 'OD20251213079', 1045, '卢梦琪', 1042, '彭浩然', 'returned', 'wechat', 233.30, 221.63, '2025-10-05 12:10:00', '无', '2025-10-05 13:00:00', '2025-10-05 14:40:00', '昆明市五华区翠湖公园', 'EX20251213079', '中通', '2025-10-03 12:10:00', 0, 5.00, 11.67);

-- ----------------------------
-- Table structure for order_item
-- ----------------------------
DROP TABLE IF EXISTS `order_item`;
CREATE TABLE `order_item`  (
  `item_id` int NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `order_id` bigint NULL DEFAULT NULL COMMENT '订单ID，关联order表的id',
  `order_no` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '订单编号',
  `product_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '商品ID',
  `product_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '商品名称',
  `price` decimal(10, 2) NULL DEFAULT NULL COMMENT '单价',
  `quantity` int NULL DEFAULT NULL COMMENT '数量',
  `total_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '总价',
  `supplier_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '供应商ID',
  `supplier_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '供应商名称',
  `product_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '商品编码',
  PRIMARY KEY (`item_id`) USING BTREE,
  INDEX `idx_order_id`(`order_id` ASC) USING BTREE,
  INDEX `idx_order_no`(`order_no` ASC) USING BTREE,
  INDEX `idx_product_id`(`product_id` ASC) USING BTREE,
  INDEX `idx_supplier_id`(`supplier_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 142 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '订单商品项表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_item
-- ----------------------------
INSERT INTO `order_item` VALUES (4, 2, 'OD20251103002', '15', '护发精油', 299.00, 0, 0.00, '1022', '中型企业', 'P0015');
INSERT INTO `order_item` VALUES (5, 2, 'OD20251103002', '20', '身体乳', 59.00, 4, 236.00, '1027', '大型企业', 'P0020');
INSERT INTO `order_item` VALUES (6, 3, 'OD20251105003', '25', '床上四件套', 39.90, 1, 39.90, '1031', '小型企业', 'P0025');
INSERT INTO `order_item` VALUES (7, 3, 'OD20251105003', '30', '拖鞋居家款', 49.90, 1, 49.90, '1035', '小型企业', 'P0030');
INSERT INTO `order_item` VALUES (8, 4, 'OD20251106004', '35', '鸡蛋 30 枚', 89.00, 2, 178.00, '1042', '个体工商户', 'P0035');
INSERT INTO `order_item` VALUES (9, 4, 'OD20251106004', '40', '酸奶 12 盒', 89.00, 1, 89.00, '1047', '个体工商户', 'P0040');
INSERT INTO `order_item` VALUES (10, 5, 'OD20251107005', '47', '汽车坐垫四季款', 69.00, 2, 138.00, '1051', '个体工商户', 'P0047');
INSERT INTO `order_item` VALUES (11, 5, 'OD20251107005', '50', '车载香水', 59.90, 1, 59.90, '1005', '小型企业', 'P0050');
INSERT INTO `order_item` VALUES (12, 6, 'OD20251108006', '55', '儿童保温杯', 299.00, 1, 299.00, '1011', '中型企业', 'P0055');
INSERT INTO `order_item` VALUES (13, 6, 'OD20251108006', '60', '宠物窝中小型犬', 159.00, 1, 159.00, '1017', '大型企业', 'P0060');
INSERT INTO `order_item` VALUES (14, 7, 'OD20251109007', '2', '轻薄笔记本电脑', 59.90, 1, 59.90, '1020', '中型企业', 'P0002');
INSERT INTO `order_item` VALUES (15, 7, 'OD20251109007', '4', '智能手表', 39.90, 0, 0.00, '1026', '小型企业', 'P0004');
INSERT INTO `order_item` VALUES (16, 8, 'OD20251110008', '5', '平板电脑', 199.00, 1, 199.00, '1029', '大型企业', 'P0005');
INSERT INTO `order_item` VALUES (17, 8, 'OD20251110008', '6', '移动电源 20000mAh', 79.00, 1, 79.00, '1030', '小型企业', 'P0006');
INSERT INTO `order_item` VALUES (18, 9, 'OD20251111009', '7', '机械键盘', 169.00, 0, 0.00, '1034', '中型企业', 'P0007');
INSERT INTO `order_item` VALUES (19, 9, 'OD20251111009', '8', '游戏鼠标', 45.90, 2, 91.80, '1037', '小型企业', 'P0008');
INSERT INTO `order_item` VALUES (20, 10, 'OD20251112010', '9', '桌面音箱', 199.00, 1, 199.00, '1043', '个体工商户', 'P0009');
INSERT INTO `order_item` VALUES (21, 10, 'OD20251112010', '11', '氨基酸洁面乳', 129.00, 0, 0.00, '1048', '个体工商户', 'P0011');
INSERT INTO `order_item` VALUES (22, 11, 'OD20251113011', '12', '保湿补水面膜', 29.90, 2, 59.80, '1052', '个体工商户', 'P0012');
INSERT INTO `order_item` VALUES (23, 11, 'OD20251113011', '13', '口红哑光款', 65.90, 0, 0.00, '1004', '大型企业', 'P0013');
INSERT INTO `order_item` VALUES (24, 12, 'OD20251114012', '14', '防晒霜 SPF50+', 129.00, 1, 129.00, '1012', '中型企业', 'P0014');
INSERT INTO `order_item` VALUES (25, 12, 'OD20251114012', '16', '香水淡香款', 89.00, 1, 89.00, '1018', '大型企业', 'P0016');
INSERT INTO `order_item` VALUES (26, 13, 'OD20251115013', '17', '护手霜套装', 79.00, 2, 158.00, '1029', '大型企业', 'P0017');
INSERT INTO `order_item` VALUES (27, 13, 'OD20251115013', '18', '卸妆油', 59.00, 0, 0.00, '1032', '中型企业', 'P0018');
INSERT INTO `order_item` VALUES (28, 14, 'OD20251116014', '19', '气垫 BB 霜', 109.00, 2, 218.00, '1044', '个体工商户', 'P0019');
INSERT INTO `order_item` VALUES (29, 14, 'OD20251116014', '21', '纯棉毛巾 4 条装', 299.00, 0, 0.00, '1046', '个体工商户', 'P0021');
INSERT INTO `order_item` VALUES (30, 15, 'OD20251117015', '22', '厨房洗洁精', 25.90, 2, 51.80, '1049', '个体工商户', 'P0022');
INSERT INTO `order_item` VALUES (31, 15, 'OD20251117015', '23', '垃圾袋加厚款', 59.90, 0, 0.00, '1005', '小型企业', 'P0023');
INSERT INTO `order_item` VALUES (32, 16, 'OD20251118016', '24', '保温杯 500ml', 99.00, 2, 198.00, '1010', '大型企业', 'P0024');
INSERT INTO `order_item` VALUES (33, 16, 'OD20251118016', '26', '洗衣液 2kg', 69.90, 1, 69.90, '1015', '小型企业', 'P0026');
INSERT INTO `order_item` VALUES (34, 17, 'OD20251119017', '27', '牙刷软毛 10 支装', 79.00, 1, 79.00, '1022', '中型企业', 'P0027');
INSERT INTO `order_item` VALUES (35, 17, 'OD20251119017', '28', '厨房剪刀', 35.90, 1, 35.90, '1027', '大型企业', 'P0028');
INSERT INTO `order_item` VALUES (36, 18, 'OD20251120018', '29', '收纳盒三件套', 59.00, 3, 177.00, '1031', '小型企业', 'P0029');
INSERT INTO `order_item` VALUES (37, 18, 'OD20251120018', '31', '进口牛奶 2L', 19.90, 8, 159.20, '1035', '小型企业', 'P0031');
INSERT INTO `order_item` VALUES (38, 19, 'OD20251121019', '32', '休闲薯片组合', 39.90, 1, 39.90, '1042', '个体工商户', 'P0032');
INSERT INTO `order_item` VALUES (39, 19, 'OD20251121019', '33', '新鲜苹果 5 斤', 59.90, 0, 0.00, '1047', '个体工商户', 'P0033');
INSERT INTO `order_item` VALUES (40, 20, 'OD20251122020', '34', '方便面整箱装', 39.90, 3, 119.70, '1051', '个体工商户', 'P0034');
INSERT INTO `order_item` VALUES (41, 20, 'OD20251122020', '36', '坚果礼盒', 39.90, 2, 79.80, '1011', '中型企业', 'P0036');
INSERT INTO `order_item` VALUES (42, 21, 'OD20251123021', '37', '冷冻鸡翅中', 129.00, 1, 129.00, '1017', '大型企业', 'P0037');
INSERT INTO `order_item` VALUES (43, 21, 'OD20251123021', '38', '碳酸饮料 24 瓶', 29.90, 1, 29.90, '1020', '中型企业', 'P0038');
INSERT INTO `order_item` VALUES (44, 22, 'OD20251124022', '39', '大米 10kg', 129.00, 2, 258.00, '1026', '小型企业', 'P0039');
INSERT INTO `order_item` VALUES (45, 22, 'OD20251124022', '41', '跑步运动鞋', 399.00, 0, 0.00, '1030', '小型企业', 'P0041');
INSERT INTO `order_item` VALUES (46, 23, 'OD20251125023', '42', '羽毛球拍双拍', 25.90, 2, 51.80, '1034', '中型企业', 'P0042');
INSERT INTO `order_item` VALUES (47, 23, 'OD20251125023', '43', '瑜伽垫加厚款', 29.90, 0, 0.00, '1037', '小型企业', 'P0043');
INSERT INTO `order_item` VALUES (48, 24, 'OD20251126024', '44', '户外帐篷', 59.00, 2, 118.00, '1043', '个体工商户', 'P0044');
INSERT INTO `order_item` VALUES (49, 24, 'OD20251126024', '45', '图书 - 悬疑小说', 69.90, 1, 69.90, '1048', '个体工商户', 'P0045');
INSERT INTO `order_item` VALUES (50, 25, 'OD20251127025', '48', '车载充电器', 89.00, 1, 89.00, '1052', '个体工商户', 'P0048');
INSERT INTO `order_item` VALUES (51, 25, 'OD20251127025', '49', '汽车玻璃水', 49.90, 0, 0.00, '1004', '大型企业', 'P0049');
INSERT INTO `order_item` VALUES (52, 26, 'OD20251128026', '51', '婴儿纸尿裤 L 码', 299.00, 1, 299.00, '1012', '中型企业', 'P0051');
INSERT INTO `order_item` VALUES (53, 26, 'OD20251128026', '52', '婴儿奶粉 1 段', 89.00, 0, 0.00, '1018', '大型企业', 'P0052');
INSERT INTO `order_item` VALUES (54, 27, 'OD20251129027', '53', '儿童玩具积木', 39.90, 1, 39.90, '1032', '中型企业', 'P0053');
INSERT INTO `order_item` VALUES (55, 27, 'OD20251129027', '54', '婴儿湿巾 80 抽', 49.90, 0, 0.00, '1044', '个体工商户', 'P0054');
INSERT INTO `order_item` VALUES (56, 28, 'OD20251130028', '56', '宠物猫粮 5kg', 199.00, 1, 199.00, '1046', '个体工商户', 'P0056');
INSERT INTO `order_item` VALUES (57, 28, 'OD20251130028', '57', '宠物狗绳牵引绳', 129.00, 0, 0.00, '1049', '个体工商户', 'P0057');
INSERT INTO `order_item` VALUES (58, 29, 'OD20251130029', '58', '宠物猫砂 10kg', 79.00, 1, 79.00, '1005', '小型企业', 'P0058');
INSERT INTO `order_item` VALUES (59, 29, 'OD20251130029', '59', '宠物玩具球', 89.90, 0, 0.00, '1011', '中型企业', 'P0059');
INSERT INTO `order_item` VALUES (60, 30, 'OD20251130030', '61', '华为 p70pro', 199.00, 1, 199.00, '1020', '中型企业', 'P0061');
INSERT INTO `order_item` VALUES (61, 30, 'OD20251130030', '1', '智能手机 ProMax', 59.00, 2, 118.00, '1029', '大型企业', 'P0001');
INSERT INTO `order_item` VALUES (62, 31, 'OD20251130031', '3', '无线蓝牙耳机', 29.90, 2, 59.80, '1004', '大型企业', 'P0003');
INSERT INTO `order_item` VALUES (63, 31, 'OD20251130031', '10', 'Type-C 快充线', 25.90, 1, 25.90, '1010', '大型企业', 'P0010');
INSERT INTO `order_item` VALUES (64, 32, 'OD20251130032', '15', '护发精油', 109.00, 2, 218.00, '1015', '小型企业', 'P0015');
INSERT INTO `order_item` VALUES (65, 32, 'OD20251130032', '20', '身体乳', 69.90, 0, 0.00, '1022', '中型企业', 'P0020');
INSERT INTO `order_item` VALUES (66, 33, 'OD20251130033', '25', '床上四件套', 79.00, 1, 79.00, '1027', '大型企业', 'P0025');
INSERT INTO `order_item` VALUES (67, 33, 'OD20251130033', '30', '拖鞋居家款', 35.90, 1, 35.90, '1031', '小型企业', 'P0030');
INSERT INTO `order_item` VALUES (68, 34, 'OD20251130034', '35', '鸡蛋 30 枚', 39.90, 4, 159.60, '1035', '小型企业', 'P0035');
INSERT INTO `order_item` VALUES (69, 34, 'OD20251130034', '40', '酸奶 12 盒', 19.90, 9, 179.10, '1042', '个体工商户', 'P0040');
INSERT INTO `order_item` VALUES (70, 35, 'OD20251130035', '47', '汽车坐垫四季款', 129.00, 1, 129.00, '1047', '个体工商户', 'P0047');
INSERT INTO `order_item` VALUES (71, 35, 'OD20251130035', '50', '车载香水', 29.90, 3, 89.70, '1051', '个体工商户', 'P0050');
INSERT INTO `order_item` VALUES (72, 36, 'OD20251201036', '55', '儿童保温杯', 59.90, 1, 59.90, '1005', '小型企业', 'P0055');
INSERT INTO `order_item` VALUES (73, 36, 'OD20251201036', '60', '宠物窝中小型犬', 39.90, 0, 0.00, '1011', '中型企业', 'P0060');
INSERT INTO `order_item` VALUES (74, 37, 'OD20251202037', '2', '轻薄笔记本电脑', 79.00, 2, 158.00, '1017', '大型企业', 'P0002');
INSERT INTO `order_item` VALUES (75, 37, 'OD20251202037', '4', '智能手表', 89.90, 1, 89.90, '1020', '中型企业', 'P0004');
INSERT INTO `order_item` VALUES (76, 38, 'OD20251203038', '5', '平板电脑', 129.00, 1, 129.00, '1026', '小型企业', 'P0005');
INSERT INTO `order_item` VALUES (77, 38, 'OD20251203038', '6', '移动电源 20000mAh', 89.00, 0, 0.00, '1029', '大型企业', 'P0006');
INSERT INTO `order_item` VALUES (78, 39, 'OD20251204039', '7', '机械键盘', 89.00, 2, 178.00, '1030', '小型企业', 'P0007');
INSERT INTO `order_item` VALUES (79, 39, 'OD20251204039', '8', '游戏鼠标', 89.00, 0, 0.00, '1034', '中型企业', 'P0008');
INSERT INTO `order_item` VALUES (80, 40, 'OD20251205040', '9', '桌面音箱', 25.90, 2, 51.80, '1037', '小型企业', 'P0009');
INSERT INTO `order_item` VALUES (81, 40, 'OD20251205040', '11', '氨基酸洁面乳', 29.90, 0, 0.00, '1043', '个体工商户', 'P0011');
INSERT INTO `order_item` VALUES (82, 41, 'OD20251206041', '12', '保湿补水面膜', 399.00, 0, 0.00, '1048', '个体工商户', 'P0012');
INSERT INTO `order_item` VALUES (83, 41, 'OD20251206041', '13', '口红哑光款', 299.00, 1, 299.00, '1052', '个体工商户', 'P0013');
INSERT INTO `order_item` VALUES (84, 42, 'OD20251207042', '14', '防晒霜 SPF50+', 49.90, 1, 49.90, '1004', '大型企业', 'P0014');
INSERT INTO `order_item` VALUES (85, 42, 'OD20251207042', '16', '香水淡香款', 89.00, 0, 0.00, '1012', '中型企业', 'P0016');
INSERT INTO `order_item` VALUES (86, 43, 'OD20251208043', '17', '护手霜套装', 199.00, 1, 199.00, '1018', '大型企业', 'P0017');
INSERT INTO `order_item` VALUES (87, 43, 'OD20251208043', '18', '卸妆油', 79.00, 1, 79.00, '1029', '大型企业', 'P0018');
INSERT INTO `order_item` VALUES (88, 44, 'OD20251209044', '19', '气垫 BB 霜', 39.90, 1, 39.90, '1032', '中型企业', 'P0019');
INSERT INTO `order_item` VALUES (89, 44, 'OD20251209044', '21', '纯棉毛巾 4 条装', 49.90, 0, 0.00, '1044', '个体工商户', 'P0021');
INSERT INTO `order_item` VALUES (90, 45, 'OD20251210045', '22', '厨房洗洁精', 59.00, 3, 177.00, '1046', '个体工商户', 'P0022');
INSERT INTO `order_item` VALUES (91, 45, 'OD20251210045', '23', '垃圾袋加厚款', 19.90, 8, 159.20, '1049', '个体工商户', 'P0023');
INSERT INTO `order_item` VALUES (92, 46, 'OD20251211046', '24', '保温杯 500ml', 39.90, 3, 119.70, '1005', '小型企业', 'P0024');
INSERT INTO `order_item` VALUES (93, 46, 'OD20251211046', '26', '洗衣液 2kg', 39.90, 2, 79.80, '1010', '大型企业', 'P0026');
INSERT INTO `order_item` VALUES (94, 47, 'OD20251212047', '27', '牙刷软毛 10 支装', 129.00, 1, 129.00, '1015', '小型企业', 'P0027');
INSERT INTO `order_item` VALUES (95, 47, 'OD20251212047', '28', '厨房剪刀', 29.90, 1, 29.90, '1022', '中型企业', 'P0028');
INSERT INTO `order_item` VALUES (96, 48, 'OD20251213048', '29', '收纳盒三件套', 29.90, 2, 59.80, '1027', '大型企业', 'P0029');
INSERT INTO `order_item` VALUES (97, 48, 'OD20251213048', '31', '进口牛奶 2L', 25.90, 1, 25.90, '1031', '小型企业', 'P0031');
INSERT INTO `order_item` VALUES (98, 49, 'OD20251213049', '32', '休闲薯片组合', 129.00, 1, 129.00, '1035', '小型企业', 'P0032');
INSERT INTO `order_item` VALUES (99, 49, 'OD20251213049', '33', '新鲜苹果 5 斤', 89.00, 1, 89.00, '1042', '个体工商户', 'P0033');
INSERT INTO `order_item` VALUES (100, 50, 'OD20251213050', '34', '方便面整箱装', 79.00, 2, 158.00, '1047', '个体工商户', 'P0034');
INSERT INTO `order_item` VALUES (101, 50, 'OD20251213050', '36', '坚果礼盒', 59.00, 0, 0.00, '1051', '个体工商户', 'P0036');
INSERT INTO `order_item` VALUES (102, 51, 'OD20251213051', '37', '冷冻鸡翅中', 109.00, 1, 109.00, '1011', '中型企业', 'P0037');
INSERT INTO `order_item` VALUES (103, 51, 'OD20251213051', '38', '碳酸饮料 24 瓶', 299.00, 0, 0.00, '1017', '大型企业', 'P0038');
INSERT INTO `order_item` VALUES (104, 52, 'OD20251213052', '39', '大米 10kg', 25.90, 2, 51.80, '1020', '中型企业', 'P0039');
INSERT INTO `order_item` VALUES (105, 52, 'OD20251213052', '41', '跑步运动鞋', 29.90, 0, 0.00, '1026', '小型企业', 'P0041');
INSERT INTO `order_item` VALUES (106, 53, 'OD20251213053', '42', '羽毛球拍双拍', 99.00, 2, 198.00, '1030', '小型企业', 'P0042');
INSERT INTO `order_item` VALUES (107, 53, 'OD20251213053', '43', '瑜伽垫加厚款', 69.90, 1, 69.90, '1034', '中型企业', 'P0043');
INSERT INTO `order_item` VALUES (108, 54, 'OD20251213054', '44', '户外帐篷', 79.00, 1, 79.00, '1037', '小型企业', 'P0044');
INSERT INTO `order_item` VALUES (109, 54, 'OD20251213054', '45', '图书 - 悬疑小说', 35.90, 1, 35.90, '1043', '个体工商户', 'P0045');
INSERT INTO `order_item` VALUES (110, 55, 'OD20251213055', '48', '车载充电器', 59.90, 1, 59.90, '1048', '个体工商户', 'P0048');
INSERT INTO `order_item` VALUES (111, 55, 'OD20251213055', '49', '汽车玻璃水', 39.90, 0, 0.00, '1052', '个体工商户', 'P0049');
INSERT INTO `order_item` VALUES (112, 56, 'OD20251213056', '51', '婴儿纸尿裤 L 码', 59.00, 2, 118.00, '1004', '大型企业', 'P0051');
INSERT INTO `order_item` VALUES (113, 56, 'OD20251213056', '52', '婴儿奶粉 1 段', 69.90, 1, 69.90, '1012', '中型企业', 'P0052');
INSERT INTO `order_item` VALUES (114, 57, 'OD20251213057', '53', '儿童玩具积木', 89.00, 1, 89.00, '1018', '大型企业', 'P0053');
INSERT INTO `order_item` VALUES (115, 57, 'OD20251213057', '54', '婴儿湿巾 80 抽', 49.90, 0, 0.00, '1032', '中型企业', 'P0054');
INSERT INTO `order_item` VALUES (116, 58, 'OD20251213058', '56', '宠物猫粮 5kg', 29.90, 2, 59.80, '1044', '个体工商户', 'P0056');
INSERT INTO `order_item` VALUES (117, 58, 'OD20251213058', '57', '宠物狗绳牵引绳', 25.90, 1, 25.90, '1046', '个体工商户', 'P0057');
INSERT INTO `order_item` VALUES (118, 59, 'OD20251213059', '58', '宠物猫砂 10kg', 299.00, 0, 0.00, '1049', '个体工商户', 'P0058');
INSERT INTO `order_item` VALUES (119, 59, 'OD20251213059', '59', '宠物玩具球', 59.00, 4, 236.00, '1005', '小型企业', 'P0059');
INSERT INTO `order_item` VALUES (120, 60, 'OD20251213060', '61', '华为 p70pro', 199.00, 1, 199.00, '1011', '中型企业', 'P0061');
INSERT INTO `order_item` VALUES (121, 60, 'OD20251213060', '1', '智能手机 ProMax', 59.00, 2, 118.00, '1020', '中型企业', 'P0001');
INSERT INTO `order_item` VALUES (122, 60, 'OD20251213060', '7', '机械键盘', 3999.00, 1, 3999.00, '1029', '大型企业', 'P0007');
INSERT INTO `order_item` VALUES (123, 61, 'OD20251213061', '14', '防晒霜 SPF50+', 4999.00, 1, 4999.00, '1010', '大型企业', 'P0014');
INSERT INTO `order_item` VALUES (124, 62, 'OD20251213062', '21', '纯棉毛巾 4 条装', 299.00, 1, 299.00, '1017', '大型企业', 'P0021');
INSERT INTO `order_item` VALUES (125, 63, 'OD20251213063', '28', '厨房剪刀', 1299.00, 1, 1299.00, '1027', '大型企业', 'P0028');
INSERT INTO `order_item` VALUES (126, 64, 'OD20251213064', '35', '鸡蛋 30 枚', 2499.00, 1, 2499.00, '1030', '小型企业', 'P0035');
INSERT INTO `order_item` VALUES (127, 65, 'OD20251213065', '42', '羽毛球拍双拍', 129.00, 1, 129.00, '1034', '中型企业', 'P0042');
INSERT INTO `order_item` VALUES (128, 66, 'OD20251213066', '49', '汽车玻璃水', 359.00, 1, 359.00, '1037', '小型企业', 'P0049');
INSERT INTO `order_item` VALUES (129, 67, 'OD20251213067', '56', '宠物猫粮 5kg', 199.00, 1, 199.00, '1042', '个体工商户', 'P0056');
INSERT INTO `order_item` VALUES (130, 68, 'OD20251213068', '61', '华为 p70pro', 499.00, 1, 499.00, '1043', '个体工商户', 'P0061');
INSERT INTO `order_item` VALUES (131, 69, 'OD20251213069', '4', '智能手表', 29.90, 1, 29.90, '1047', '个体工商户', 'P0004');
INSERT INTO `order_item` VALUES (132, 70, 'OD20251213070', '11', '氨基酸洁面乳', 89.00, 1, 89.00, '1048', '个体工商户', 'P0011');
INSERT INTO `order_item` VALUES (133, 71, 'OD20251213071', '18', '卸妆油', 129.00, 1, 129.00, '1051', '个体工商户', 'P0018');
INSERT INTO `order_item` VALUES (134, 72, 'OD20251213072', '25', '床上四件套', 159.00, 1, 159.00, '1052', '个体工商户', 'P0025');
INSERT INTO `order_item` VALUES (135, 73, 'OD20251213073', '32', '休闲薯片组合', 109.00, 1, 109.00, '1004', '大型企业', 'P0032');
INSERT INTO `order_item` VALUES (136, 74, 'OD20251213074', '39', '大米 10kg', 79.00, 1, 79.00, '1012', '中型企业', 'P0039');
INSERT INTO `order_item` VALUES (137, 75, 'OD20251213075', '47', '汽车坐垫四季款', 299.00, 1, 299.00, '1018', '大型企业', 'P0047');
INSERT INTO `order_item` VALUES (138, 76, 'OD20251213076', '53', '儿童玩具积木', 59.00, 1, 59.00, '1022', '中型企业', 'P0053');
INSERT INTO `order_item` VALUES (139, 77, 'OD20251213077', '60', '宠物窝中小型犬', 99.00, 1, 99.00, '1026', '小型企业', 'P0060');
INSERT INTO `order_item` VALUES (140, 78, 'OD20251213078', '8', '游戏鼠标', 169.00, 1, 169.00, '1029', '大型企业', 'P0008');
INSERT INTO `order_item` VALUES (141, 79, 'OD20251213079', '15', '护发精油', 69.00, 1, 69.00, '1031', '小型企业', 'P0015');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `product_id` bigint NOT NULL AUTO_INCREMENT COMMENT '商品ID(主键)',
  `product_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '商品名称',
  `category_id` bigint NOT NULL COMMENT '分类ID',
  `category_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '分类名称',
  `price` decimal(10, 2) NOT NULL COMMENT '价格',
  `stock` int NOT NULL COMMENT '库存',
  `description` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '商品描述',
  `main_image` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主图URL',
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '状态：on(上架)/off(下架)',
  `supplier_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '供应商ID',
  `supplier_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '供应商名称',
  `sales` int NOT NULL COMMENT '销量',
  `product_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '商品编码',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`product_id`) USING BTREE,
  UNIQUE INDEX `uk_product_id`(`product_id` ASC) USING BTREE,
  INDEX `idx_category_id`(`category_id` ASC) USING BTREE,
  INDEX `idx_supplier_id`(`supplier_id` ASC) USING BTREE,
  INDEX `idx_status`(`status` ASC) USING BTREE,
  INDEX `idx_sales`(`sales` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 64 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '商品表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (1, '智能手机ProMax', 1, '电子产品', 3999.00, 10, '遥遥领先', '/productImage/8f2fdf9d-4617-42e2-bf21-d62a9698a1e5.jpg', 'on', '1004', '大型企业', 1200, 'P0001', '2025-12-14 10:00:00', '2025-12-27 17:13:00');
INSERT INTO `product` VALUES (2, '轻薄笔记本电脑', 1, '电子产品', 4999.00, 5, '14英寸便携本，16G内存', '/productImage/6f1d4aa6-2f66-44d9-be9b-64040b83cdb5.jpg', 'on', '1010', '大型企业', 560, 'P0002', '2025-12-14 10:00:00', '2025-12-25 15:19:57');
INSERT INTO `product` VALUES (3, '无线蓝牙耳机', 1, '电子产品', 299.00, 30, '主动降噪，续航24小时', '/productImage/6693b592-4a68-4df2-8102-88714b582f85.jpg', 'on', '1015', '小型企业', 2300, 'P0003', '2025-12-14 10:00:00', '2025-12-27 19:20:44');
INSERT INTO `product` VALUES (4, '智能手表', 1, '电子产品', 1299.00, 150, '心率监测+血氧检测', '/productImage/b441da0b-d38f-4db0-ac10-7bf70988801b.jpg', 'on', '1022', '中型企业', 890, 'P0004', '2025-12-14 10:00:00', '2025-12-25 15:20:11');
INSERT INTO `product` VALUES (5, '平板电脑', 1, '电子产品', 2499.00, 120, '10.9英寸屏幕，学习娱乐两用', '/productImage/44cd1cd8-cfc8-4ab3-bb1b-9cad3b4c8cb3.jpg', 'on', '1027', '大型企业', 720, 'P0005', '2025-12-14 10:00:00', '2025-12-25 15:20:17');
INSERT INTO `product` VALUES (6, '移动电源20000mAh', 1, '电子产品', 129.00, 800, '双向快充，便携设计', '/productImage/195e27a8-0504-4dac-8562-d394eee10a04.jpg', 'on', '1031', '小型企业', 3200, 'P0006', '2025-12-14 10:00:00', '2025-12-25 15:20:23');
INSERT INTO `product` VALUES (7, '机械键盘', 1, '电子产品', 359.00, 200, '青轴按键，RGB背光', '/productImage/86e5988e-a126-490b-b605-f7106197f798.jpg', 'on', '1035', '小型企业', 450, 'P0007', '2025-12-14 10:00:00', '2025-12-25 15:20:30');
INSERT INTO `product` VALUES (8, '游戏鼠标', 1, '电子产品', 199.00, 300, '可编程按键，人体工学', '/productImage/158c0ccc-79b8-4d88-94eb-b8f9aea5fa9a.jpg', 'on', '1042', '个体工商户', 680, 'P0008', '2025-12-14 10:00:00', '2025-12-25 15:20:38');
INSERT INTO `product` VALUES (9, '桌面音箱', 1, '电子产品', 499.00, 100, '立体环绕声，蓝牙5.0', '/productImage/e1f6db8a-90d3-43f0-aa0b-475907012210.jpg', 'on', '1047', '个体工商户', 320, 'P0009', '2025-12-14 10:00:00', '2025-12-25 15:20:44');
INSERT INTO `product` VALUES (10, 'Type-C快充线', 1, '电子产品', 29.90, 1000, '1.5米长，60W快充', '/productImage/5d47bd54-a57f-43e3-9b76-5eefe03c9f20.jpg', 'on', '1051', '个体工商户', 5600, 'P0010', '2025-12-14 10:00:00', '2025-12-25 15:20:50');
INSERT INTO `product` VALUES (11, '氨基酸洁面乳', 3, '美妆个护', 89.00, 300, '温和清洁，适合敏感肌', '/productImage/e2dac0a3-5ec2-49f9-8148-1a50a96a2887.jpg', 'on', '1005', '小型企业', 1200, 'P0011', '2025-12-14 10:00:00', '2025-12-25 15:20:56');
INSERT INTO `product` VALUES (12, '保湿补水面膜', 3, '美妆个护', 129.00, 500, '20片装，玻尿酸精华', '/productImage/d3505546-5690-406c-8b07-53fec1b784f8.jpg', 'on', '1011', '中型企业', 2800, 'P0012', '2025-12-14 10:00:00', '2025-12-25 15:21:01');
INSERT INTO `product` VALUES (13, '口红哑光款', 3, '美妆个护', 159.00, 200, '显白正红色，持久不沾杯', '/productImage/b783c960-4b4c-45bf-a0ef-e7ee955f4490.jpg', 'on', '1017', '大型企业', 980, 'P0013', '2025-12-14 10:00:00', '2025-12-25 15:21:07');
INSERT INTO `product` VALUES (14, '防晒霜SPF50+', 3, '美妆个护', 109.00, 250, '防水防汗，全身可用', '/productImage/7e4fa27b-34b9-485a-90b5-a9fcfb1bbaa5.jpg', 'on', '1020', '中型企业', 1800, 'P0014', '2025-12-14 10:00:00', '2025-12-25 15:21:14');
INSERT INTO `product` VALUES (15, '护发精油', 3, '美妆个护', 79.00, 180, '修复干枯发质，柔顺亮泽', '/productImage/1bc81d6a-3599-43fe-8c4f-6671189dd32a.jpg', 'on', '1026', '小型企业', 760, 'P0015', '2025-12-14 10:00:00', '2025-12-25 15:21:19');
INSERT INTO `product` VALUES (16, '香水淡香款', 3, '美妆个护', 299.00, 100, '清新花果香，持久6小时', '/productImage/3e36d0c5-d25a-4608-9a37-229cc05b09ad.jpg', 'on', '1029', '大型企业', 420, 'P0016', '2025-12-14 10:00:00', '2025-12-25 15:29:04');
INSERT INTO `product` VALUES (17, '护手霜套装', 3, '美妆个护', 59.00, 400, '3支装，滋润不油腻', '/productImage/2f9a1447-41ee-4ebb-8891-d956753a7581.jpg', 'on', '1030', '小型企业', 1500, 'P0017', '2025-12-14 10:00:00', '2025-12-25 15:29:10');
INSERT INTO `product` VALUES (18, '卸妆油', 3, '美妆个护', 99.00, 220, '温和卸妆，深层清洁', '/productImage/1088c6e7-d71c-4b7e-ab59-ac393ab76e6b.jpg', 'on', '1034', '中型企业', 1100, 'P0018', '2025-12-14 10:00:00', '2025-12-25 15:29:14');
INSERT INTO `product` VALUES (19, '气垫BB霜', 3, '美妆个护', 169.00, 150, '遮瑕保湿，自然裸妆', '/productImage/80a5422f-c5e7-4e63-81e9-2c081fc98c46.jpg', 'on', '1037', '小型企业', 850, 'P0019', '2025-12-14 10:00:00', '2025-12-25 15:29:20');
INSERT INTO `product` VALUES (20, '身体乳', 3, '美妆个护', 69.00, 350, '全身保湿，持久留香', '/productImage/70c42ad6-4aca-436d-9596-b864a1c8d2b9.png', 'on', '1043', '个体工商户', 1300, 'P0020', '2025-12-14 10:00:00', '2025-12-25 15:29:25');
INSERT INTO `product` VALUES (21, '纯棉毛巾4条装', 4, '家居日用', 39.90, 600, '吸水亲肤，不掉毛', '/productImage/a1d564f4-118d-4a09-a20c-7299eca4cd50.jpg', 'on', '1048', '个体工商户', 2200, 'P0021', '2025-12-14 10:00:00', '2025-12-25 15:29:32');
INSERT INTO `product` VALUES (22, '厨房洗洁精', 4, '家居日用', 19.90, 1000, '食品级，去油不伤手', '/productImage/cab13ef7-1c47-45be-bb08-0fec026f2bd5.jpg', 'on', '1052', '个体工商户', 3500, 'P0022', '2025-12-14 10:00:00', '2025-12-25 15:29:39');
INSERT INTO `product` VALUES (23, '垃圾袋加厚款', 4, '家居日用', 29.90, 800, '50只装，承重10kg', '/productImage/e4e93838-c38f-4010-8460-682cfd2ba1ed.jpg', 'on', '1004', '大型企业', 4200, 'P0023', '2025-12-14 10:00:00', '2025-12-25 15:29:45');
INSERT INTO `product` VALUES (24, '保温杯500ml', 4, '家居日用', 89.00, 200, '316不锈钢，保温12小时', '/productImage/5f07bdad-d58a-48b5-bdb6-bc18ff3e253a.jpg', 'on', '1012', '中型企业', 980, 'P0024', '2025-12-14 10:00:00', '2025-12-25 15:30:28');
INSERT INTO `product` VALUES (25, '床上四件套', 4, '家居日用', 299.00, 100, '纯棉材质，简约图案', '/productImage/e9cef140-ec05-42d1-9fc0-14bcdae7e70d.jpg', 'on', '1018', '大型企业', 560, 'P0025', '2025-12-14 10:00:00', '2025-12-25 15:30:38');
INSERT INTO `product` VALUES (26, '洗衣液2kg', 4, '家居日用', 49.90, 700, '深层去污，持久留香', '/productImage/d3376392-4b83-48bc-899e-4a59b9579c9a.jpg', 'on', '1029', '大型企业', 2800, 'P0026', '2025-12-14 10:00:00', '2025-12-25 15:30:44');
INSERT INTO `product` VALUES (27, '牙刷软毛10支装', 4, '家居日用', 25.90, 900, '高密度植毛，呵护牙龈', '/productImage/b1fe16d9-0bfe-4d86-81ee-9d422e5b05fb.jpg', 'on', '1032', '中型企业', 3100, 'P0027', '2025-12-14 10:00:00', '2025-12-25 15:30:49');
INSERT INTO `product` VALUES (28, '厨房剪刀', 4, '家居日用', 59.00, 150, '多功能，锋利耐用', '/productImage/ffc5a78e-046b-448b-872f-dcd4ef94d9dc.jpg', 'on', '1044', '个体工商户', 420, 'P0028', '2025-12-14 10:00:00', '2025-12-25 15:30:55');
INSERT INTO `product` VALUES (29, '收纳盒三件套', 4, '家居日用', 79.00, 200, '塑料材质，分类收纳', '/productImage/c2baa688-a8fb-4028-b6c7-53aa41c1a212.jpg', 'on', '1046', '个体工商户', 890, 'P0029', '2025-12-14 10:00:00', '2025-12-25 15:31:00');
INSERT INTO `product` VALUES (30, '拖鞋居家款', 4, '家居日用', 35.90, 400, 'EVA材质，防滑耐磨', '/productImage/d9b5e45e-4945-41ff-8720-b235f22fcc3e.jpg', 'on', '1049', '个体工商户', 1600, 'P0030', '2025-12-14 10:00:00', '2025-12-25 15:31:05');
INSERT INTO `product` VALUES (31, '进口牛奶2L', 5, '食品生鲜', 59.90, 300, '全脂高钙，日期新鲜', '/productImage/e9cebffa-ce23-491c-8676-867f23351368.jpg', 'on', '1005', '小型企业', 1200, 'P0031', '2025-12-14 10:00:00', '2025-12-25 15:41:05');
INSERT INTO `product` VALUES (32, '休闲薯片组合', 5, '食品生鲜', 49.90, 500, '6包混合口味', '/productImage/283204fd-6958-48da-9101-8d3799453bf9.jpg', 'on', '1010', '大型企业', 2300, 'P0032', '2025-12-14 10:00:00', '2025-12-25 15:41:11');
INSERT INTO `product` VALUES (33, '新鲜苹果5斤', 5, '食品生鲜', 39.90, 200, '红富士，脆甜多汁', '/productImage/e4a55d0a-e97e-4959-8831-dec21493ca6c.jpg', 'on', '1015', '小型企业', 1800, 'P0033', '2025-12-14 10:00:00', '2025-12-25 15:41:15');
INSERT INTO `product` VALUES (34, '方便面整箱装', 5, '食品生鲜', 69.90, 400, '24包经典口味', '/productImage/29573ab1-d170-4072-8184-11ec75e43a2e.jpg', 'on', '1022', '中型企业', 3500, 'P0034', '2025-12-14 10:00:00', '2025-12-25 15:41:20');
INSERT INTO `product` VALUES (35, '鸡蛋30枚', 5, '食品生鲜', 45.90, 300, '散养土鸡蛋，新鲜营养', '/productImage/4695e599-35db-415b-9e9e-2c9be173d28e.jpg', 'on', '1027', '大型企业', 2100, 'P0035', '2025-12-14 10:00:00', '2025-12-25 15:41:25');
INSERT INTO `product` VALUES (36, '坚果礼盒', 5, '食品生鲜', 129.00, 100, '8种坚果混合，礼盒装', '/productImage/45074800-caca-47f6-9d70-9118ba42cb0a.jpg', 'on', '1031', '小型企业', 780, 'P0036', '2025-12-14 10:00:00', '2025-12-25 15:41:30');
INSERT INTO `product` VALUES (37, '冷冻鸡翅中', 5, '食品生鲜', 79.00, 150, '2斤装，新鲜冷冻', '/productImage/2f750130-a645-4e4a-b1ba-b734baa5fdb6.png', 'on', '1035', '小型企业', 950, 'P0037', '2025-12-14 10:00:00', '2025-12-25 15:41:37');
INSERT INTO `product` VALUES (38, '碳酸饮料24瓶', 5, '食品生鲜', 59.90, 250, '经典口味，整箱批发', '/productImage/0f75dc8e-f2da-4f44-96e9-a1f59d129504.jpg', 'off', '1042', '个体工商户', 2800, 'P0038', '2025-12-14 10:00:00', '2025-12-25 15:41:43');
INSERT INTO `product` VALUES (39, '大米10kg', 5, '食品生鲜', 89.90, 100, '东北珍珠米，软糯香甜', '/productImage/240309fe-1c82-45d5-b9f1-2f3cc1ffede6.jpg', 'on', '1047', '个体工商户', 1300, 'P0039', '2025-12-14 10:00:00', '2025-12-25 15:41:48');
INSERT INTO `product` VALUES (40, '酸奶12盒', 5, '食品生鲜', 65.90, 200, '低温发酵，益生菌丰富', '/productImage/3cea9626-4983-4c38-ad8a-62ae3a17b6c5.jpg', 'on', '1051', '个体工商户', 1600, 'P0040', '2025-12-14 10:00:00', '2025-12-25 15:41:53');
INSERT INTO `product` VALUES (41, '跑步运动鞋', 6, '运动户外', 399.00, 150, '轻便减震，透气网面', '/productImage/77f2b8e6-987a-4e5e-b0ea-48fd53480e1d.jpg', 'on', '1011', '中型企业', 890, 'P0041', '2025-12-14 10:00:00', '2025-12-25 15:41:57');
INSERT INTO `product` VALUES (42, '羽毛球拍双拍', 6, '运动户外', 129.00, 200, '碳素纤维，耐用轻便', '/productImage/d705090a-4431-467a-8922-fee4e7e4aa8a.jpg', 'on', '1017', '大型企业', 1200, 'P0042', '2025-12-14 10:00:00', '2025-12-25 15:42:03');
INSERT INTO `product` VALUES (43, '瑜伽垫加厚款', 6, '运动户外', 89.00, 300, '防滑耐磨，6mm厚度', '/productImage/1a13b05a-d745-4954-b74f-dd083c31f27d.jpg', 'on', '1020', '中型企业', 1500, 'P0043', '2025-12-14 10:00:00', '2025-12-25 15:42:12');
INSERT INTO `product` VALUES (44, '户外帐篷', 6, '运动户外', 299.00, 80, '双人自动帐篷，防风防雨', '/productImage/853137b1-9566-4bc6-b17c-b4bc356e7fd5.jpg', 'on', '1026', '小型企业', 450, 'P0044', '2025-12-14 10:00:00', '2025-12-25 15:42:21');
INSERT INTO `product` VALUES (45, '图书-悬疑小说', 8, '图书音像', 49.90, 200, '畅销悬疑系列，单册装', '/productImage/b8b19a16-9046-4d91-8d6f-0eded5ea27d1.jpg', 'on', '1030', '小型企业', 780, 'P0045', '2025-12-14 10:00:00', '2025-12-25 15:42:45');
INSERT INTO `product` VALUES (47, '汽车坐垫四季款', 9, '汽车用品', 199.00, 150, '亚麻材质，透气舒适', '/productImage/bdcb3954-0725-4fe8-8091-cd7600ebae3f.jpg', 'on', '1034', '中型企业', 650, 'P0047', '2025-12-14 10:00:00', '2025-12-25 15:48:31');
INSERT INTO `product` VALUES (48, '车载充电器', 9, '汽车用品', 59.00, 300, '双USB快充，兼容所有车型', '/productImage/cf9ff23a-3c2a-4ed2-86bc-293378056a3d.png', 'on', '1037', '小型企业', 1800, 'P0048', '2025-12-14 10:00:00', '2025-12-25 15:48:36');
INSERT INTO `product` VALUES (49, '汽车玻璃水', 9, '汽车用品', 19.90, 500, '冬季防冻型，2L装', '/productImage/915ecb05-c4af-440d-9218-c870d60e0fd8.jpg', 'on', '1043', '个体工商户', 2500, 'P0049', '2025-12-14 10:00:00', '2025-12-25 15:48:40');
INSERT INTO `product` VALUES (50, '车载香水', 9, '汽车用品', 39.90, 200, '持久淡香，除异味', '/productImage/2a251352-1dd0-4a11-bf2f-d37b87b9e203.jpg', 'on', '1048', '个体工商户', 1200, 'P0050', '2025-12-14 10:00:00', '2025-12-25 15:48:45');
INSERT INTO `product` VALUES (51, '婴儿纸尿裤L码', 7, '母婴用品', 129.00, 300, '超薄透气，50片装', '/productImage/7c8559c5-5ba1-472a-a53b-d2ae0dae6ea3.jpg', 'on', '1052', '个体工商户', 1800, 'P0051', '2025-12-14 10:00:00', '2025-12-25 15:48:49');
INSERT INTO `product` VALUES (52, '婴儿奶粉1段', 7, '母婴用品', 299.00, 100, '适合0-6个月宝宝', '/productImage/069d4399-2c10-4727-9edd-74e278566550.jpg', 'on', '1004', '大型企业', 650, 'P0052', '2025-12-14 10:00:00', '2025-12-25 15:46:00');
INSERT INTO `product` VALUES (53, '儿童玩具积木', 7, '母婴用品', 89.00, 200, '环保材质，益智拼装', '/productImage/dc63fa09-91ba-4022-bb65-116360fcb8cf.jpg', 'on', '1012', '中型企业', 1200, 'P0053', '2025-12-14 10:00:00', '2025-12-25 15:46:04');
INSERT INTO `product` VALUES (54, '婴儿湿巾80抽', 7, '母婴用品', 29.90, 800, '无酒精，柔软亲肤', '/productImage/9cbda8ea-9811-42b2-9618-c967a7bf35b3.jpg', 'on', '1018', '大型企业', 3200, 'P0054', '2025-12-14 10:00:00', '2025-12-25 15:46:09');
INSERT INTO `product` VALUES (55, '儿童保温杯', 7, '母婴用品', 99.00, 150, '316不锈钢，带吸管', '/productImage/7c19505b-bcb3-42b8-8cea-15eb0c24d693.jpg', 'on', '1032', '中型企业', 980, 'P0055', '2025-12-14 10:00:00', '2025-12-25 15:46:13');
INSERT INTO `product` VALUES (56, '宠物猫粮5kg', 10, '宠物用品', 149.00, 200, '全价成猫粮，营养均衡', '/productImage/e2e55640-1ffe-4a5e-9334-b4709e611c96.jpg', 'on', '1044', '个体工商户', 1100, 'P0056', '2025-12-14 10:00:00', '2025-12-25 15:46:17');
INSERT INTO `product` VALUES (57, '宠物狗绳牵引绳', 10, '宠物用品', 59.00, 300, '可伸缩，舒适握柄', '/productImage/0bd89596-d87e-47f8-9a0a-4793b7783d1e.jpg', 'on', '1046', '个体工商户', 1500, 'P0057', '2025-12-14 10:00:00', '2025-12-25 15:46:22');
INSERT INTO `product` VALUES (58, '宠物猫砂10kg', 10, '宠物用品', 69.90, 400, '结团快，低粉尘', '/productImage/d62ae3f8-16e0-46f3-8588-574e4a5d58c0.jpg', 'on', '1049', '个体工商户', 2800, 'P0058', '2025-12-14 10:00:00', '2025-12-25 15:46:28');
INSERT INTO `product` VALUES (59, '宠物玩具球', 10, '宠物用品', 29.90, 500, '耐咬材质，互动玩具', '/productImage/10cb57a0-9200-4a8a-acc0-beeefee2f9a3.jpg', 'on', '1005', '小型企业', 2200, 'P0059', '2025-12-14 10:00:00', '2025-12-25 15:46:33');
INSERT INTO `product` VALUES (60, '宠物窝中小型犬', 10, '宠物用品', 89.00, 100, '保暖舒适，可拆洗', '/productImage/f069eaf3-7aa2-412d-b557-8148fd3ce577.jpg', 'on', '1011', '中型企业', 750, 'P0060', '2025-12-14 10:00:00', '2025-12-25 15:46:38');
INSERT INTO `product` VALUES (61, '华为p70pro', 11, '手机', 7999.00, 100, '遥遥领先', '/productImage/f069eaf3-7aa2-412d-b557-8148fd3ce577.jpg', 'on', '1020', '中型企业', 1000, 'P0061', '2025-12-26 14:30:33', '2025-12-26 14:30:35');

-- ----------------------------
-- Table structure for product_detail_image
-- ----------------------------
DROP TABLE IF EXISTS `product_detail_image`;
CREATE TABLE `product_detail_image`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `product_id` int NULL DEFAULT NULL COMMENT '商品ID，关联product表的product_id',
  `image_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '详情图URL',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_product_id`(`product_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '商品详情图片表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_detail_image
-- ----------------------------
INSERT INTO `product_detail_image` VALUES (28, 14, 'https://loremflickr.com/400/400?lock=6816813923784867');
INSERT INTO `product_detail_image` VALUES (29, 14, 'https://loremflickr.com/400/400?lock=1644063132483097');
INSERT INTO `product_detail_image` VALUES (30, 14, 'https://loremflickr.com/400/400?lock=8512110227769391');
INSERT INTO `product_detail_image` VALUES (31, 15, 'https://loremflickr.com/400/400?lock=6816813923784867');
INSERT INTO `product_detail_image` VALUES (32, 15, 'https://loremflickr.com/400/400?lock=1644063132483097');
INSERT INTO `product_detail_image` VALUES (33, 15, 'https://loremflickr.com/400/400?lock=8512110227769391');
INSERT INTO `product_detail_image` VALUES (34, 16, 'https://loremflickr.com/400/400?lock=6816813923784867');
INSERT INTO `product_detail_image` VALUES (35, 16, 'https://loremflickr.com/400/400?lock=1644063132483097');
INSERT INTO `product_detail_image` VALUES (36, 16, 'https://loremflickr.com/400/400?lock=8512110227769391');
INSERT INTO `product_detail_image` VALUES (37, 17, 'https://loremflickr.com/400/400?lock=6816813923784867');
INSERT INTO `product_detail_image` VALUES (38, 17, 'https://loremflickr.com/400/400?lock=1644063132483097');
INSERT INTO `product_detail_image` VALUES (39, 17, 'https://loremflickr.com/400/400?lock=8512110227769391');

-- ----------------------------
-- Table structure for refund
-- ----------------------------
DROP TABLE IF EXISTS `refund`;
CREATE TABLE `refund`  (
  `refund_id` int NOT NULL AUTO_INCREMENT COMMENT '退款ID（自增主键）',
  `order_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '订单ID，关联order表的order_id',
  `reason` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '退款原因',
  `refund_amount` decimal(10, 2) NOT NULL COMMENT '退款金额',
  `status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '状态：pending(待审核)/approved(已同意)/rejected(已拒绝)/completed(已完成)',
  `apply_time` datetime NULL DEFAULT NULL COMMENT '申请时间',
  PRIMARY KEY (`refund_id`) USING BTREE,
  INDEX `idx_order_id`(`order_id` ASC) USING BTREE,
  INDEX `idx_status`(`status` ASC) USING BTREE,
  INDEX `idx_apply_time`(`apply_time` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '退款申请表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of refund
-- ----------------------------
INSERT INTO `refund` VALUES (2, '1001', '商品质量问题', 500.00, '处理中', '2025-10-25 21:35:35');

-- ----------------------------
-- Table structure for shopping_cart
-- ----------------------------
DROP TABLE IF EXISTS `shopping_cart`;
CREATE TABLE `shopping_cart`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '购物车项ID',
  `user_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '所属用户ID',
  `product_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '商品名称',
  `product_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '商品ID',
  `price` decimal(10, 2) NOT NULL COMMENT '商品单价',
  `quantity` int NOT NULL DEFAULT 1 COMMENT '购买数量',
  `amount` decimal(10, 2) NOT NULL COMMENT '商品总金额',
  `image` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '商品图片地址',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '加入购物车时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_user_product`(`user_id` ASC, `product_id` ASC) USING BTREE,
  INDEX `idx_user_id`(`user_id` ASC) USING BTREE,
  INDEX `idx_product_id`(`product_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户购物车表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shopping_cart
-- ----------------------------
INSERT INTO `shopping_cart` VALUES (4, '1', '小的木制衬衫', '60', 10.00, 20, 200.00, 'https://loremflickr.com/400/400?lock=2812612389166897', '2025-10-25 16:47:49');

-- ----------------------------
-- Table structure for supplier_examine_info
-- ----------------------------
DROP TABLE IF EXISTS `supplier_examine_info`;
CREATE TABLE `supplier_examine_info`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `user_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户Id（业务层用户唯一标识）',
  `user_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户名（供应商/采购商名称）',
  `company_name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '企业名称',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '企业地址',
  `examine_status` int NOT NULL COMMENT '审核状态（0:待审核，1通过，2拒绝）',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  `credit_rating` int NULL DEFAULT NULL COMMENT '企业信用等级',
  `reject_reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '驳回原因',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_user_id`(`user_id` ASC) USING BTREE COMMENT '用户Id唯一索引（避免重复）',
  INDEX `idx_username`(`user_name` ASC) USING BTREE COMMENT '用户名索引（用于模糊查询）',
  INDEX `idx_examine_status`(`examine_status` ASC) USING BTREE COMMENT '审核状态索引（用于筛选）',
  INDEX `idx_create_time`(`create_time` ASC) USING BTREE COMMENT '创建时间索引（用于时间范围查询）'
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '供应商/采购商基础信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of supplier_examine_info
-- ----------------------------
INSERT INTO `supplier_examine_info` VALUES (1, '1004', '王浩宇', '北京华宇科创信息技术有限公司', '北京市朝阳区XX路1号', 2, '2025-12-03 00:00:00', '2025-12-13 14:54:30', 3, NULL);
INSERT INTO `supplier_examine_info` VALUES (2, '1005', '李欣怡', '上海临港自贸区盛达国际贸易有限公司', '上海市浦东新区XX路2号', 1, '2025-12-08 00:00:00', '2025-12-13 14:54:32', 3, NULL);
INSERT INTO `supplier_examine_info` VALUES (3, '1006', '张博文', '内蒙古草原牧歌生态养殖有限公司', '重庆市渝中区XX路7号', 1, '2025-12-30 00:00:00', '2025-12-13 14:54:34', 3, NULL);
INSERT INTO `supplier_examine_info` VALUES (4, '1007', '刘思琪', '辽宁大连港船舶维修有限公司', '武汉市洪山区XX路8号', 1, '2025-12-26 00:00:00', '2025-12-13 15:01:02', 3, NULL);
INSERT INTO `supplier_examine_info` VALUES (5, '1008', '陈俊豪', '吉林长白山参茸特产有限公司', '西安市雁塔区XX路9号', 1, '2025-12-31 00:00:00', '2025-12-13 15:06:33', 3, NULL);
INSERT INTO `supplier_examine_info` VALUES (6, '1009', '杨雨桐', '浙江杭州滨江数字传媒有限公司', '长沙市岳麓区XX路12号', 1, '2025-12-10 00:00:00', '2025-12-13 15:07:21', 3, NULL);
INSERT INTO `supplier_examine_info` VALUES (7, '1010', '赵梓轩', '福建厦门鹭岛进出口贸易有限公司', '苏州市姑苏区XX路14号', 1, '2025-12-04 00:00:00', '2025-12-13 15:16:17', 3, NULL);
INSERT INTO `supplier_examine_info` VALUES (8, '1011', '黄梦琪', '江西赣江水利工程有限公司', '无锡市梁溪区XX路15号', 2, '2025-12-02 00:00:00', '2025-12-13 15:38:16', 3, '11111111111111');
INSERT INTO `supplier_examine_info` VALUES (9, '1012', '周浩然', '河南中原重工机械有限公司', '厦门市思明区XX路17号', 2, '2025-12-04 00:00:00', '2025-12-13 15:38:54', 3, '111111111111111');
INSERT INTO `supplier_examine_info` VALUES (10, '1013', '吴诗涵', '湖南长沙岳麓文化创意有限公司', '沈阳市和平区XX路19号', 2, '2025-12-09 00:00:00', '2025-12-13 15:39:38', 3, '222222222222');
INSERT INTO `supplier_examine_info` VALUES (11, '1014', '徐宇辰', '四川成都天府软件技术有限公司', '济南市历下区XX路23号', 1, '2025-12-12 00:00:00', '2025-12-21 21:51:54', 3, '人格二个如果如何人格如果');
INSERT INTO `supplier_examine_info` VALUES (12, '1015', '孙一诺', '贵州遵义酱香白酒酿造有限公司', '合肥市包河区XX路24号', 1, '2025-12-19 00:00:00', '2025-12-21 21:51:56', 3, NULL);
INSERT INTO `supplier_examine_info` VALUES (13, '1016', '马子轩', '西藏拉萨高原特产开发有限公司', '南宁市青秀区XX路26号', 1, '2025-12-08 00:00:00', '2025-12-21 21:51:57', 3, NULL);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `user_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系人',
  `account` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '账号',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '密码（加密存储）',
  `user_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户类型：buyer(采购商)/supplier(供应商)',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '状态(1启用/0禁用)',
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '手机号',
  `company_scale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '企业规模',
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '邮箱',
  `company_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '企业名称',
  `company_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '企业简介',
  `credit_rating` int NULL DEFAULT NULL COMMENT '企业信用等级',
  `maintenance_reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '信用维护原因',
  `examine_status` int NULL DEFAULT NULL COMMENT '资质审核状态',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '企业地址',
  `score` int NULL DEFAULT NULL COMMENT '多维度评分',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户头像',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `evidence_material` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '佐证材料',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_username`(`user_name` ASC) USING BTREE,
  INDEX `idx_user_type`(`user_type` ASC) USING BTREE,
  INDEX `idx_phone`(`phone` ASC) USING BTREE,
  INDEX `idx_email`(`email` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22342347 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1004, '王浩宇', 'wwwww1', '123456', '供应商', '1', '13700000000', '大型企业', 'user01@example.com', '北京华宇科创信息技术有限公司', '', 4, '测试', 1, '北京市朝阳区XX路1号', 100, 'avatar_01.png', '2025-12-03 00:00:00', '2025-12-28 18:58:28', 'D:\\Java Project\\B2B E-commerce System\\src\\main\\resources\\uploadFile\\d5b67f5a-83a5-4f49-993a-d6be0bceda03.pdf');
INSERT INTO `user` VALUES (1005, '李欣怡', 'wwwww2', '123456', '供应商', '1', '13700000000', '小型企业', 'user02@example.com', '上海临港自贸区盛达国际贸易有限公司', NULL, 4, NULL, 1, '上海市浦东新区XX路2号', NULL, 'avatar_02.png', '2025-12-08 00:00:00', '2025-12-28 18:58:28', NULL);
INSERT INTO `user` VALUES (1006, '张博文', 'wwwww3', '123456', '采购商', '1', '1390815676', '大型企业', 'user03@example.com', '天津津门海工装备制造有限公司', NULL, 3, NULL, 1, '广州市天河区XX路3号', NULL, 'avatar_03.png', '2025-12-14 00:00:00', '2025-12-28 18:58:28', NULL);
INSERT INTO `user` VALUES (1007, '刘思琪', 'wwwww4', '123456', '采购商', '1', '1503591550', '中型企业', 'user04@example.com', '重庆山城渝味食品加工有限公司', NULL, 3, NULL, 1, '深圳市南山区XX路4号', NULL, 'avatar_04.png', '2025-12-24 00:00:00', '2025-12-28 18:58:28', NULL);
INSERT INTO `user` VALUES (1008, '陈俊豪', 'wwwww5', '123456', '采购商', '1', '1515832010', '小型企业', 'user05@example.com', '河北冀北新型建材有限公司', NULL, 3, NULL, 1, '杭州市西湖区XX路5号', NULL, 'avatar_05.png', '2025-12-06 00:00:00', '2025-12-28 18:58:28', NULL);
INSERT INTO `user` VALUES (1009, '杨雨桐', 'wwwww6', '123456', '采购商', '1', '1889464283', '小型企业', 'user06@example.com', '山西晋煤能源技术开发有限公司', NULL, 3, NULL, 1, '成都市锦江区XX路6号', NULL, 'avatar_06.png', '2025-12-08 00:00:00', '2025-12-28 18:58:28', NULL);
INSERT INTO `user` VALUES (1010, '赵梓轩', 'wwwww7', '123456', '供应商', '1', '1893856261', '大型企业', 'user07@example.com', '内蒙古草原牧歌生态养殖有限公司', NULL, 3, NULL, 1, '重庆市渝中区XX路7号', NULL, 'avatar_07.png', '2025-12-30 00:00:00', '2025-12-28 18:58:28', NULL);
INSERT INTO `user` VALUES (1011, '黄梦琪', 'wwwww8', '123456', '供应商', '1', '1366090696', '中型企业', 'user08@example.com', '辽宁大连港船舶维修有限公司', NULL, 2, NULL, 1, '武汉市洪山区XX路8号', NULL, 'avatar_08.png', '2025-12-26 00:00:00', '2025-12-28 18:58:28', NULL);
INSERT INTO `user` VALUES (1012, '周浩然', 'wwwww9', '123456', '供应商', '1', '1356751942', '中型企业', 'user09@example.com', '吉林长白山参茸特产有限公司', NULL, 4, '1', 1, '西安市雁塔区XX路9号', 19, 'avatar_09.png', '2025-12-31 00:00:00', '2025-12-28 18:58:28', NULL);
INSERT INTO `user` VALUES (1013, '吴诗涵', 'wwwww10', '123456', '采购商', '1', '1342569820', '小型企业', 'user10@example.com', '黑龙江北大荒粮食仓储有限公司', NULL, 3, NULL, 1, '南京市玄武区XX路10号', NULL, 'avatar_10.png', '2025-12-16 00:00:00', '2025-12-28 18:58:28', NULL);
INSERT INTO `user` VALUES (1014, '徐宇辰', 'wwwww11', '123456', '采购商', '0', '1594541150', '大型企业', 'user11@example.com', '江苏苏南精密机械有限公司', NULL, 3, NULL, 1, '郑州市金水区XX路11号', NULL, 'avatar_11.png', '2025-12-19 00:00:00', '2025-12-19 00:00:00', NULL);
INSERT INTO `user` VALUES (1015, '孙一诺', 'wwwww12', '123456', '供应商', '1', '1589459325', '小型企业', 'user12@example.com', '浙江杭州滨江数字传媒有限公司', NULL, 2, '测试1', 1, '长沙市岳麓区XX路12号', 18, 'avatar_12.png', '2025-12-10 00:00:00', '2025-12-26 16:21:36', NULL);
INSERT INTO `user` VALUES (1016, '马子轩', 'wwwww13', '123456', '采购商', '1', '1576715529', '中型企业', 'user13@example.com', '安徽黄山茶叶种植加工有限公司', NULL, 3, NULL, 1, '青岛市市南区XX路13号', NULL, 'avatar_13.png', '2025-12-01 00:00:00', '2025-12-02 00:00:00', NULL);
INSERT INTO `user` VALUES (1017, '朱雨萱', 'wwwww14', '123456', '供应商', '0', '1567221235', '大型企业', 'user14@example.com', '福建厦门鹭岛进出口贸易有限公司', NULL, 3, NULL, 1, '苏州市姑苏区XX路14号', NULL, 'avatar_14.png', '2025-12-04 00:00:00', '2025-12-12 00:00:00', NULL);
INSERT INTO `user` VALUES (1018, '胡皓轩', 'wwwww15', '123456', '供应商', '1', '1552926021', '大型企业', 'user15@example.com', '江西赣江水利工程有限公司', NULL, 3, NULL, 1, '无锡市梁溪区XX路15号', NULL, 'avatar_15.png', '2025-12-02 00:00:00', '2025-12-11 00:00:00', NULL);
INSERT INTO `user` VALUES (1019, '林若曦', 'wwwww16', '123456', '采购商', '0', '1528705403', '小型企业', 'user16@example.com', '山东青岛胶州湾冷链物流有限公司', NULL, 3, NULL, 1, '宁波市鄞州区XX路16号', NULL, 'avatar_16.png', '2025-12-20 00:00:00', '2025-12-15 00:00:00', NULL);
INSERT INTO `user` VALUES (1020, '高梓涵', 'wwwww17', '123456', '供应商', '0', '1538945822', '中型企业', 'user17@example.com', '河南中原重工机械有限公司', NULL, 3, NULL, 1, '厦门市思明区XX路17号', NULL, 'avatar_17.png', '2025-12-04 00:00:00', '2025-12-27 00:00:00', NULL);
INSERT INTO `user` VALUES (1021, '何欣妍', 'wwwww18', '123456', '采购商', '1', '1863279658', '小型企业', 'user18@example.com', '湖北武汉光谷生物医药有限公司', NULL, 3, NULL, 1, '大连市中山区XX路18号', NULL, 'avatar_18.png', '2025-12-22 00:00:00', '2025-12-15 00:00:00', NULL);
INSERT INTO `user` VALUES (1022, '郭宇泽', 'wwwww19', '123456', '供应商', '0', '1870311438', '中型企业', 'user19@example.com', '湖南长沙岳麓文化创意有限公司', NULL, 3, NULL, 1, '沈阳市和平区XX路19号', NULL, 'avatar_19.png', '2025-12-09 00:00:00', '2025-12-11 00:00:00', NULL);
INSERT INTO `user` VALUES (1023, '罗诗雨', 'wwwww20', '123456', '采购商', '1', '1781171061', '大型企业', 'user20@example.com', '广东深圳南山人工智能有限公司', NULL, 3, NULL, 1, '长春市朝阳区XX路20号', NULL, 'avatar_20.png', '2025-12-04 00:00:00', '2025-12-07 00:00:00', NULL);
INSERT INTO `user` VALUES (1024, '郑浩然', 'wwwww21', '123456', '采购商', '1', '1776447824', '小型企业', 'user21@example.com', '广西南宁东盟跨境电商有限公司', NULL, 3, NULL, 1, '哈尔滨市南岗区XX路21号', NULL, 'avatar_21.png', '2025-12-09 00:00:00', '2025-12-16 00:00:00', NULL);
INSERT INTO `user` VALUES (1025, '梁雨桐', 'wwwww22', '123456', '采购商', '0', '1766747800', '中型企业', 'user22@example.com', '海南三亚热带水果种植有限公司', NULL, 3, NULL, 1, '石家庄市长安区XX路22号', NULL, 'avatar_22.png', '2025-12-15 00:00:00', '2025-12-11 00:00:00', NULL);
INSERT INTO `user` VALUES (1026, '谢梓轩', 'wwwww23', '123456', '供应商', '1', '1752221844', '小型企业', 'user23@example.com', '四川成都天府软件技术有限公司', NULL, 3, NULL, 1, '济南市历下区XX路23号', NULL, 'avatar_23.png', '2025-12-12 00:00:00', '2025-12-08 00:00:00', NULL);
INSERT INTO `user` VALUES (1027, '宋欣怡', 'wwwww24', '123456', '供应商', '0', '1735520796', '大型企业', 'user24@example.com', '贵州遵义酱香白酒酿造有限公司', NULL, 3, NULL, 1, '合肥市包河区XX路24号', NULL, 'avatar_24.png', '2025-12-19 00:00:00', '2025-12-11 00:00:00', NULL);
INSERT INTO `user` VALUES (1028, '唐宇辰', 'wwwww25', '123456', '采购商', '1', '1723663746', '中型企业', 'user25@example.com', '云南昆明鲜花供应链有限公司', NULL, 3, NULL, 1, '福州市鼓楼区XX路25号', NULL, 'avatar_25.png', '2025-12-07 00:00:00', '2025-12-30 00:00:00', NULL);
INSERT INTO `user` VALUES (1029, '韩梦琪', 'wwwww26', '123456', '供应商', '0', '1719480708', '大型企业', 'user26@example.com', '西藏拉萨高原特产开发有限公司', NULL, 3, NULL, 1, '南宁市青秀区XX路26号', NULL, 'avatar_26.png', '2025-12-08 00:00:00', '2025-12-12 00:00:00', NULL);
INSERT INTO `user` VALUES (1030, '冯皓轩', 'wwwww27', '123456', '供应商', '0', '1705119737', '小型企业', 'user27@example.com', '陕西西安碑林文化旅游有限公司', NULL, 3, NULL, 1, '昆明市五华区XX路27号', NULL, 'avatar_27.png', '2025-12-06 00:00:00', '2025-12-13 00:00:00', NULL);
INSERT INTO `user` VALUES (1031, '于诗涵', 'wwwww28', '123456', '供应商', '1', '1308132562', '小型企业', 'user28@example.com', '甘肃兰州黄河水电设备有限公司', NULL, 3, NULL, 1, '贵阳市南明区XX路28号', NULL, 'avatar_28.png', '2025-12-28 00:00:00', '2025-12-30 00:00:00', NULL);
INSERT INTO `user` VALUES (1032, '董梓涵', 'wwwww29', '123456', '供应商', '1', '1314770338', '中型企业', 'user29@example.com', '青海西宁三江源生态科技有限公司', NULL, 3, NULL, 1, '兰州市城关区XX路29号', NULL, 'avatar_29.png', '2025-12-07 00:00:00', '2025-12-20 00:00:00', NULL);
INSERT INTO `user` VALUES (1033, '萧雨桐', 'wwwww30', '123456', '采购商', '0', '1327488562', '大型企业', 'user30@example.com', '宁夏银川贺兰山东麓葡萄酒有限公司', NULL, 3, NULL, 1, '西宁市城东区XX路30号', NULL, 'avatar_30.png', '2025-12-05 00:00:00', '2025-12-17 00:00:00', NULL);
INSERT INTO `user` VALUES (1034, '程浩然', 'wwwww31', '123456', '供应商', '1', '1802179690', '中型企业', 'user31@example.com', '新疆乌鲁木齐中亚商贸有限公司', NULL, 3, NULL, 1, '银川市兴庆区XX路31号', NULL, 'avatar_31.png', '2025-12-20 00:00:00', '2025-12-14 00:00:00', NULL);
INSERT INTO `user` VALUES (1035, '曹欣怡', 'wwwww32', '123456', '供应商', '0', '1811060448', '小型企业', 'user32@example.com', '北京亦庄生物医药研发有限公司', NULL, 3, NULL, 1, '乌鲁木齐市天山区XX路32号', NULL, 'avatar_32.png', '2025-12-22 00:00:00', '2025-12-06 00:00:00', NULL);
INSERT INTO `user` VALUES (1036, '袁宇辰', 'wwwww33', '123456', '采购商', '1', '1827179015', '大型企业', 'user33@example.com', '上海浦东张江半导体材料有限公司', NULL, 3, NULL, 1, '海口市龙华区XX路33号', NULL, 'avatar_33.png', '2025-12-01 00:00:00', '2025-12-28 00:00:00', NULL);
INSERT INTO `user` VALUES (1037, '邓梦琪', 'wwwww34', '123456', '供应商', '0', '1836506007', '小型企业', 'user34@example.com', '江苏苏州工业园区新能源科技有限公司', NULL, 3, NULL, 1, '三亚市吉阳区XX路34号', NULL, 'avatar_34.png', '2025-12-27 00:00:00', '2025-12-08 00:00:00', NULL);
INSERT INTO `user` VALUES (1038, '许皓轩', 'wwwww35', '123456', '采购商', '1', '1840060250', '中型企业', 'user35@example.com', '浙江宁波北仑港物流有限公司', NULL, 3, NULL, 1, '呼和浩特市新城区XX路35号', NULL, 'avatar_35.png', '2025-12-24 00:00:00', '2025-12-26 00:00:00', NULL);
INSERT INTO `user` VALUES (1039, '傅诗涵', 'wwwww36', '123456', '采购商', '0', '1853679571', '大型企业', 'user36@example.com', '广东广州白云机场航空货运有限公司', NULL, 3, NULL, 1, '太原市小店区XX路36号', NULL, 'avatar_36.png', '2025-12-18 00:00:00', '2025-12-22 00:00:00', NULL);
INSERT INTO `user` VALUES (1040, '沈梓涵', 'wwwww37', '123456', '采购商', '1', '1997212765', '小型企业', 'user37@example.com', '湖北襄阳汽车零部件制造有限公司', NULL, 3, NULL, 1, '西安市未央区XX路37号', NULL, 'avatar_37.png', '2025-12-11 00:00:00', '2025-12-17 00:00:00', NULL);
INSERT INTO `user` VALUES (1041, '曾雨桐', 'wwwww38', '123456', '采购商', '0', '1985933219', '个体工商户', 'user38@example.com', '湖南株洲轨道交通装备有限公司', NULL, 3, NULL, 1, '洛阳市涧西区XX路38号', NULL, 'avatar_38.png', '2025-12-02 00:00:00', '2025-12-16 00:00:00', NULL);
INSERT INTO `user` VALUES (1042, '彭浩然', 'wwwww39', '123456', '供应商', '0', '1970860382', '个体工商户', 'user39@example.com', '四川绵阳长虹电子配件有限公司', NULL, 3, NULL, 1, '开封市龙亭区XX路39号', NULL, 'avatar_39.png', '2025-12-16 00:00:00', '2025-12-06 00:00:00', NULL);
INSERT INTO `user` VALUES (1043, '吕欣怡', 'wwwww40', '123456', '供应商', '1', '1964520567', '个体工商户', 'user40@example.com', '山东烟台海洋渔业发展有限公司', NULL, 3, NULL, 1, '苏州市吴中区XX路40号', NULL, 'avatar_40.png', '2025-12-03 00:00:00', '2025-12-02 00:00:00', NULL);
INSERT INTO `user` VALUES (1044, '苏宇辰', 'wwwww41', '123456', '供应商', '1', '1950863629', '个体工商户', 'user41@example.com', '河南洛阳轴承集团有限公司', NULL, 3, NULL, 1, '扬州市广陵区XX路41号', NULL, 'avatar_41.png', '2025-12-09 00:00:00', '2025-12-03 00:00:00', NULL);
INSERT INTO `user` VALUES (1045, '卢梦琪', 'wwwww42', '123456', '采购商', '0', '1940059144', '个体工商户', 'user42@example.com', '河北唐山钢铁深加工有限公司', NULL, 3, NULL, 1, '镇江市京口区XX路42号', NULL, 'avatar_42.png', '2025-12-02 00:00:00', '2025-12-09 00:00:00', NULL);
INSERT INTO `user` VALUES (1046, '蒋皓轩', 'wwwww43', '123456', '供应商', '1', '1930332546', '个体工商户', 'user43@example.com', '安徽合肥量子科技有限公司', NULL, 3, NULL, 1, '常州市新北区XX路43号', NULL, 'avatar_43.png', '2025-12-21 00:00:00', '2025-12-07 00:00:00', NULL);
INSERT INTO `user` VALUES (1047, '蔡诗涵', 'wwwww44', '123456', '供应商', '0', '1929272703', '个体工商户', 'user44@example.com', '福建福州马尾造船有限公司', NULL, 3, NULL, 1, '徐州市云龙区XX路44号', NULL, 'avatar_44.png', '2025-12-09 00:00:00', '2025-12-20 00:00:00', NULL);
INSERT INTO `user` VALUES (1048, '贾梓涵', 'wwwww45', '123456', '供应商', '0', '1913601192', '个体工商户', 'user45@example.com', '江西景德镇陶瓷文化创意有限公司', NULL, 3, NULL, 1, '南通市崇川区XX路45号', NULL, 'avatar_45.png', '2025-12-03 00:00:00', '2025-12-10 00:00:00', NULL);
INSERT INTO `user` VALUES (1049, '丁雨桐', 'wwwww46', '123456', '供应商', '1', '1904120094', '个体工商户', 'user46@example.com', '辽宁沈阳机床设备有限公司', NULL, 3, NULL, 1, '盐城市亭湖区XX路46号', NULL, 'avatar_46.png', '2025-12-09 00:00:00', '2025-12-05 00:00:00', NULL);
INSERT INTO `user` VALUES (1050, '魏浩然', 'wwwww47', '123456', '采购商', '1', '1661495915', '个体工商户', 'user47@example.com', '吉林长春汽车改装有限公司', NULL, 3, NULL, 1, '淮安市清江浦区XX路47号', NULL, 'avatar_47.png', '2025-12-31 00:00:00', '2025-12-16 00:00:00', NULL);
INSERT INTO `user` VALUES (1051, '薛欣怡', 'wwwww48', '123456', '供应商', '0', '1659371447', '个体工商户', 'user48@example.com', '重庆涪陵榨菜集团有限公司', NULL, 3, NULL, 1, '连云港市海州区XX路48号', NULL, 'avatar_48.png', '2025-12-08 00:00:00', '2025-12-13 00:00:00', NULL);
INSERT INTO `user` VALUES (1052, '叶宇辰', 'wwwww49', '123456', '供应商', '0', '1673237436', '个体工商户', 'user49@example.com', '陕西宝鸡石油机械有限公司', NULL, 3, NULL, 1, '泰州市海陵区XX路49号', NULL, 'avatar_49.png', '2025-12-22 00:00:00', '2025-12-15 00:00:00', NULL);
INSERT INTO `user` VALUES (22342346, NULL, 'wwwww0', '$2a$10$hihWeRm00sv4YaJcZJFBbuOwaeu5sv3jOmn0DKHwm2yoR/VGtprBq', 'supplier', '1', '13200000000', NULL, '123@qq.com', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2025-12-30 10:36:54', '2025-12-30 10:36:54', NULL);

-- ----------------------------
-- Table structure for user_operation_record
-- ----------------------------
DROP TABLE IF EXISTS `user_operation_record`;
CREATE TABLE `user_operation_record`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '自增主键，唯一标识一条操作记录',
  `user_id` bigint NOT NULL COMMENT '关联用户主键（供应商ID/采购商ID等）',
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户名称',
  `operation_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '启用/禁用',
  `operation_result` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '操作结果（如：pass-通过、reject-拒绝、enabled-启用、disabled-禁用等）',
  `remark` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '操作备注/原因（拒绝、禁用时建议必填）',
  `operator_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '操作人ID（执行操作的管理员账号ID）',
  `current_credit_rating` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '当前信用等级（仅用于信用调整场景，如：AAA/AA/A/B/C）',
  `operation_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '操作时间，自动填充当前时间',
  `reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '禁用该供应商原因',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_user_id`(`user_id` ASC) USING BTREE COMMENT '索引：按用户ID查询操作记录',
  INDEX `idx_operation_type`(`operation_type` ASC) USING BTREE COMMENT '索引：按操作类型筛选记录'
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户操作记录表（记录供应商审核、状态变更、采购商信用调整等操作）' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_operation_record
-- ----------------------------
INSERT INTO `user_operation_record` VALUES (10, 1, 'zhangsan', '启用', 'PASS', '符合标准', 'admin', 'A', '2025-10-29 21:26:48', '该商家信誉良好');

SET FOREIGN_KEY_CHECKS = 1;
