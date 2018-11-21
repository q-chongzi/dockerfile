DELETE FROM BUDDLE WHERE IDENTIFIER='exchange';

DELETE FROM RESOURCE_DECOMPOSING; 

DELETE FROM RESOURCE_CONNECTION; 

INSERT INTO BUDDLE (CODE,IS_ACTIVE,CHANGE_FROM,CHANGE_INDEX,CHANGE_NUMBER,SECRET,SECRECY,BUILDER,OWNER,START_DATE,END_DATE,IDENTIFIER,NAME,IS_PERMIT,IS_HOME,IS_UPDATING,TITLE,VALIDATOR,DESCRIPTION,IS_RUNNING,TIMING_YEAR,TIMING_MONTH,TIMING_DAY,TIMING_HOUR,TIMING_MINUTE,IS_SYNCED_DSB,SYNC_DSB_REASON,SYNC_STATUS,CONNECTION_CODE)   VALUES ('1512366479665001' , 'true' , '' , 0 , 0 , 0 , 0 , 'admin' , 'admin' , 1512366479650 , 0 , 'exchange' , '数据融合' , 'true' , 'false' , '' , '' , '' , '数字融合应用工程，用于提供所有功能配置、运行框架。' , '' , '' , '' , '' , '' , '' , '' , '' , '' , 'spruce-con-2010001');

INSERT INTO RESOURCE_DECOMPOSING (CODE,IS_ACTIVE,CHANGE_FROM,CHANGE_INDEX,CHANGE_NUMBER,SECRET,SECRECY,BUILDER,OWNER,START_DATE,END_DATE,IDENTIFIER,NAME,TYPE,DRIVER,HOST,PORT,INSTANCE,PATTERN,ACCOUNT,PASSWORD,MAX_NUMBER,TIMEOUT,TEMPLATE,IS_LOCKED,BUFFER_POOL_SIZE,YEAR_ID,MONTH_ID,DAY_ID,CONNECTION_CODE)   VALUES ('1487905827435001' , 'true' , '1501136777608001' , 0 , 8 , 0 , 7 , 'admin' , 'admin' , 0 , 0 , 'infoinge.192.168.0.109' , '192.168.0.109' , 'Hinge' , '' , '192.168.0.109' , '8081' , '' , '' , '' , '' , '0' , '0' , 'http://192.168.0.109:8081/' , 'false' , 0 , 0 , 0 , 0 , 'spruce-con-2010001');

INSERT INTO RESOURCE_DECOMPOSING (CODE,IS_ACTIVE,CHANGE_FROM,CHANGE_INDEX,CHANGE_NUMBER,SECRET,SECRECY,BUILDER,OWNER,START_DATE,END_DATE,IDENTIFIER,NAME,TYPE,DRIVER,HOST,PORT,INSTANCE,PATTERN,ACCOUNT,PASSWORD,MAX_NUMBER,TIMEOUT,TEMPLATE,IS_LOCKED,BUFFER_POOL_SIZE,YEAR_ID,MONTH_ID,DAY_ID,CONNECTION_CODE)   VALUES ('coop-con-1000001' , 'true' , '1501567700814001' , 0 , 2 , 0 , 7 , 'admin' , 'admin' , 0 , 0 , 'coop.share.coparameter' , '股金参数' , 'DB' , 'com.mysql.jdbc.Driver' , '192.168.0.109' , '3306' , 'coparameter' , 'coparameter' , 'infoinge' , '123456' , '200' , '20000' , 'jdbc:mysql://HOST:PORT/INSTANCE' , 'false' , 0 , 0 , 0 , 0 , 'spruce-con-2010001');

