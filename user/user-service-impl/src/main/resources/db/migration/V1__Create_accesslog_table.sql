SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS access_log;
CREATE TABLE access_log (
  id int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  trace_id varchar(64) NOT NULL COMMENT '链路追踪编号',
  user_id int(11) NOT NULL DEFAULT '-1' COMMENT '用户编号.',
  user_type tinyint(4) DEFAULT NULL COMMENT '用户类型',
  application_name varchar(50) DEFAULT NULL COMMENT '应用名',
  uri varchar(4096) NOT NULL DEFAULT '' COMMENT '访问地址',
  query_string varchar(4096) NOT NULL DEFAULT '' COMMENT '参数',
  method varchar(50) NOT NULL DEFAULT '' COMMENT 'http 方法',
  user_agent varchar(1024) NOT NULL DEFAULT '' COMMENT 'userAgent',
  ip varchar(50) NOT NULL DEFAULT '' COMMENT 'ip',
  start_time datetime NOT NULL COMMENT '请求时间',
  response_time int(11) NOT NULL COMMENT '响应时长 -- 毫秒级',
  error_code int(11) NOT NULL COMMENT '错误码',
  error_message varchar(512) DEFAULT NULL COMMENT '错误提示',
  create_time datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (id) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=28417 DEFAULT CHARSET=utf8mb4 COMMENT='admin_access_log';