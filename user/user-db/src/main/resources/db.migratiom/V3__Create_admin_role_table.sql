DROP TABLE IF EXISTS admin_role;
CREATE TABLE admin_role (
  id int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  admin_id int(11) NOT NULL COMMENT '管理员编号(外键：{@link AdminDO}',
  role_id int(11) NOT NULL COMMENT '角色编号(外键：{@link RoleDO}',
  create_time datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  update_time datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  deleted bit(1) DEFAULT b'0' COMMENT '是否删除',
  PRIMARY KEY (id) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COMMENT='admin_role_d_o';