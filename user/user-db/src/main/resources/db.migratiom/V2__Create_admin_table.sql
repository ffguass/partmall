DROP TABLE IF EXISTS admin;
CREATE TABLE admin (
  id int(11) NOT NULL AUTO_INCREMENT COMMENT '管理员编号',
  username varchar(16) NOT NULL COMMENT '登陆账号',
  nickname varchar(10) NOT NULL COMMENT '昵称',
  password varchar(32) NOT NULL COMMENT '密码\n     *\n     * TODO 芋艿 暂时最简单的 MD5',
  status tinyint(11) NOT NULL COMMENT '账号状态',
  deptment_id int(11) DEFAULT 0 NOT NULL COMMENT '部门id',
  create_time datetime NOT NULL COMMENT '创建时间',
  update_time datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  deleted bit(1) DEFAULT NULL,
  PRIMARY KEY (id) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COMMENT='admin_d_o';