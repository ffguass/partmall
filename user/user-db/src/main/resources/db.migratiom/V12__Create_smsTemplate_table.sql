DROP TABLE IF EXISTS sms_template;
CREATE TABLE sms_template (
  id int(11) NOT NULL AUTO_INCREMENT,
  sms_sign_id int(11) NOT NULL COMMENT '短信签名id',
  template_code varchar(50) NOT NULL COMMENT '模板code，第三方 code',
  template text NOT NULL COMMENT '短信模板',
  platform smallint(2) NOT NULL COMMENT '平台',
  sms_type smallint(2) NOT NULL COMMENT '短信类型：通知、验证码、营销',
  apply_status smallint(2) NOT NULL COMMENT '审核状态',
  apply_message varchar(250) DEFAULT NULL COMMENT '审核信息',
  deleted smallint(2) NOT NULL COMMENT '是否删除',
  update_time datetime DEFAULT NULL COMMENT '更新时间',
  create_time datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;