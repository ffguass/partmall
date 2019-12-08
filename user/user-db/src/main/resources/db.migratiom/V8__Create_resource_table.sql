DROP TABLE IF EXISTS resource;
CREATE TABLE resource (
  id int(11) NOT NULL AUTO_INCREMENT COMMENT '资源编号',
  type int(11) NOT NULL DEFAULT '-1' COMMENT '资源类型',
  sort int(11) NOT NULL DEFAULT '-1' COMMENT '排序',
  display_name varchar(50) NOT NULL DEFAULT '' COMMENT '展示名',
  pid int(11) NOT NULL DEFAULT '-1' COMMENT '父级资源编号(外键：{@link ResourceDO#id})',
  handler varchar(50) DEFAULT '' COMMENT '操作\n     *\n     * 当资源类型为【菜单】时，handler 配置为界面 URL ，或者前端组件名\n     * 当资源类型为【操作】时，handler 配置为后端 URL 。举个例子，如果有一个「创建管理员」的表单，那么前端界面上的按钮可以根据这个 url 判断是否展示，后端接收到该 url 的请求时会判断是否有权限。',
  icon varchar(50) DEFAULT NULL COMMENT '图标',
  permissions varchar(255) DEFAULT NULL COMMENT '权限标识数组，使用逗号分隔',
  create_time datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  update_time datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  deleted bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (id) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COMMENT='resource_d_o';