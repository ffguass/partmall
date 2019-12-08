DROP TABLE IF EXISTS sms_sign;
CREATE TABLE sms_sign (
  id int(11) NOT NULL AUTO_INCREMENT,
  sign varchar(20) NOT NULL COMMENT '签名 如： 【阿里云】',
  platform smallint(2) DEFAULT NULL COMMENT '短信平台',
  apply_status smallint(2) NOT NULL COMMENT '审核状态',
  apply_message varchar(250) DEFAULT NULL COMMENT '审核信息',
  deleted smallint(2) NOT NULL COMMENT '删除状态',
  update_time datetime DEFAULT NULL COMMENT '更新时间',
  create_time datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;