INSERT INTO RESOURCE_DECOMPOSING (CODE,IS_ACTIVE,CHANGE_FROM,CHANGE_INDEX,CHANGE_NUMBER,SECRET,SECRECY,BUILDER,OWNER,START_DATE,END_DATE,IDENTIFIER,NAME,TYPE,DRIVER,HOST,PORT,INSTANCE,PATTERN,ACCOUNT,PASSWORD,MAX_NUMBER,TIMEOUT,TEMPLATE,IS_LOCKED,BUFFER_POOL_SIZE,YEAR_ID,MONTH_ID,DAY_ID,CONNECTION_CODE)   VALUES ('coop-con-1000002' , 'true' , '1501567700814001' , 0 , 2 , 0 , 7 , 'admin' , 'admin' , 0 , 0 , 'coop.share.comember' , '股金社员' , 'DB' , 'com.mysql.jdbc.Driver' , '192.168.0.109' , '3306' , 'comember' , 'comember' , 'infoinge' , '123456' , '200' , '20000' , 'jdbc:mysql://HOST:PORT/INSTANCE' , 'false' , 0 , 0 , 0 , 0 , 'spruce-con-2010001');

INSERT INTO RESOURCE_DECOMPOSING (CODE,IS_ACTIVE,CHANGE_FROM,CHANGE_INDEX,CHANGE_NUMBER,SECRET,SECRECY,BUILDER,OWNER,START_DATE,END_DATE,IDENTIFIER,NAME,TYPE,DRIVER,HOST,PORT,INSTANCE,PATTERN,ACCOUNT,PASSWORD,MAX_NUMBER,TIMEOUT,TEMPLATE,IS_LOCKED,BUFFER_POOL_SIZE,YEAR_ID,MONTH_ID,DAY_ID,CONNECTION_CODE)   VALUES ('coop-con-1000003' , 'true' , '1501567700814001' , 0 , 2 , 0 , 7 , 'admin' , 'admin' , 0 , 0 , 'coop.share.cobusiness' , '股金业务' , 'DB' , 'com.mysql.jdbc.Driver' , '192.168.0.109' , '3306' , 'cobusiness' , 'cobusiness' , 'infoinge' , '123456' , '200' , '20000' , 'jdbc:mysql://HOST:PORT/INSTANCE' , 'false' , 0 , 0 , 0 , 0 , 'spruce-con-2010001');

INSERT INTO RESOURCE_DECOMPOSING (CODE,IS_ACTIVE,CHANGE_FROM,CHANGE_INDEX,CHANGE_NUMBER,SECRET,SECRECY,BUILDER,OWNER,START_DATE,END_DATE,IDENTIFIER,NAME,TYPE,DRIVER,HOST,PORT,INSTANCE,PATTERN,ACCOUNT,PASSWORD,MAX_NUMBER,TIMEOUT,TEMPLATE,IS_LOCKED,BUFFER_POOL_SIZE,YEAR_ID,MONTH_ID,DAY_ID,CONNECTION_CODE)   VALUES ('journal-con-1000001' , 'true' , '1493361784678001' , 0 , 6 , 0 , 7 , 'admin' , 'admin' , 0 , 0 , 'cludove.crest.journal' , '系统日志' , 'DB' , 'com.mysql.jdbc.Driver' , '192.168.0.109' , '3306' , 'journal' , 'journal' , 'infoinge' , '123456' , '200' , '20000' , 'jdbc:mysql://HOST:PORT/INSTANCE' , 'false' , 0 , 0 , 0 , 0 , 'journal-con-2010001');

INSERT INTO RESOURCE_DECOMPOSING (CODE,IS_ACTIVE,CHANGE_FROM,CHANGE_INDEX,CHANGE_NUMBER,SECRET,SECRECY,BUILDER,OWNER,START_DATE,END_DATE,IDENTIFIER,NAME,TYPE,DRIVER,HOST,PORT,INSTANCE,PATTERN,ACCOUNT,PASSWORD,MAX_NUMBER,TIMEOUT,TEMPLATE,IS_LOCKED,BUFFER_POOL_SIZE,YEAR_ID,MONTH_ID,DAY_ID,CONNECTION_CODE)   VALUES ('spruce-con-1000001' , 'true' , '' , 0 , 0 , 0 , 7 , 'admin' , 'admin' , 0 , 0 , 'cludove.crest.spruce' , '系统运行' , 'DB' , 'com.mysql.jdbc.Driver' , '192.168.0.109' , '3306' , 'hinge' , 'hinge' , 'infoinge' , '123456' , '200' , '20000' , 'jdbc:mysql://HOST:PORT/INSTANCE' , 'false' , 0 , 0 , 0 , 0 , 'spruce-con-2010001');

