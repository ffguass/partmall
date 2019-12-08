DROP TABLE IF EXISTS deptment;
CREATE TABLE deptment (
  id int(11) NOT NULL AUTO_INCREMENT COMMENT '部门主键id',
  name varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '部门名称',
  sort int(11) NOT NULL DEFAULT '0' COMMENT '排序字段',
  pid int(11) NOT NULL DEFAULT '0' COMMENT '父级部门id',
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  deleted bit(1) NOT NULL DEFAULT b'0' COMMENT '删除标记',
  PRIMARY KEY (id),
  UNIQUE KEY deptment_id_uindex (id)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
