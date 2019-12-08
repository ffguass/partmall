DROP TABLE IF EXISTS oauth2_access_token;
CREATE TABLE oauth2_access_token (
  id varchar(32) NOT NULL,
  refresh_token varchar(32) NOT NULL,
  user_id int(11) DEFAULT NULL COMMENT '用户编号',
  user_type tinyint(255) DEFAULT NULL COMMENT '用户类型',
  valid tinyint(4) DEFAULT NULL,
  expires_time datetime NOT NULL,
  create_time datetime DEFAULT CURRENT_TIMESTAMP,
  update_time datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
  PRIMARY KEY (id) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;