INSERT INTO RESOURCE_DECOMPOSING (CODE,IS_ACTIVE,CHANGE_FROM,CHANGE_INDEX,CHANGE_NUMBER,SECRET,SECRECY,BUILDER,OWNER,START_DATE,END_DATE,IDENTIFIER,NAME,TYPE,DRIVER,HOST,PORT,INSTANCE,PATTERN,ACCOUNT,PASSWORD,MAX_NUMBER,TIMEOUT,TEMPLATE,IS_LOCKED,BUFFER_POOL_SIZE,YEAR_ID,MONTH_ID,DAY_ID,CONNECTION_CODE)   VALUES ('spruce-con-1000002' , 'true' , '1501567700814001' , 0 , 2 , 0 , 7 , 'admin' , 'admin' , 0 , 0 , 'cludove.spruce.lock' , '组织机构' , 'DB' , 'com.mysql.jdbc.Driver' , '192.168.0.109' , '3306' , 'lock' , 'lock' , 'infoinge' , '123456' , '200' , '20000' , 'jdbc:mysql://HOST:PORT/INSTANCE' , 'false' , 0 , 0 , 0 , 0 , 'spruce-con-2010001');

INSERT INTO RESOURCE_CONNECTION (CODE,IS_ACTIVE,CHANGE_FROM,CHANGE_INDEX,CHANGE_NUMBER,SECRET,SECRECY,BUILDER,OWNER,START_DATE,END_DATE,IDENTIFIER,NAME,TYPE,DRIVER,HOST,PORT,INSTANCE,PATTERN,ACCOUNT,PASSWORD,MAX_NUMBER,TIMEOUT,TEMPLATE,IS_LOCKED,IS_DSB,BUFFER_POOL_SIZE,DECOMPOSING_CODE,REG_STATUS,REG_REASON,CONNECTION_CODE)   VALUES ('1487918907372001' , 'true' , '1503652531758001' , 0 , 236 , 0 , 7 , 'admin' , 'admin' , 0 , 0 , 'infoinge.192.168.0.109' , '192.168.0.109' , 'Hinge' , '' , '192.168.0.109' , '8081' , '' , '' , '' , '' , '0' , '0' , 'http://192.168.0.109:8081/' , 'false' , '' , 0 , '1487905827435001' , '' , '' , 'spruce-con-2010001');

INSERT INTO RESOURCE_CONNECTION (CODE,IS_ACTIVE,CHANGE_FROM,CHANGE_INDEX,CHANGE_NUMBER,SECRET,SECRECY,BUILDER,OWNER,START_DATE,END_DATE,IDENTIFIER,NAME,TYPE,DRIVER,HOST,PORT,INSTANCE,PATTERN,ACCOUNT,PASSWORD,MAX_NUMBER,TIMEOUT,TEMPLATE,IS_LOCKED,IS_DSB,BUFFER_POOL_SIZE,DECOMPOSING_CODE,REG_STATUS,REG_REASON,CONNECTION_CODE)   VALUES ('coop-con-2010001' , 'true' , '' , 0 , 0 , 0 , 7 , 'admin' , 'admin' , 0 , 0 , 'coop.share.coparameter' , '股金参数' , 'DB' , 'com.mysql.jdbc.Driver' , '192.168.0.109' , '3306' , 'coparameter' , 'coparameter' , 'infoinge' , '123456' , '20' , '20000' , 'jdbc:mysql://HOST:PORT/INSTANCE' , 'false' , '' , 0 , 'coop-con-1000001' , '' , '' , 'spruce-con-2010001');

