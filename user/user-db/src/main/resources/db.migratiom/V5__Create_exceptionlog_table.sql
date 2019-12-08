DROP TABLE IF EXISTS exception_log;
CREATE TABLE exception_log (
  id int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  trace_id varchar(64) NOT NULL COMMENT '链路追踪编号\n     *\n     * 一般来说，通过链路追踪编号，可以将访问日志，错误日志，链路追踪日志，logger 打印日志等，结合在一起，从而进行排错。',
  user_id int(11) NOT NULL COMMENT '用户编号.\n     *\n     * 当管理员为空时，该值为 {@link cn.iocoder.mall.admin.api.dto.AccessLogAddDTO#USER_ID_NULL}',
  user_type tinyint(4) NOT NULL COMMENT '用户类型',
  application_name varchar(50) NOT NULL COMMENT '应用名\n     *\n     * 目前读取 spring.application.name',
  uri varchar(4096) NOT NULL COMMENT '访问地址',
  query_string varchar(4096) NOT NULL COMMENT '参数',
  method varchar(50) NOT NULL COMMENT 'http 方法',
  user_agent varchar(1024) NOT NULL COMMENT 'userAgent',
  ip varchar(50) NOT NULL COMMENT 'ip',
  exception_time datetime NOT NULL COMMENT '异常发生时间',
  exception_name varchar(128) NOT NULL DEFAULT '' COMMENT '异常名\n     *\n     * {@link Throwable#getClass()} 的类全名',
  exception_message text NOT NULL COMMENT '异常导致的消息\n     *\n     * {@link cn.iocoder.common.framework.util.ExceptionUtil#getMessage(Throwable)}',
  exception_root_cause_message text NOT NULL COMMENT '异常导致的根消息\n     *\n     * {@link cn.iocoder.common.framework.util.ExceptionUtil#getRootCauseMessage(Throwable)}',
  exception_stack_trace text NOT NULL COMMENT '异常的栈轨迹\n     *\n     * {@link cn.iocoder.common.framework.util.ExceptionUtil#getServiceException(Exception)}',
  exception_class_name varchar(512) NOT NULL COMMENT '异常发生的类全名\n     *\n     * {@link StackTraceElement#getClassName()}',
  exception_file_name varchar(512) NOT NULL COMMENT '异常发生的类文件\n     *\n     * {@link StackTraceElement#getFileName()}',
  exception_method_name varchar(512) NOT NULL COMMENT '异常发生的方法名\n     *\n     * {@link StackTraceElement#getMethodName()}',
  exception_line_number int(11) NOT NULL COMMENT '异常发生的方法所在行\n     *\n     * {@link StackTraceElement#getLineNumber()}',
  create_time datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=549 DEFAULT CHARSET=utf8mb4 COMMENT='exception_log';