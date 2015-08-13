/*
SQLyog Ultimate v11.24 (32 bit)
MySQL - 5.6.18-enterprise-commercial-advanced : Database - blog
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`blog` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;

USE `blog`;

/*Table structure for table `articles` */

DROP TABLE IF EXISTS `articles`;

CREATE TABLE `articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增',
  `title` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '标题',
  `content` text COLLATE utf8_bin NOT NULL COMMENT '内容',
  `imgPath` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT '图片',
  `label` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '标签',
  `inputTime` date DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `articles` */

insert  into `articles`(`id`,`title`,`content`,`imgPath`,`label`,`inputTime`) values (1,'我是测试','用户名：wangbintao\r\n密码： 5tg*UH3ed\r\n\r\nxct_broker_info.jar\r\nxct_manage_platform.jar\r\nxct_internal_test.jar\r\n\r\nhttp://localhost:8080/XctInternalTestWebApp/queryInfo/insert.jhtml\r\n\r\nhttp://localhost:8080/XctInternalTestWebApp/login.jsp \r\n\r\n管理平台\r\n1.券商信息管理（初始化） ------------------------\r\n时间的列宽太小，显示不完全-------------------------------\r\n按创建时间倒序排列----------------------------\r\n券商ID不可重复-----------------------\r\n\r\n3.券商基本信息\r\n新增券商窗口，改为选择券商名称，带入券商ID。-------------------\r\n按创建时间倒序排列----------------------------\r\n\r\n4.券商列表管理（券商下载）\r\n按创建时间倒序排列-----------------------\r\n券商ID不可重复--------------------------------\r\n\r\nBrokerInfoAction\r\n-----1. response、type、protocolVer没有用到，可以移除\r\n-----2. merchantBrokersTab、交易地址为空的情况下，也要继续下面的步骤，不能返回失败响应\r\n3. 失败响应参数也需要加密---------------------------------\r\n4. 两个catch可以写成一个--------------------------------\r\n------5. log.error(\"BrokerInfoAction ,getBrokerInfo Exception version =\" + version);没有错误详情\r\n\r\n\r\n\r\n券商基本信息\r\n1.功能名称显示----------------------------------\r\n2.新增券商，点确定没反应-------------------------------\r\n3.详情，是否选择营业部、是否选择地区，显示是否，不是有效无效-----------------------------\r\n4.编辑，跟新增一样，选择券商名称。--------------------------\r\n5.货币基金列表为空，也应该展示新增券商窗口，其他同理。----------------------------------\r\n券商列表管理\r\n1.修改券商ID，券商基本信息里对应的券商ID也要更改。------------------------------\r\nList<MoneyFundTabs>  mftList = super.find(\" from MoneyFundTabs as m where m.isValid = 0 \");\r\n像这种只判断一个参数的，可以用super.findBy(name, value)方法。\r\n\r\n\r\n1. 新增资讯信息，提示“修改成功”`````````````````````````````````\r\n2. 上传的图片，只显示一小条，没上传图片显示一个半截的图。``````````````````````\r\n3. 如果不存置顶顺序，显示0，建议显示空。`````````````````````````\r\n\r\n4. 建议是否有效显示在grid里，业务可能更关心这个。```````````````````````\r\n5.搜索框直接显示搜索内容``````````````````````````\r\n6. 编辑之后，图片没了。```````````````````````````````````````````\r\n信息商户管理\r\n1. 商户标识用下拉框\r\n\r\n\r\nShiro\r\n\r\n\r\n某用户多个资金账号同时在线时，上传多个资金账号的排名信息。\r\n参与总人数\r\n节假日表\r\n好友\r\n\r\n用户鑫财通账号、昵称、券商id、券商名称、资金账号、该资金账号的排名、今日盈亏比\r\n今日参加排名的盈亏比最高值和最低值，我的盈亏比\r\n近一个月的今日盈亏比，向右滑动请求更多。最多返回三个月的数据。\r\n需返回每一个开盘日的数据，某一天没有数据的，需要传日期，当日今日盈亏比为- -\r\n好友今日盈亏排行榜，头像、昵称、盈亏比、名次、评论数和赞数\r\n\r\n登录类型/\r\n1为交易密码，\r\n2为交易密码和通讯密码，\r\n3为交易密码和验证码，\r\n4为交易密码和动态口令，\r\n5为交易密码和短信口令\r\n\r\n\r\nvar loginTypeData = loginTypeFormat(data[0].data.loginType);\r\n		Ext.getCmp(\"mloginType\").setValue({\r\n			loginType:loginTypeData\r\n		});\r\n\r\npageQuery\r\n\r\n\r\n\r\n发送\r\n\r\n获取\r\n\r\n\r\n\r\n\r\no g r       y b r         w y o       g w y         b r w       r o b     \r\ng r w		o b w		  g o b       y g o			y w r		w y r	 \r\no b y		g y r		  w b y       o g w         b o g       b r g\r\n\r\n//0red 1white  2blue 3green 4orange 5yellow\r\n\r\n',NULL,'测试','2015-08-12'),(2,'我是测试','用户名：wangbintao\r\n密码： 5tg*UH3ed\r\n\r\nxct_broker_info.jar\r\nxct_manage_platform.jar\r\nxct_internal_test.jar\r\n\r\nhttp://localhost:8080/XctInternalTestWebApp/queryInfo/insert.jhtml\r\n\r\nhttp://localhost:8080/XctInternalTestWebApp/login.jsp \r\n\r\n管理平台\r\n1.券商信息管理（初始化） ------------------------\r\n时间的列宽太小，显示不完全-------------------------------\r\n按创建时间倒序排列----------------------------\r\n券商ID不可重复-----------------------\r\n\r\n3.券商基本信息\r\n新增券商窗口，改为选择券商名称，带入券商ID。-------------------\r\n按创建时间倒序排列----------------------------\r\n\r\n4.券商列表管理（券商下载）\r\n按创建时间倒序排列-----------------------\r\n券商ID不可重复--------------------------------\r\n\r\nBrokerInfoAction\r\n-----1. response、type、protocolVer没有用到，可以移除\r\n-----2. merchantBrokersTab、交易地址为空的情况下，也要继续下面的步骤，不能返回失败响应\r\n3. 失败响应参数也需要加密---------------------------------\r\n4. 两个catch可以写成一个--------------------------------\r\n------5. log.error(\"BrokerInfoAction ,getBrokerInfo Exception version =\" + version);没有错误详情\r\n\r\n\r\n\r\n券商基本信息\r\n1.功能名称显示----------------------------------\r\n2.新增券商，点确定没反应-------------------------------\r\n3.详情，是否选择营业部、是否选择地区，显示是否，不是有效无效-----------------------------\r\n4.编辑，跟新增一样，选择券商名称。--------------------------\r\n5.货币基金列表为空，也应该展示新增券商窗口，其他同理。----------------------------------\r\n券商列表管理\r\n1.修改券商ID，券商基本信息里对应的券商ID也要更改。------------------------------\r\nList<MoneyFundTabs>  mftList = super.find(\" from MoneyFundTabs as m where m.isValid = 0 \");\r\n像这种只判断一个参数的，可以用super.findBy(name, value)方法。\r\n\r\n\r\n1. 新增资讯信息，提示“修改成功”`````````````````````````````````\r\n2. 上传的图片，只显示一小条，没上传图片显示一个半截的图。``````````````````````\r\n3. 如果不存置顶顺序，显示0，建议显示空。`````````````````````````\r\n\r\n4. 建议是否有效显示在grid里，业务可能更关心这个。```````````````````````\r\n5.搜索框直接显示搜索内容``````````````````````````\r\n6. 编辑之后，图片没了。```````````````````````````````````````````\r\n信息商户管理\r\n1. 商户标识用下拉框\r\n\r\n\r\nShiro\r\n\r\n\r\n某用户多个资金账号同时在线时，上传多个资金账号的排名信息。\r\n参与总人数\r\n节假日表\r\n好友\r\n\r\n用户鑫财通账号、昵称、券商id、券商名称、资金账号、该资金账号的排名、今日盈亏比\r\n今日参加排名的盈亏比最高值和最低值，我的盈亏比\r\n近一个月的今日盈亏比，向右滑动请求更多。最多返回三个月的数据。\r\n需返回每一个开盘日的数据，某一天没有数据的，需要传日期，当日今日盈亏比为- -\r\n好友今日盈亏排行榜，头像、昵称、盈亏比、名次、评论数和赞数\r\n\r\n登录类型/\r\n1为交易密码，\r\n2为交易密码和通讯密码，\r\n3为交易密码和验证码，\r\n4为交易密码和动态口令，\r\n5为交易密码和短信口令\r\n\r\n\r\nvar loginTypeData = loginTypeFormat(data[0].data.loginType);\r\n		Ext.getCmp(\"mloginType\").setValue({\r\n			loginType:loginTypeData\r\n		});\r\n\r\npageQuery\r\n\r\n\r\n\r\n发送\r\n\r\n获取\r\n\r\n\r\n\r\n\r\no g r       y b r         w y o       g w y         b r w       r o b     \r\ng r w		o b w		  g o b       y g o			y w r		w y r	 \r\no b y		g y r		  w b y       o g w         b o g       b r g\r\n\r\n//0red 1white  2blue 3green 4orange 5yellow\r\n\r\n',NULL,'啊','2015-08-12');

/*Table structure for table `menus` */

DROP TABLE IF EXISTS `menus`;

CREATE TABLE `menus` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `menuName` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '菜单名',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `menus` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