INSERT INTO RESOURCE_CONNECTION (CODE,IS_ACTIVE,CHANGE_FROM,CHANGE_INDEX,CHANGE_NUMBER,SECRET,SECRECY,BUILDER,OWNER,START_DATE,END_DATE,IDENTIFIER,NAME,TYPE,DRIVER,HOST,PORT,INSTANCE,PATTERN,ACCOUNT,PASSWORD,MAX_NUMBER,TIMEOUT,TEMPLATE,IS_LOCKED,IS_DSB,BUFFER_POOL_SIZE,DECOMPOSING_CODE,REG_STATUS,REG_REASON,CONNECTION_CODE)   VALUES ('coop-con-2020001' , 'true' , '' , 0 , 0 , 0 , 7 , 'admin' , 'admin' , 0 , 0 , 'coop.share.comember' , '股金社员' , 'DB' , 'com.mysql.jdbc.Driver' , '192.168.0.109' , '3306' , 'comember1' , 'comember1' , 'infoinge' , '123456' , '20' , '20000' , 'jdbc:mysql://HOST:PORT/INSTANCE' , 'false' , '' , 0 , 'coop-con-1000002' , '' , '' , 'spruce-con-2010001');

INSERT INTO RESOURCE_CONNECTION (CODE,IS_ACTIVE,CHANGE_FROM,CHANGE_INDEX,CHANGE_NUMBER,SECRET,SECRECY,BUILDER,OWNER,START_DATE,END_DATE,IDENTIFIER,NAME,TYPE,DRIVER,HOST,PORT,INSTANCE,PATTERN,ACCOUNT,PASSWORD,MAX_NUMBER,TIMEOUT,TEMPLATE,IS_LOCKED,IS_DSB,BUFFER_POOL_SIZE,DECOMPOSING_CODE,REG_STATUS,REG_REASON,CONNECTION_CODE)   VALUES ('coop-con-2020002' , 'true' , '' , 0 , 0 , 0 , 7 , 'admin' , 'admin' , 0 , 0 , 'coop.share.comember' , '股金社员' , 'DB' , 'com.mysql.jdbc.Driver' , '192.168.0.109' , '3306' , 'comember2' , 'comember2' , 'infoinge' , '123456' , '20' , '20000' , 'jdbc:mysql://HOST:PORT/INSTANCE' , 'false' , '' , 0 , 'coop-con-1000002' , '' , '' , 'spruce-con-2010001');

INSERT INTO RESOURCE_CONNECTION (CODE,IS_ACTIVE,CHANGE_FROM,CHANGE_INDEX,CHANGE_NUMBER,SECRET,SECRECY,BUILDER,OWNER,START_DATE,END_DATE,IDENTIFIER,NAME,TYPE,DRIVER,HOST,PORT,INSTANCE,PATTERN,ACCOUNT,PASSWORD,MAX_NUMBER,TIMEOUT,TEMPLATE,IS_LOCKED,IS_DSB,BUFFER_POOL_SIZE,DECOMPOSING_CODE,REG_STATUS,REG_REASON,CONNECTION_CODE)   VALUES ('coop-con-2020003' , 'true' , '' , 0 , 0 , 0 , 7 , 'admin' , 'admin' , 0 , 0 , 'coop.share.comember' , '股金社员' , 'DB' , 'com.mysql.jdbc.Driver' , '192.168.0.109' , '3306' , 'comember3' , 'comember3' , 'infoinge' , '123456' , '20' , '20000' , 'jdbc:mysql://HOST:PORT/INSTANCE' , 'false' , '' , 0 , 'coop-con-1000002' , '' , '' , 'spruce-con-2010001');

INSERT INTO RESOURCE_CONNECTION (CODE,IS_ACTIVE,CHANGE_FROM,CHANGE_INDEX,CHANGE_NUMBER,SECRET,SECRECY,BUILDER,OWNER,START_DATE,END_DATE,IDENTIFIER,NAME,TYPE,DRIVER,HOST,PORT,INSTANCE,PATTERN,ACCOUNT,PASSWORD,MAX_NUMBER,TIMEOUT,TEMPLATE,IS_LOCKED,IS_DSB,BUFFER_POOL_SIZE,DECOMPOSING_CODE,REG_STATUS,REG_REASON,CONNECTION_CODE)   VALUES ('coop-con-2030001' , 'true' , '' , 0 , 0 , 0 , 7 , 'admin' , 'admin' , 0 , 0 , 'coop.share.cobusiness' , '股金业务' , 'DB' , 'com.mysql.jdbc.Driver' , '192.168.0.109' , '3306' , 'cobusiness1' , 'cobusiness1' , 'infoinge' , '123456' , '20' , '20000' , 'jdbc:mysql://HOST:PORT/INSTANCE' , 'false' , '' , 0 , 'coop-con-1000003' , '' , '' , 'spruce-con-2010001');

