DROP TABLE IF EXISTS `t_order`;

CREATE TABLE `t_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT '姓名',
  `tel` varchar(20) DEFAULT NULL COMMENT '电话',
  `order_time` datetime DEFAULT NULL COMMENT '预约时间',
  `create_time` datetime DEFAULT NULL,
  `status` int(2) DEFAULT NULL COMMENT '状态：1-有效；0-无效',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='预约表';