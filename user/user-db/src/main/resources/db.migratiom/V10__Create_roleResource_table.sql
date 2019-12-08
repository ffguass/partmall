DROP TABLE IF EXISTS role_resource;
CREATE TABLE role_resource (
  id int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  role_id int(11) NOT NULL DEFAULT '-1' COMMENT '角色编号(外键：{@link RoleDO}',
  resource_id int(11) NOT NULL DEFAULT '-1' COMMENT '资源编号',
  create_time datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  update_time datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  deleted bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  PRIMARY KEY (id) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=667 DEFAULT CHARSET=utf8mb4 COMMENT='role_resource_d_o';