INSERT INTO RESOURCE_CONNECTION (CODE,IS_ACTIVE,CHANGE_FROM,CHANGE_INDEX,CHANGE_NUMBER,SECRET,SECRECY,BUILDER,OWNER,START_DATE,END_DATE,IDENTIFIER,NAME,TYPE,DRIVER,HOST,PORT,INSTANCE,PATTERN,ACCOUNT,PASSWORD,MAX_NUMBER,TIMEOUT,TEMPLATE,IS_LOCKED,IS_DSB,BUFFER_POOL_SIZE,DECOMPOSING_CODE,REG_STATUS,REG_REASON,CONNECTION_CODE)   VALUES ('coop-con-2030002' , 'true' , '' , 0 , 0 , 0 , 7 , 'admin' , 'admin' , 0 , 0 , 'coop.share.cobusiness' , '股金业务' , 'DB' , 'com.mysql.jdbc.Driver' , '192.168.0.109' , '3306' , 'cobusiness2' , 'cobusiness2' , 'infoinge' , '123456' , '20' , '20000' , 'jdbc:mysql://HOST:PORT/INSTANCE' , 'false' , '' , 0 , 'coop-con-1000003' , '' , '' , 'spruce-con-2010001');

INSERT INTO RESOURCE_CONNECTION (CODE,IS_ACTIVE,CHANGE_FROM,CHANGE_INDEX,CHANGE_NUMBER,SECRET,SECRECY,BUILDER,OWNER,START_DATE,END_DATE,IDENTIFIER,NAME,TYPE,DRIVER,HOST,PORT,INSTANCE,PATTERN,ACCOUNT,PASSWORD,MAX_NUMBER,TIMEOUT,TEMPLATE,IS_LOCKED,IS_DSB,BUFFER_POOL_SIZE,DECOMPOSING_CODE,REG_STATUS,REG_REASON,CONNECTION_CODE)   VALUES ('coop-con-2030003' , 'true' , '' , 0 , 0 , 0 , 7 , 'admin' , 'admin' , 0 , 0 , 'coop.share.cobusiness' , '股金业务' , 'DB' , 'com.mysql.jdbc.Driver' , '192.168.0.109' , '3306' , 'cobusiness3' , 'cobusiness3' , 'infoinge' , '123456' , '20' , '20000' , 'jdbc:mysql://HOST:PORT/INSTANCE' , 'false' , '' , 0 , 'coop-con-1000003' , '' , '' , 'spruce-con-2010001');

INSERT INTO RESOURCE_CONNECTION (CODE,IS_ACTIVE,CHANGE_FROM,CHANGE_INDEX,CHANGE_NUMBER,SECRET,SECRECY,BUILDER,OWNER,START_DATE,END_DATE,IDENTIFIER,NAME,TYPE,DRIVER,HOST,PORT,INSTANCE,PATTERN,ACCOUNT,PASSWORD,MAX_NUMBER,TIMEOUT,TEMPLATE,IS_LOCKED,IS_DSB,BUFFER_POOL_SIZE,DECOMPOSING_CODE,REG_STATUS,REG_REASON,CONNECTION_CODE)   VALUES ('coop-con-2030004' , 'true' , '' , 0 , 0 , 0 , 7 , 'admin' , 'admin' , 0 , 0 , 'coop.share.cobusiness' , '股金业务' , 'DB' , 'com.mysql.jdbc.Driver' , '192.168.0.109' , '3306' , 'cobusiness4' , 'cobusiness4' , 'infoinge' , '123456' , '20' , '20000' , 'jdbc:mysql://HOST:PORT/INSTANCE' , 'false' , '' , 0 , 'coop-con-1000003' , '' , '' , 'spruce-con-2010001');

