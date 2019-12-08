DROP TABLE IF EXISTS data_dict;
CREATE TABLE data_dict (
  id int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  enum_value varchar(50) NOT NULL DEFAULT '' COMMENT '大类枚举值',
  display_name varchar(50) NOT NULL DEFAULT '' COMMENT '展示名',
  sort int(11) NOT NULL DEFAULT '-1' COMMENT '排序值',
  memo varchar(50) DEFAULT '' COMMENT '备注',
  value varchar(50) NOT NULL DEFAULT '' COMMENT '小类数值',
  deleted tinyint(11) NOT NULL DEFAULT '0' COMMENT '是否删除',
  create_time datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
  PRIMARY KEY (id) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COMMENT='data_dict';