INSERT INTO RESOURCE_CONNECTION (CODE,IS_ACTIVE,CHANGE_FROM,CHANGE_INDEX,CHANGE_NUMBER,SECRET,SECRECY,BUILDER,OWNER,START_DATE,END_DATE,IDENTIFIER,NAME,TYPE,DRIVER,HOST,PORT,INSTANCE,PATTERN,ACCOUNT,PASSWORD,MAX_NUMBER,TIMEOUT,TEMPLATE,IS_LOCKED,IS_DSB,BUFFER_POOL_SIZE,DECOMPOSING_CODE,REG_STATUS,REG_REASON,CONNECTION_CODE)   VALUES ('coop-con-2030005' , 'true' , '' , 0 , 0 , 0 , 7 , 'admin' , 'admin' , 0 , 0 , 'coop.share.cobusiness' , '股金业务' , 'DB' , 'com.mysql.jdbc.Driver' , '192.168.0.109' , '3306' , 'cobusiness5' , 'cobusiness5' , 'infoinge' , '123456' , '20' , '20000' , 'jdbc:mysql://HOST:PORT/INSTANCE' , 'false' , '' , 0 , 'coop-con-1000003' , '' , '' , 'spruce-con-2010001');

INSERT INTO RESOURCE_CONNECTION (CODE,IS_ACTIVE,CHANGE_FROM,CHANGE_INDEX,CHANGE_NUMBER,SECRET,SECRECY,BUILDER,OWNER,START_DATE,END_DATE,IDENTIFIER,NAME,TYPE,DRIVER,HOST,PORT,INSTANCE,PATTERN,ACCOUNT,PASSWORD,MAX_NUMBER,TIMEOUT,TEMPLATE,IS_LOCKED,IS_DSB,BUFFER_POOL_SIZE,DECOMPOSING_CODE,REG_STATUS,REG_REASON,CONNECTION_CODE)   VALUES ('coop-con-2030006' , 'true' , '' , 0 , 0 , 0 , 7 , 'admin' , 'admin' , 0 , 0 , 'coop.share.cobusiness' , '股金业务' , 'DB' , 'com.mysql.jdbc.Driver' , '192.168.0.109' , '3306' , 'cobusiness6' , 'cobusiness6' , 'infoinge' , '123456' , '20' , '20000' , 'jdbc:mysql://HOST:PORT/INSTANCE' , 'false' , '' , 0 , 'coop-con-1000003' , '' , '' , 'spruce-con-2010001');

INSERT INTO RESOURCE_CONNECTION (CODE,IS_ACTIVE,CHANGE_FROM,CHANGE_INDEX,CHANGE_NUMBER,SECRET,SECRECY,BUILDER,OWNER,START_DATE,END_DATE,IDENTIFIER,NAME,TYPE,DRIVER,HOST,PORT,INSTANCE,PATTERN,ACCOUNT,PASSWORD,MAX_NUMBER,TIMEOUT,TEMPLATE,IS_LOCKED,IS_DSB,BUFFER_POOL_SIZE,DECOMPOSING_CODE,REG_STATUS,REG_REASON,CONNECTION_CODE)   VALUES ('coop-con-2030007' , 'true' , '' , 0 , 0 , 0 , 7 , 'admin' , 'admin' , 0 , 0 , 'coop.share.cobusiness' , '股金业务' , 'DB' , 'com.mysql.jdbc.Driver' , '192.168.0.109' , '3306' , 'cobusiness7' , 'cobusiness7' , 'infoinge' , '123456' , '20' , '20000' , 'jdbc:mysql://HOST:PORT/INSTANCE' , 'false' , '' , 0 , 'coop-con-1000003' , '' , '' , 'spruce-con-2010001');

INSERT INTO RESOURCE_CONNECTION (CODE,IS_ACTIVE,CHANGE_FROM,CHANGE_INDEX,CHANGE_NUMBER,SECRET,SECRECY,BUILDER,OWNER,START_DATE,END_DATE,IDENTIFIER,NAME,TYPE,DRIVER,HOST,PORT,INSTANCE,PATTERN,ACCOUNT,PASSWORD,MAX_NUMBER,TIMEOUT,TEMPLATE,IS_LOCKED,IS_DSB,BUFFER_POOL_SIZE,DECOMPOSING_CODE,REG_STATUS,REG_REASON,CONNECTION_CODE)   VALUES ('journal-con-2010001' , 'true' , '' , 0 , 0 , 0 , 7 , 'admin' , 'admin' , 0 , 0 , 'cludove.crest.journal' , '系统日志' , 'DB' , 'com.mysql.jdbc.Driver' , '192.168.0.109' , '3306' , 'journal1' , 'journal1' , 'infoinge' , '123456' , '20' , '20000' , 'jdbc:mysql://HOST:PORT/INSTANCE' , 'false' , '' , 0 , 'journal-con-1000001' , '' , '' , 'journal-con-2010001');

INSERT INTO RESOURCE_CONNECTION (CODE,IS_ACTIVE,CHANGE_FROM,CHANGE_INDEX,CHANGE_NUMBER,SECRET,SECRECY,BUILDER,OWNER,START_DATE,END_DATE,IDENTIFIER,NAME,TYPE,DRIVER,HOST,PORT,INSTANCE,PATTERN,ACCOUNT,PASSWORD,MAX_NUMBER,TIMEOUT,TEMPLATE,IS_LOCKED,IS_DSB,BUFFER_POOL_SIZE,DECOMPOSING_CODE,REG_STATUS,REG_REASON,CONNECTION_CODE)   VALUES ('journal-con-2010002' , 'true' , '' , 0 , 0 , 0 , 7 , 'admin' , 'admin' , 0 , 0 , 'cludove.crest.journal' , '系统日志' , 'DB' , 'com.mysql.jdbc.Driver' , '192.168.0.109' , '3306' , 'journal2' , 'journal2' , 'infoinge' , '123456' , '20' , '20000' , 'jdbc:mysql://HOST:PORT/INSTANCE' , 'false' , '' , 0 , 'journal-con-1000001' , '' , '' , 'journal-con-2010001');

INSERT INTO RESOURCE_CONNECTION (CODE,IS_ACTIVE,CHANGE_FROM,CHANGE_INDEX,CHANGE_NUMBER,SECRET,SECRECY,BUILDER,OWNER,START_DATE,END_DATE,IDENTIFIER,NAME,TYPE,DRIVER,HOST,PORT,INSTANCE,PATTERN,ACCOUNT,PASSWORD,MAX_NUMBER,TIMEOUT,TEMPLATE,IS_LOCKED,IS_DSB,BUFFER_POOL_SIZE,DECOMPOSING_CODE,REG_STATUS,REG_REASON,CONNECTION_CODE)   VALUES ('journal-con-2010003' , 'true' , '' , 0 , 0 , 0 , 7 , 'admin' , 'admin' , 0 , 0 , 'cludove.crest.journal' , '系统日志' , 'DB' , 'com.mysql.jdbc.Driver' , '192.168.0.109' , '3306' , 'journal3' , 'journal3' , 'infoinge' , '123456' , '20' , '20000' , 'jdbc:mysql://HOST:PORT/INSTANCE' , 'false' , '' , 0 , 'journal-con-1000001' , '' , '' , 'journal-con-2010001');

INSERT INTO RESOURCE_CONNECTION (CODE,IS_ACTIVE,CHANGE_FROM,CHANGE_INDEX,CHANGE_NUMBER,SECRET,SECRECY,BUILDER,OWNER,START_DATE,END_DATE,IDENTIFIER,NAME,TYPE,DRIVER,HOST,PORT,INSTANCE,PATTERN,ACCOUNT,PASSWORD,MAX_NUMBER,TIMEOUT,TEMPLATE,IS_LOCKED,IS_DSB,BUFFER_POOL_SIZE,DECOMPOSING_CODE,REG_STATUS,REG_REASON,CONNECTION_CODE)   VALUES ('journal-con-2010004' , 'true' , '' , 0 , 0 , 0 , 7 , 'admin' , 'admin' , 0 , 0 , 'cludove.crest.journal' , '系统日志' , 'DB' , 'com.mysql.jdbc.Driver' , '192.168.0.109' , '3306' , 'journal4' , 'journal4' , 'infoinge' , '123456' , '20' , '20000' , 'jdbc:mysql://HOST:PORT/INSTANCE' , 'false' , '' , 0 , 'journal-con-1000001' , '' , '' , 'journal-con-2010001');

INSERT INTO RESOURCE_CONNECTION (CODE,IS_ACTIVE,CHANGE_FROM,CHANGE_INDEX,CHANGE_NUMBER,SECRET,SECRECY,BUILDER,OWNER,START_DATE,END_DATE,IDENTIFIER,NAME,TYPE,DRIVER,HOST,PORT,INSTANCE,PATTERN,ACCOUNT,PASSWORD,MAX_NUMBER,TIMEOUT,TEMPLATE,IS_LOCKED,IS_DSB,BUFFER_POOL_SIZE,DECOMPOSING_CODE,REG_STATUS,REG_REASON,CONNECTION_CODE)   VALUES ('journal-con-2010005' , 'true' , '' , 0 , 0 , 0 , 7 , 'admin' , 'admin' , 0 , 0 , 'cludove.crest.journal' , '系统日志' , 'DB' , 'com.mysql.jdbc.Driver' , '192.168.0.109' , '3306' , 'journal5' , 'journal5' , 'infoinge' , '123456' , '20' , '20000' , 'jdbc:mysql://HOST:PORT/INSTANCE' , 'false' , '' , 0 , 'journal-con-1000001' , '' , '' , 'journal-con-2010001');

INSERT INTO RESOURCE_CONNECTION (CODE,IS_ACTIVE,CHANGE_FROM,CHANGE_INDEX,CHANGE_NUMBER,SECRET,SECRECY,BUILDER,OWNER,START_DATE,END_DATE,IDENTIFIER,NAME,TYPE,DRIVER,HOST,PORT,INSTANCE,PATTERN,ACCOUNT,PASSWORD,MAX_NUMBER,TIMEOUT,TEMPLATE,IS_LOCKED,IS_DSB,BUFFER_POOL_SIZE,DECOMPOSING_CODE,REG_STATUS,REG_REASON,CONNECTION_CODE)   VALUES ('spruce-con-2010001' , 'true' , '' , 0 , 0 , 0 , 7 , 'admin' , 'admin' , 0 , 0 , 'cludove.crest.spruce' , '系统运行' , 'DB' , 'com.mysql.jdbc.Driver' , '192.168.0.109' , '3306' , 'hinge' , 'hinge' , 'infoinge' , '123456' , '30' , '20000' , 'jdbc:mysql://HOST:PORT/INSTANCE' , 'false' , '' , 0 , 'spruce-con-1000001' , '' , '' , 'spruce-con-2010001');

INSERT INTO RESOURCE_CONNECTION (CODE,IS_ACTIVE,CHANGE_FROM,CHANGE_INDEX,CHANGE_NUMBER,SECRET,SECRECY,BUILDER,OWNER,START_DATE,END_DATE,IDENTIFIER,NAME,TYPE,DRIVER,HOST,PORT,INSTANCE,PATTERN,ACCOUNT,PASSWORD,MAX_NUMBER,TIMEOUT,TEMPLATE,IS_LOCKED,IS_DSB,BUFFER_POOL_SIZE,DECOMPOSING_CODE,REG_STATUS,REG_REASON,CONNECTION_CODE)   VALUES ('spruce-con-2020001' , 'true' , '' , 0 , 0 , 0 , 7 , 'admin' , 'admin' , 0 , 0 , 'cludove.spruce.lock' , '组织机构' , 'DB' , 'com.mysql.jdbc.Driver' , '192.168.0.109' , '3306' , 'lock' , 'lock' , 'infoinge' , '123456' , '20' , '20000' , 'jdbc:mysql://HOST:PORT/INSTANCE' , 'false' , '' , 0 , 'spruce-con-1000002' , '' , '' , 'spruce-con-2010001');
